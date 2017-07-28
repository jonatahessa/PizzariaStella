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
        <link rel="shortcut icon" href="./_imagens/favicon.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <title>Pizzaria Stella</title>
    </head>
    <body>
        <section id="principal">
            <div id="menu">
                <ul>
                    <h1>Pizzaria Stella</h1>
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
                    <img src="_imagens/FachadaPizzaria.jpg">
                </div>
                <p>Em 1999, Carlos de Toledo Domenico criou a PIZZARIA DOMENICO, unindo a tradição da pizza com a sofisticação informal. E não parou de crescer, evoluir, adotando o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
                <p>A localização tornou-se privilegiada: Haddock Lobo X Alameda Tietê, a porta de entrada dos Jardins. O investimento constante nas instalações, produtos e serviços, faz com que a DOMENICO seja considerada um dos clássicos, na terra das pizzarias.</p>
                <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue: SERVIR PIZZAS COM DEDICAÇÃO, CONHECIMENTO E ALEGRIA.</p>
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
                <button id="abresalgadas" type="button" name="abresalgadas">Abrir Pizzas Salgadas</button>
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


                <button id="abredoces" type="button" name="abredoces">Abrir Pizzas Doces</button>

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


                <button id="abrebebidas" type="button" name="abredoces">Abrir Bebidas</button>

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
            </div>

            <div class="sessoes" id="sessaolocalizacao">
                <h1 class="titulos">Localização</h1>
                <hr/>
                <p>Alameda Tietê, 255 – Jardins<br/>
                Esquina com a rua Haddock Lobo, 1255<br/></p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d913.3859277770523!2d-46.66115002670424!3d-23.692270254340354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb122c9ab5056bdb!2sPizzaria+Stella!5e0!3m2!1spt-BR!2sbr!4v1501248192693"></iframe>
            </div>

            <footer id="sessaocontato">
              <div class="sessoes">
                <h1 class="titulos">Contato</h1>
                <hr/>
                <h2>Telefone: 5611-6122</h2>
                <p>Email: jonata.hessa@gmail.com<br/>
                Domingo, Segunda e Terça-feira – 18:30h à 00:30h<br/>
                Quarta e Quinta-feira – 18:30h à 1:00h<br/>
                Sexta, Sábado e Vésperas de feriados. – 18:30h às 02:00h<br/>
                Horários para o Delivery:<br/>
                De Segunda à Segunda – 18:30hs à 00:00hs</p>
                <p id="copyright">Copyright (c) Jonata Hessa 2017 Copyright Holder All Rights Reserved.</p>
              </div>
            </footer>
        </section>
    </body>
</html>
