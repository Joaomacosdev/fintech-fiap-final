<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link rel="stylesheet" href="./resources/css/bootstrap.css">
  <link rel="stylesheet" href="./resources/assets/css/carousel.css">

  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

  </style>
</head>
<body>

<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
  <symbol id="check2" viewBox="0 0 16 16">
    <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"></path>
  </symbol>
  <symbol id="circle-half" viewBox="0 0 16 16">
    <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"></path>
  </symbol>
  <symbol id="moon-stars-fill" viewBox="0 0 16 16">
    <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"></path>
    <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"></path>
  </symbol>
  <symbol id="sun-fill" viewBox="0 0 16 16">
    <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"></path>
  </symbol>
</svg>



<header data-bs-theme="dark">
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Fintech</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Início</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#solucoes">Soluções</a>
          </li>
        </ul>
        <form class="d-flex gap-4">
          <a href="login.jsp" class="btn btn-success text-white">Entrar na minha conta</a>
          <a href="criar-conta.jsp" class="btn btn-primary">Criar conta</a>
        </form>
      </div>
    </div>
  </nav>
</header>

<main>

  <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="bd-placeholder-img object-fit-cover" style="background-position: center" src="resources/imgs/bg2landingpage.jpg" alt="Plano de fundo carrossel" width="100%" height="100%" />
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Soluções Financeiras Modernas</h1>
            <p><a class="btn btn-lg btn-primary" href="#">Saiba mais</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img class="bd-placeholder-img object-fit-cover" style="background-position: center" src="resources/imgs/bg3landingpage.jpg" alt="Plano de fundo carrossel" width="100%" height="100%" />
        <div class="container">
          <div class="carousel-caption">
            <h1>Tecnologia e Segurança</h1>
            <p><a class="btn btn-lg btn-primary" href="#">Descubra mais</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img class="bd-placeholder-img object-fit-cover" style="background-position: center" src="resources/imgs/bg1landingpage.jpg" alt="Plano de fundo carrossel" width="100%" height="100%" />
        <div class="container">
          <div class="carousel-caption text-end">
            <h1>Junte-se à Revolução Financeira</h1>
            <p><a class="btn btn-lg btn-primary" href="#">Começe agora</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Anterior</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Próximo</span>
    </button>
  </div>

  <div class="container marketing" id="solucoes">

    <div class="row">
      <div class="col-lg-4">
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="resources/imgs/imgCircular1.jpg" />
        <h2 class="fw-normal">Gestão de Investimentos</h2>
        <p>
          Maximize seu retorno com nossa gestão de portfólio personalizada.
        </p>
        <p><a class="btn btn-secondary" href="#">Ver detalhes &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="resources/imgs/imgCircular2.jpg" />
        <h2 class="fw-normal">Pagamentos Inteligentes</h2>
        <p>Facilitamos pagamentos e transferências com segurança e conveniência.</p>
        <p><a class="btn btn-secondary" href="#">Saiba mais &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="resources/imgs/imgCircular3.jpg" />
        <h2 class="fw-normal">Consultoria Financeira</h2>
        <p>Receba orientação especializada para otimizar suas finanças pessoais e empresariais.</p>
        <p><a class="btn btn-secondary" href="#">Veja details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">Inovação em Fintech. <span class="text-body-secondary">Transformando o futuro financeiro.</span></h2>
        <p class="lead">Conteúdo impressionante para destacar nossa primeira funcionalidade. Imagine a liberdade de gerenciar suas finanças com facilidade e segurança.</p>
      </div>
      <div class="col-md-5">
        <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" src="resources/imgs/imgQuadrado1.jpg" alt="Imagem um" width="500" height="500" />
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading fw-normal lh-1">Simplicidade e Eficiência. <span class="text-body-secondary">Veja por si mesmo.</span></h2>
        <p class="lead">Mais uma funcionalidade poderosa para ilustrar como nossa plataforma simplifica a gestão financeira. A experiência perfeita para quem busca inovação.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" src="resources/imgs/imgQuadrado2.jpg" alt="Imagem dois" width="500" height="500" />
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">Soluções Inteligentes. <span class="text-body-secondary">A escolha certa.</span></h2>
        <p class="lead">E sim, esse é o último bloco de conteúdo representativo. Pensado para mostrar como nossa fintech transforma a gestão financeira. Seu futuro financeiro, em boas mãos.</p>
      </div>
      <div class="col-md-5">
        <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" src="resources/imgs/imgQuadrado3.jpg" alt="Imagem três" width="500" height="500" />
      </div>
    </div>


    <hr class="featurette-divider">
  </div>

  <footer class="container">
    <div class="row">
      <div class="col-12 col-md-4 mb-3">
        <h5>Sobre a Fintech</h5>
        <p class="text-muted">
          Nossa missão é facilitar o acesso a serviços financeiros digitais, proporcionando uma experiência segura e eficiente para todos os nossos clientes.
        </p>
      </div>

      <div class="col-6 col-md-2 mb-3">
        <h5>Serviços</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Contas Digitais</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Investimentos</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Empréstimos</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Cartões</a></li>
        </ul>
      </div>

      <div class="col-6 col-md-2 mb-3">
        <h5>Links Úteis</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Suporte</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Segurança</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Termos de Uso</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Política de Privacidade</a></li>
        </ul>
      </div>

      <div class="col-6 col-md-4 mb-3">
        <h5>Contato</h5>
        <p class="text-muted">contato@fintech.com.br</p>
        <p class="text-muted">Telefone: (11) 1234-5678</p>
        <p class="text-muted">Endereço: Rua Exemplo, 123 - São Paulo, SP</p>
        <ul class="list-unstyled d-flex">
          <li class="ms-3"><a class="link-dark" href="#"><i class="fab fa-facebook-f"></i></a></li>
          <li class="ms-3"><a class="link-dark" href="#"><i class="fab fa-twitter"></i></a></li>
          <li class="ms-3"><a class="link-dark" href="#"><i class="fab fa-instagram"></i></a></li>
          <li class="ms-3"><a class="link-dark" href="#"><i class="fab fa-linkedin-in"></i></a></li>
        </ul>
      </div>
    </div>

    <div class="d-flex justify-content-between py-4 my-4 border-top">
      <p class="text-muted">© 2024 Fintech, Inc. Todos os direitos reservados.</p>
      <ul class="list-unstyled d-flex">
        <li class="ms-3"><a class="link-dark" href="#">Privacidade</a></li>
        <li class="ms-3"><a class="link-dark" href="#">Termos</a></li>
        <li class="ms-3"><a class="link-dark" href="#">Suporte</a></li>
      </ul>
    </div>
  </footer>
</main>
<script src="resources/js/bootstrap.bundle.js"></script>
</body>
</html>