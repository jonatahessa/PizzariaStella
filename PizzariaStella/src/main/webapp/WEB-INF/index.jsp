<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Baloo+Bhaina" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lemon" rel="stylesheet">
        <link rel="shortcut icon" href="./_imagens/favicon.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <title>Pizzaria Stella</title>
    </head>
    <body>
        <section id="principal">
            <div id="menu">
                <ul>
                  <div id="logostella">
                    <img src="_imagens/logo.png">
                  </div>
                    <div id="telefones">
                      <p id="linkstels"><a href="tel:011954217741">95421-7741</a> <img src="_imagens/whatsapp.png" id="logowhats"><br>
                        <a href="tel:01156116108">5611-6108</a><br>
                        <a href="tel:01156168310">5616-8310</a></p>
                    </div>
                    <li><button type="button" id="buttoncontato">Contato</button></li>
                    <li><button type="button" id="buttonlocalizacao">Localização</button></li>
                    <li><button type="button" id="buttoncardapio">Cardápio</button></li>
                    <li><button type="button" id="buttonpromocoes">Promoções</button></li>
                    <li><button type="button" id="buttonnossacasa">Nossa Casa</button></li>
                    <li><button type="button" id="buttonhome">Home</button></li>
                </ul>
            </div>

            <div id="firstimg">
                <img src="_imagens/img1.jpg">
            </div>

            <div class="sessoes" id="nossacasa">
                <h1 class="titulos">Nossa Casa</h1>
                <hr/>
                <div id="fachada">
                    <img src="_imagens/logo.png">
                </div>
                <p>Com 12 anos de tradição, a Pizzaria Stella vem servindo as melhores pizzas e fogazzas da região com muito amor e carinho pra você.</p>
                <p>O filosofia da Pizzaria Stella desde a fundação sempre será: SERVIR PIZZAS COM DEDICAÇÃO, CARINHO E ALEGRIA.</p>
            </div>

            <div class="sessoes" id="sessaopromocoes">
              <h1 class="titulos">Promoções</h1>
              <hr/>
              <c:forEach var="promo" items="${promocoes}">
                <div class="paineispromo">
                  <h3>${promo.nome}</h3>
                  <p>${promo.descricao}</p>
                  <p>${promo.preco}</p>
                </div>
              </c:forEach>
            </div>

            <div class="sessoes" id="sessaocardapio">
                <h1 class="titulos">Cardápio</h1>
                <hr/>
                <button id="abresalgadas" class="botoesabrir" type="button" name="abresalgadas">Abrir Pizzas Salgadas</button>
                <div class="mostrarsalgadas">
                    <button class="buttonsfecharsalgadas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="numeropizza">Número</th>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="comuns" items="${salgadas}">
                            <tr>
                                <td class="celulas">${comuns.codigo}</td>
                                <td class="celulas">${comuns.nome}</td>
                                <td>${comuns.descricao}</td>
                                <td class="celulas">${comuns.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharsalgadas" type="button" name="fecharcardapio">Fechar</button>
                </div>


                <button id="abredoces" type="button" class="botoesabrir" name="abredoces">Abrir Pizzas Doces</button>

                <div class="mostrardoces">
                    <button class="buttonsfechardoces" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="numeropizza">Número</th>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="doces" items="${pizzasdoces}">
                            <tr>
                                <td class="celulas">${doces.codigo}</td>
                                <td class="celulas">${doces.nome}</td>
                                <td>${doces.descricao}</td>
                                <td class="celulas">${doces.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfechardoces" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrefogazzas" type="button" class="botoesabrir" name="abrefogazzas">Abrir Fogazzas</button>

                <div class="mostrarfogazzas">
                    <button class="buttonsfecharfogazzas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="fogazza" items="${fogazzas}">
                            <tr>
                                <td class="celulas">${fogazza.nome}</td>
                                <td>${fogazza.descricao}</td>
                                <td class="celulas">${fogazza.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharfogazzas" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrebebidas" type="button" class="botoesabrir" name="abredoces">Abrir Bebidas</button>

                <div class="mostrarbebidas">
                    <button class="buttonsfecharbebidas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="numeropizza">Número</th>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Descrição</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="drinks" items="${bebidas}">
                            <tr>
                                <td class="celulas">${drinks.codigo}</td>
                                <td class="celulas">${drinks.nome}</td>
                                <td>${drinks.descricao}</td>
                                <td class="celulas">${drinks.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharbebidas" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrebordas" class="botoesabrir" type="button" name="abrebordas">Abrir Bordas</button>

                <div class="mostrarbordas">
                    <button class="buttonsfecharbordas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Sabor</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="borda" items="${bordas}">
                            <tr>
                                <td>${borda.nome}</td>
                                <td class="celulas">${borda.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharbordas" type="button" name="fecharcardapio">Fechar</button>
                </div>

            </div>

            <div class="sessoes" id="sessaolocalizacao">
                <h1 class="titulos">Localização</h1>
                <hr/>
                <p>Praça do Acurí, 49 A - Jardim Pedreira</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d913.3859277770523!2d-46.66115002670424!3d-23.692270254340354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb122c9ab5056bdb!2sPizzaria+Stella!5e0!3m2!1spt-BR!2sbr!4v1501248192693"></iframe>
            </div>

            <footer id="sessaocontato">
              <div class="sessoes">
                <h1 class="titulos">Contato</h1>
                <hr/>
                <h3 id="linkscontato"><a href="tel:011954217741">95421-7741</a> <img src="_imagens/whatsapp.png" id="logowhats"><br>
                  <a href="tel:01156116108">5611-6108</a><br>
                  <a href="tel:01156168310">5616-8310</a></h3>
                <p>Segunda à Quinta: das 18h00 às 23h30<br/>
                Sexta à Sábado: das 18h00 às 00h30<br/>
                Domingos, Vésperas e Feriados: das 18h00 às 00h00<br/></p>
                <p id="copyright">Copyright (c) Pizzaria Stella Copyright Holder All Rights Reserved.</p>
              </div>
            </footer>
        </section>
    </body>
</html>
