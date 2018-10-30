<%-- 
    Document   : ProcurarCliente
    Created on : 25/10/2018, 13:27:36
    Author     : NadsonJR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Styles/Login.css">
	<link rel="stylesheet" type="text/css" href="Styles/Cadastros.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Procurar Cliente</title>
    </head>
    <nav>
   <div><jsp:include page="navbar.jsp"/></div> 
</nav>
<body>
    <form method="post">
        <div class="application-container">
		<div class="form-container">
                    <form method="post" action="${pageContext.request.contextPath}/procurarCliente">
			<div class="form-header">Procurar Cliente</div>
			<div class="form-content">
                        <div class="form-block-row">
                            <div>
                              <label>Nome:</label>
                              <input type="text" name="nome">
                            </div>
                            <div>
                              <label>CPF:</label>
                              <input type="text" name="cpf">
                            </div>
                            </div>
  			</div>
  			<div class="form-button">
                            <button type="submit">Procurar</button>
  			</div>
                    </form>
                </div>
	</div>
    </form>
</body>
</html>
