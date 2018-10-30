<%-- 
    Document   : CadastroCliente
    Created on : 24/10/2018, 01:28:05
    Author     : nadso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="Styles/Login.css">
	<link rel="stylesheet" type="text/css" href="Styles/Cadastros.css">
	<meta charset="utf-8">
	<title>Cadastro de clientes</title>
</head>
<nav>
   <div><jsp:include page="navbar.jsp"/></div> 
</nav>
<body>
    <form method="post" action="${pageContext.request.contextPath}/incluirCliente">
        <div class="application-container">
		<div class="form-container">
                    <form action = "CadastroClientes" method = "GET">
			<div class="form-header">CADASTRO DE CLIENTES</div>
			<div class="form-content">
                        <div class="form-block-row">
                            <div>
                              <label>Nome:</label>
                              <input type="text" name="nome">
                            </div>
                            <div>
                              <label>NASCIMENTO</label>
                              <input type="text" name="DatadeNascimento">
                            </div>
                            <div>
                              <label>RG</label>
                              <input type="text" name="RG">
                            </div>
                        </div>
                        <div class="form-block-row">
                            <div>
                              <label>CPF</label>
                              <input type="text" name="cpf">
                            </div>
                            <div>
                              <label>SEXO</label>
                              <input type="text" name="sexo">
                            </div>
                            <div>
                              <label>TELEFONE</label>
                              <input type="text" name="telefone">
                            </div>
                        </div>
                            <div class="form-block-row">
                                <div>
                              <label>CELULAR</label>
                              <input type="text" name="celular">
                            </div>
                            <div>
                              <label>E-MAIL</label>
                              <input type="text" name="email">
                            </div>
                            <div>
                              <label>CEP</label>
                              <input type="text" name="cep">
                            </div>
                            </div>
                            <div class="form-block-row">
                                <div>
                              <label>LOGRADOURO</label>
                              <input type="text" name="logradouro">
                            </div>
                            <div>
                              <label>NÚMERO</label>
                              <input type="text" name="numero">
                            </div>
                            <div>
                              <label>COMPLEMENTO</label>
                              <input type="text" name="complemento">
                            </div>
                            </div>
                            
                            <div class="form-block-row">
                            <div>
                              <label>BAIRRO</label>
                              <input type="text" name="bairro">
                            </div>
                            <div>
                              <label>CIDADE</label>
                              <input type="text" name="cidade">
                            </div>
                            <div>
                              <label>ESTADO</label>
                              <input type="text" name="estado">
                            </div>
                            </div>
  			</div>
  			<div class="form-button">
                            <button type="submit">Salvar</button>
  			</div>
                    </form>
                </div>
	</div>
    </form>
</body>
</html>
