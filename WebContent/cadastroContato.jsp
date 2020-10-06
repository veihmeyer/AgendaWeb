<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Center.css">
<title>Cadastrar Contatos</title>
</head>
<body>
	
	<div class="container">
		<fieldset id="Nome"><legend>Cadastro de Contatos</legend>
			<form action="CadastroContatoServlet" method="POST">
			
			<p><label for="labelNome">Nome: </label>  
			<input name="nome"  id="nome" type=text></br></p>
			
			<p><label for="labelEmail">E-mail: </label>
			<input name="email" id="email" type="text"></br></p>
			
			<p><label for="labelSenha">Senha: </label>
			<input name="senha" id="endereco" type="text"></br></p>
			
			<p><label for="labelTel">Telefone: </label>
			<input name="telefone" id="telefone" type="text"></br></p>
			
			<p><label for="labelEnd">Endreço: </label>
			<input name="endereco" id="endereco" type="text"></br></p>
			
			</br>
			<input type="submit" class="btn btn-primary" value="Cadastrar">
			<input type="submit" class="btn btn-danger" value="Sair" formAction="login.jsp" >
			</form>
			
		</fieldset>
	</div>
</body>
</html>