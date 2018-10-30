<%-- 
    Document   : resultadoProcurar
    Created on : 18/10/2018, 21:17:40
    Author     : matheus.fboliveira
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <style>
        #Result{
            font-family: sans-serif;
            color: black;
            width: 80%;
            margin: auto;
            padding: 7px;
            background-color: rgba(0,0,0,0.1);
            align-items: center;
        }
        #Result input{
            padding: 7px;
            margin: 10px;
            border-radius: 10px;
        }
        h1{
            text-align: center;
            
        }
        button{
            background: #4242ff;
            width: 30%;
            padding: 15px;
            border-radius: 8px;
        }
    </style>
    <body><form method="post">
        <div class="application-container">
		<div class="form-container">
                    <form action = "CadastroClientes" method = "GET" id="Result">
			<div class="form-header">CONSULTA DE CLIENTES</div>
			<div class="form-content">
                        <div class="form-block-row">
                            <div>
                              <label>Nome:</label>
                              <input type="text" name="nome" value="<c:out value="${cliente.nome}" />"/>
                            </div>
                            <div>
                              <label>Nascimento:</label>
                              <input type="text" name="datadeNascimento" value="<c:out value="${cliente.datanascimento}" />"/>
                            </div>
                            <div>
                              <label>RG:</label>
                              <input type="text" value="<c:out value="${cliente.rg}" />"/>
                            </div>
                        </div>
                        <div class="form-block-row">
                            <div>
                              <label>CPF</label>
                              <input type="text" value="<c:out value="${cliente.cpf}" />"/>
                            </div>
                            <div>
                              <label>SEXO</label>
                              <input type="text" name="sexo" value="<c:out value="${cliente.sexo}" />"/>
                            </div>
                            <div>
                              <label>TELEFONE</label>
                              <input type="text" value="<c:out value="${cliente.telefone}" />"/>
                            </div>
                        </div>
                            <div class="form-block-row">
                                <div>
                              <label>CELULAR</label>
                              <input type="text" value="<c:out value="${cliente.celular}" />"/>
                            </div>
                            <div>
                              <label>E-MAIL</label>
                              <input type="text" value="<c:out value="${cliente.email}" />"/>
                            </div>
                            <div>
                              <label>CEP</label>
                              <input type="text" value="<c:out value="${cliente.cep}" />"/>
                            </div>
                            </div>
                            <div class="form-block-row">
                                <div>
                              <label>LOGRADOURO</label>
                              <input type="text" name="logradouro">
                            </div>
                            <div>
                              <label>NÚMERO</label>
                              <input type="text" value="<c:out value="${cliente.numero}" />"/>
                            </div>
                            <div>
                              <label>COMPLEMENTO</label>
                              <input type="text" value="<c:out value="${cliente.complemento}" />"/>
                            </div>
                            </div>
                            
                            <div class="form-block-row">
                            <div>
                              <label>BAIRRO</label>
                              <input type="text" value="<c:out value="${cliente.bairro}" />"/>
                            </div>
                            <div>
                              <label>CIDADE</label>
                              <input type="text" value="<c:out value="${cliente.cidade}" />"/>
                            </div>
                            <div>
                              <label>ESTADO</label>
                              <input type="text" value="<c:out value="${cliente.estado}" />"/>
                            </div>
                            </div>
  			</div>
  			<div class="form-button">
                            <button type="submit">Salvar</button>
                            <button type="alterar"> Alterar</button>
  			</div>
                    </form>
                </div>
	</div>
    </form>
    </body>
</html>
