// Validação de confirmação de senha
document.getElementById('formCadastro').addEventListener('submit', function(event) {
     var senha = document.getElementById('senha').value;
     var confirmarSenha = document.getElementById('confirmar_senha').value;

     if (senha !== confirmarSenha) {
         event.preventDefault(); // Impede o envio do formulário
         document.getElementById('error-senha').style.display = 'block'; // Exibe a mensagem de erro
     } else {
         document.getElementById('error-senha').style.display = 'none'; // Oculta a mensagem de erro
     }

     const email = document.getElementById('email').value;
     const emailError = document.getElementById('emailError');

     emailError.textContent = '';
     
     // Validação do email
     if (!email.includes('@')) {
        emailError.textContent = 'Email inválido.';
        event.preventDefault();
    }
 });