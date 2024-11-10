function logar() {
  let nome = document.getElementById("nome").value;
  let email = document.getElementById("email").value;
  let senha = document.getElementById("senha").value;

  if (nome == "") {
    alert("Informe o nome");
    return false;
  } else if (email == "") {
    alert("informe o email");
    return false;
  } else if (senha == "") {
    alert("informe a senha");
    return false;
  }
}
