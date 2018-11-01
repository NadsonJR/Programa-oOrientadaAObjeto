<%-- 
    Document   : CadastroCarro
    Created on : 30/10/2018, 22:44:57
    Author     : NadsonJR
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
    <form method="post" action="${pageContext.request.contextPath}/incluirCarro">
        <div class="application-container">
		<div class="form-container">
                    <form action = "CadastroClientes" method = "GET">
			<div class="form-header">CADASTRO DE CARRO</div>
			<div class="form-content">
                        <div class="form-block-row">
                            <div>
                              <label>Modelo:</label>
                              <input type="text" name="nome">
                            </div>
                            <div>
                              <label>Placa:</label>
                              <input type="text" name="DatadeNascimento">
                            </div>
                            <div>
                              <label>Chassi:</label>
                              <input type="text" name="RG">
                            </div>
                        </div>
                        <div class="form-block-row">
                            <div>
                              <label>Ano:</label>
                              <input type="text" name="cpf">
                            </div>
                            <div>
                              <label>Km atual:</label>
                              <input type="text" name="sexo">
                            </div>
                        </div>
                            <div class="form-block-row">
                                <div>
                              <label>IMAGEM</label>
                              <img id="carImg" src="BG.jpg">
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

