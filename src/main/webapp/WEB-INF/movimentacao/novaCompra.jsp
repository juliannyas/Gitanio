<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"
          media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script type="text/javascript" src="/js/movimentacao.js"></script>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <title>Gitânio - Nova Compra</title>
</head>
<body class="row">

<nav>
    <div class="nav-wrapper blue-grey">
        <a href="/" class="brand-logo left">Gitanio</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="listarProdutos">Listagem</a></li>
            <li><a href="movimentacao">Movimentação</a></li>
            <li class="active">Novo</li>
        </ul>
    </div>
</nav>

<div class="row">
    <h3 class="col s6 offset-s3">Nova Compra</h3>
</div>

<div class="row">
    <div class="input-field col s3 offset-s3">
        <input id="fornecedor" name="fornecedor" type="text"
               class="validate">
        <label for="fornecedor">Nome do Fornecedor</label>
    </div>
    <div class="input-field col s3">
        <input id="documento" name="documento" type="text"
               class="validate">
        <label for="documento">Número do Documento</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s3 offset-s3">
        <select id="selectProduto" name="produtoSelecionado">
            <c:forEach var="produto" items="${listaProdutos}">
                <option value="${produto.id}">${produto.id} - ${produto.descricao}</option>
            </c:forEach>
        </select>
        <label>Produtos</label>
    </div>
    <div class="input-field col s1">
        <input id="quantidade" name="quantidade" class="validate" type="number" min="1"/>
        <label for="quantidade">Quantidade</label>
    </div>
    <div class="input-field col right-align">
        <a href="#">
            <button type="button" onclick="movimentacaoAux.adicionarProdutoMovimentacao()"
                    class="twaves-effect waves-light btn blue-grey">
                Adicionar
            </button>
        </a>
    </div>
</div>

<div class="row">
    <table id="tabelaProdutos" class="col s6 offset-s3 centered">
        <thead>
        <tr>
            <th data-field="Descrição do Produto">Descrição do Produto</th>
            <th data-field="Quantidade">Quantidade</th>
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>

<div class="row">
    <div class="input-field col s3 offset-s3">
        <input id="valorTotal" name="total" type="text"
               class="validate">
        <label for="valorTotal">Valor total da compra</label>
    </div>
    <div class="input-field col s3">
        <input id="data" name="data" type="text"
               class="validate">
        <label for="data">Data da Compra</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s6 offset-s3 right-align">
        <a href="/movimentacao" type="button" class="waves-effect waves-light btn blue-grey margin-right-10">
            Cancelar
        </a>
        <button type="button" onclick="movimentacaoAux.salvarCompra()" class="waves-effect waves-light btn blue-grey">
            Salvar
        </button>
    </div>
</div>

<script type="text/javascript"
        src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>

<script type="text/javascript"> // Enough JS to activate Materialize
$(document).ready(function () {
    $('select').material_select();
});
</script>
</body>
</html>
