<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>tarefa</title>
</head>
<body>
	<a href="logout">Sair do sistema</a><br><br>
	<h3>Adicionar tarefas</h3>
	<form:errors path="tarefa.descricao" cssStyle="color:red" />
	<form action="adicionaTarefa" method="post">
		Descrição:<br>
		<textarea name="descricao" rows="5" cols="100"></textarea><br>
		<input type="submit" value="adicionar"><br><br>
		<a href="listaTarefas">Lista de Tarefas</a>
	</form>
</body>
</html>