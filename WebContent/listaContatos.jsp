<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styleList.css">
<title>Contatos</title>
</head>
<body>

	<table>

		<thead>
		<caption>Usuários cadastrados</caption>
		<th>Nome</th>
		<th>Email</th>
		<th>Telefone</th>
		<th>Endereço</th>
		<th>Senha</th>
		</thead>
		<c:forEach items="${contatos}" var="contato">
			<tbody>
				<tr>
					<td>${contato.nome}</td>
					<td>${contato.email}</td>
					<td>${contato.telefone}</td>
					<td>${contato.endereco}</td>
					<td>${contato.senha}</td>
				</tr>
			</tbody>
		</c:forEach>

		<tfoot>
			<tr>
				<td colspan="5">Prof. Carlos Barbosa - Tecnologias Web </br>
				</br> <a href="cadastroContato.jsp">Adicionar um novo contato</a>
				</td>
	</table>





</body>
</html>