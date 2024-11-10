<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="./resources/css/bootstrap.css">
    <link rel="stylesheet" href="./resources/assets/css/criarelogin.css">

    <style>
        .error-message {
            color: red;
            font-size: 1.25em;
            margin-top: 0.25rem;
        }
    </style>

</head>
<body>
<form action="login" method="get" class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card color-dark text-white" style="border-radius: 1rem">
                    <div class="card-body p-5 text-center">
                        <div class="mb-md-5 mt-md-4 pb-5">
                            <h1 class="mb-2 colo-light">FinTech</h1>
                            <h3 class="mb-2 text-uppercase gradient-text">
                                Entrando na sua conta
                            </h3>
                            <h2 class="fw-bold mb-2 text-uppercase">Seja bem-vindo</h2>
                            <p class="text-white-50 mb-5">
                                Por favor, preencha os campos de maneira correta para
                                entrar na sua conta.
                            </p>

                            <div data-mdb-input-init class="form-outline mb-4">
                                <input
                                        name = "email"
                                        type="email"
                                        id="email"
                                        class="form-control-lg w-75 color-dark-green input-email"
                                        placeholder="E-mail "
                                />
                                <div id="emailError" class="error-message"></div>
                            </div>

                            <div data-mdb-input-init class="form-outline mb-4">
                                <input
                                        name = "password"
                                        type="password"
                                        id="senha"
                                        class="form-control-lg w-75 color-dark-green input-senha"
                                        placeholder="Senha"
                                />
                                <div id="senhaError" class="error-message"></div>
                            </div>

                            <div class="mx-auto">
                                <button class="bt mt-3 w-75 btn-primary" onclick="return validarFormulario()">
                                    Entrar na minha conta
                                </button>
                            </div>

                            <div>
                                <p class="text-white-50 mt-3">
                                    Não tem uma conta?
                                    <a href="criar-conta.jsp" class="fw-bold txt-effect">Clique aqui</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<script>
    function validarFormulario() {
        let isValid = true;

        document.getElementById("emailError").innerText = "";
        document.getElementById("senhaError").innerText = "";

        const email = document.getElementById("email").value;
        if (!email) {
            document.getElementById("emailError").innerText = "Por favor, preencha o campo e-mail.";
            isValid = false;
        }

        const senha = document.getElementById("senha").value;
        if (!senha) {
            document.getElementById("senhaError").innerText = "Por favor, preencha o campo senha.";
            isValid = false;
        }

        if (isValid) {
            window.location.href = "home.jsp";
        }

        return isValid;
    }
</script>
<script src="resources/js/bootstrap.bundle.js"></script>
</body>
</html>