<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Fintech</title>
  <link rel="stylesheet" href="./resources/css/bootstrap.css">
  <link rel="stylesheet" href="./resources/assets/css/styles.css">


</head>
<body>
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card color-dark text-white" style="border-radius: 1rem">
          <div class="card-body p-5 text-center">
            <div class="mb-md-5 mt-md-4 pb-5">
              <h1 class="mb-2 colo-light">FinTech</h1>
              <h3 class="mb-2 text-uppercase gradient-text">
                criando sua conta
              </h3>
              <h2 class="fw-bold mb-2 text-uppercase">Seja bem-vindo</h2>
              <p class="text-white-50 mb-5">
                Por favor, preencha os campos de maneira correta para a
                criação da sua conta.
              </p>

              <div data-mdb-input-init class="mb-4">
                <input
                        type="text"
                        id="nome"
                        class="form-control-lg w-75 color-dark-green input-nome"
                        placeholder="Nome completo"
                />
              </div>

              <div data-mdb-input-init class="form-outline mb-4">
                <input
                        type="email"
                        id="email"
                        class="form-control-lg w-75 color-dark-green input-email"
                        placeholder="E-mail "
                />
              </div>

              <div data-mdb-input-init class="form-outline mb-4">
                <input
                        type="password"
                        id="senha"
                        class="form-control-lg w-75 color-dark-green input-senha"
                        placeholder="Senha"
                />
              </div>

              <div class="mx-auto">
                <button class="bt mt-3 w-75 btn-primary" onclick="logar()">
                  Criar a minha conta
                </button>
                <button class="bt mt-3 w-75 btn-secondary">
                  Entrar usando conta do Google
                </button>
              </div>

              <div>
                <p class="text-white-50 mt-3">
                  Você já tem uma conta?
                  <a href="#!" class="fw-bold txt-effect">Clique aqui</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script src="resources/js/bootstrap.bundle.js"></script>
<script src="resources/assets/js/script.js"></script>


</body>
</html>