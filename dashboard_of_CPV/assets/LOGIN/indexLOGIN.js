function togglePassword() {
    var senha = document.getElementById("senha");
    var icone = document.getElementById("icone");

    // Alterna entre "password" e "text"
    if (senha.type === "password") {
        senha.type = "text";  // Muda o tipo para texto
        icone.src = "../assets/image/Olho Aberto.png";  // Muda o ícone para "olho fechado"
    } else {
        senha.type = "password";  // Retorna para o tipo password
        icone.src = "../assets/image/Olho Fechado.png";  // Muda o ícone para "olho aberto"
    }
}