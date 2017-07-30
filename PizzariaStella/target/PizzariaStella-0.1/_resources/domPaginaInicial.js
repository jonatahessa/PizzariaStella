function main() {
  var fechar = [];
  var fecharDoces = [];
  var fecharFogazzas = [];
  var fecharBebidas = [];
  var fecharBordas = [];
  var abrir = document.querySelector("#abresalgadas");
  var abrirDoces = document.querySelector("#abredoces");
  var abrirFogazzas = document.querySelector("#abrefogazzas");
  var abrirBebidas = document.querySelector("#abrebebidas");
  var abrirBordas = document.querySelector("#abrebordas");
  var botaocardapio = document.querySelector("#buttoncardapio");
  var nossa = document.querySelector("#buttonnossacasa");
  var varhome = document.querySelector("#buttonhome");
  var promo = document.querySelector("#buttonpromocoes");
  var localiza = document.querySelector("#buttonlocalizacao");
  var contato = document.querySelector("#buttoncontato");

  fechar = document.querySelectorAll(".buttonsfecharsalgadas");
  for (var i = 0; i < fechar.length; i++) {
    fechar[i].addEventListener("click", hideSalgadas);
  }

  fecharDoces = document.querySelectorAll(".buttonsfechardoces");
  for (var i = 0; i < fecharDoces.length; i++) {
    fecharDoces[i].addEventListener("click", hideDoces);
  }

  fecharFogazzas = document.querySelectorAll(".buttonsfecharfogazzas");
  for (var i = 0; i < fecharFogazzas.length; i++) {
    fecharFogazzas[i].addEventListener("click", hideFogazzas);
  }

  fecharBebidas = document.querySelectorAll(".buttonsfecharbebidas");
  for (var i = 0; i < fecharBebidas.length; i++) {
    fecharBebidas[i].addEventListener("click", hideBebidas);
  }

  fecharBordas = document.querySelectorAll(".buttonsfecharbordas");
  for (var i = 0; i < fecharBordas.length; i++) {
    fecharBordas[i].addEventListener("click", hideBordas);
  }

  abrir.addEventListener("click", showSalgadas);
  abrirDoces.addEventListener("click", showDoces);
  abrirFogazzas.addEventListener("click", showFogazzas);
  abrirBebidas.addEventListener("click", showBebidas);
  abrirBordas.addEventListener("click", showBordas);
  varhome.addEventListener("click", home);
  promo.addEventListener("click", promocao);
  nossa.addEventListener("click", nossacasa);
  botaocardapio.addEventListener("click", cardapio);
  localiza.addEventListener("click", localizacao);
  contato.addEventListener("click", scrollcontato);
}

function home() {
  window.scrollTo(0,0);
}

function nossacasa() {
  document.querySelector("#nossacasa").scrollIntoView();
}

function promocao() {
  document.querySelector("#sessaopromocoes").scrollIntoView();
}

function cardapio() {
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function localizacao() {
  document.querySelector("#sessaolocalizacao").scrollIntoView();
}

function scrollcontato() {
  document.querySelector("#sessaocontato").scrollIntoView();
}

function showSalgadas() {
  document.querySelector(".mostrarsalgadas").style.display = "block";
  document.querySelector("#abresalgadas").style.display = "none";
}

function showDoces() {
  document.querySelector(".mostrardoces").style.display = "block";
  document.querySelector("#abredoces").style.display = "none";
}

function showFogazzas() {
  document.querySelector(".mostrarfogazzas").style.display = "block";
  document.querySelector("#abrefogazzas").style.display = "none";
}

function showBebidas() {
  document.querySelector(".mostrarbebidas").style.display = "block";
  document.querySelector("#abrebebidas").style.display = "none";
}

function showBordas() {
  document.querySelector(".mostrarbordas").style.display = "block";
  document.querySelector("#abrebordas").style.display = "none";
}

function hideSalgadas() {
  document.querySelector(".mostrarsalgadas").style.display = "none";
  document.querySelector("#abresalgadas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideDoces() {
  document.querySelector(".mostrardoces").style.display = "none";
  document.querySelector("#abredoces").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideFogazzas() {
  document.querySelector(".mostrarfogazzas").style.display = "none";
  document.querySelector("#abrefogazzas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideBebidas() {
  document.querySelector(".mostrarbebidas").style.display = "none";
  document.querySelector("#abrebebidas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideBordas() {
  document.querySelector(".mostrarbordas").style.display = "none";
  document.querySelector("#abrebordas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

window.addEventListener("load", main);
