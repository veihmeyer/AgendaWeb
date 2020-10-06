<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Center.css">
<title>Login</title>
</head>
<body>
	<div class="container">
	<fieldset id="Nome"><legend>Requisição de Login</legend>
		<form id="form-agenda" action="Login" method="POST">
			<p><label for="login">Login: </label>
			<input type="text" name="login" id="login" required/></br> </p>
			
			<p><label for="senha">Senha: </label>
			<input type="password" name="senha" id="senha" required/></br></br></p>
			
			<button type="submit" class="btn btn-primary">Entrar</button>
			
		</form>
		</fieldset>
	</div>
	<div>
		</br></br>
			
 		<p style="color:red"> ${erro} </p>
		</div>
		</p>
	</div>

</body>
</html>