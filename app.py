import os
# from urllib import request
from flask import Flask, render_template, redirect, url_for, flash, request
import mysql.connector
import pandas as pd
from datetime import datetime
from werkzeug.security import check_password_hash, generate_password_hash

template_dir = os.path.join(os.path.dirname(__file__), 'templates')
app = Flask(__name__, template_folder=template_dir, static_folder='assets', static_url_path='/assets')

# Conexão com o banco de dados
def conecta():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="admin",
        database="dashboard_information"
    )

# Renderiza o template de login como a tela inicial
@app.route('/')
def home():
    return render_template('indexLOGIN.html')
@app.route('/cad')
def cad():
    return render_template('indexCAD.html')
@app.route('/rec')
def rec():
    return render_template('indexREC.html')
@app.route('/reg')
def reg():
    return render_template('regioes.html')

# Rota para o login
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form.get('login')
        if email is None:
            # Lida com o caso onde 'login' não foi enviado, como exibir uma mensagem de erro
            return "Campo login não encontrado", 400
        senha = request.form.get('senha')
        if senha is None:
            # Lida com o caso onde 'senha' não foi enviado, como exibir uma mensagem de erro
            return "Campo senha não encontrado", 400

        # Conexão e consulta no banco de dados
        db = conecta()
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT * FROM users WHERE email = %s", (email,))
        user = cursor.fetchone()
        db.close()

        # Verificar se o usuário existe e se a senha está correta
        if user and check_password_hash(user['senha'], senha):
            # Usuário autenticado com sucesso
            return redirect(url_for('reg'))  # Redireciona para a página principal
        else:
            flash("Email ou senha incorretos. Tente novamente.")
            return redirect(url_for('home'))  # Redireciona de volta para a página de login

    return render_template('home')

# Rota para se obter as 10 melhores regiões em vendas
@app.route("/mostra_ranking")
def mostrar_ranking():
    # Obtém o mês e ano atuais no formato adequado
    mes_atual = datetime.now().strftime("%m")  # Mês com zero à esquerda, ex: '04' para abril
    ano_atual = datetime.now().strftime("%Y")  # Ano completo, ex: '2024'

    # Conexão com o banco de dados
    conexao = conecta()

    # Consulta para selecionar as top 10 empresas
    consulta = """
        SELECT c.cidade,
               c.regiao,
               c.mensalidade,
               c.life_time_value,
               COUNT(v.quantidade_vendas) AS total_vendas,
               SUM(c.mensalidade) AS total_mensalidade,
               SUM(c.life_time_value) AS total_ltv
        FROM clientes c
        JOIN vendas_mensais v ON c.id_cliente = v.empresa_id
        WHERE LEFT(v.mes_ano, 4) = %s AND RIGHT(v.mes_ano, 2) = %s
        GROUP BY c.cidade, c.regiao, c.mensalidade, c.life_time_value
        ORDER BY total_vendas DESC
        LIMIT 10;
        """

    # Executa a consulta e cria o DataFrame
    df_rank = pd.read_sql(consulta, conexao, params=(ano_atual, mes_atual))

    # Consulta para contar o número de clientes ativos
    consulta_ativos = """
        SELECT COUNT(*) AS clientes_ativos
        FROM clientes
        WHERE CURDATE() BETWEEN inicio_contrato AND termino_contrato;
        """

    # Executa a consulta para clientes ativos
    clientes_ativos = pd.read_sql(consulta_ativos, conexao).iloc[0]['clientes_ativos']

    # Fecha a conexão
    conexao.close()

    # Converte o DataFrame para uma lista de dicionários para enviar ao template
    ranking_clientes = df_rank.to_dict(orient="records")

    total_mensalidade = df_rank["mensalidade"].sum()
    total_ltv = df_rank["life_time_value"].sum()

    return render_template(
        "regioes.html",
        ranking_clientes=ranking_clientes,
        total_mensalidade=total_mensalidade,
        total_ltv=total_ltv,
        clientes_ativos=clientes_ativos
    )

# Cadastramento
@app.route('/criar-conta', methods=['GET', 'POST'])
def cadastrar():
    try:
        if request.method == 'POST':
            nome = request.form.get('nome')
            if nome is None:
                # Lida com o caso onde 'nome' não foi enviado, como exibir uma mensagem de erro
                return "Campo nome não encontrado", 400
            cpf = request.form.get('cpf')
            if cpf is None:
                # Lida com o caso onde 'cpf' não foi enviado, como exibir uma mensagem de erro
                return "Campo cpf não encontrado", 400
            email = request.form.get('email')
            if email is None:
                # Lida com o caso onde 'email' não foi enviado, como exibir uma mensagem de erro
                return "Campo email não encontrado", 400
            senha = request.form.get('senha')
            if senha is None:
                # Lida com o caso onde 'senha' não foi enviado, como exibir uma mensagem de erro
                return "Campo senha não encontrado", 400

            senha_hash = generate_password_hash(senha)  # Geração do hash para comparar com o armazenado no banco de dados
            # Verifique o comprimento do hash antes de inseri-lo no banco de dados
            if len(senha_hash) > 255:
                return "Erro: O hash da senha é muito longo para ser armazenado.", 400

            # Conectar ao banco de dados e inserir os dados
            conexao = conecta()
            cursor = conexao.cursor()

            cursor.execute("INSERT INTO users (nome, cpf, email, senha) VALUES (%s, %s, %s, %s)", (nome, cpf, email, senha_hash))

            # Salva as mudanças e fecha a conexão
            conexao.commit()

            # Fechamento da conexão
            cursor.close()
            conexao.close()

            # Redirecionar para a página de login
            return redirect(url_for('home'))


    except mysql.connector.Error as err:
        print(f"Erro ao inserir dados: {err}")
        conexao.rollback()  # Desfaz a transação em caso de erro
        return "Erro ao cadastrar usuário. Tente novamente.", 500  # Retorna uma mensagem de erro genérica

    finally:
        # Garante que a conexão seja fechada, mesmo que haja erro
        if conexao.is_connected():
            conexao.close()

if __name__ == '__main__':
    app.run(debug=True)