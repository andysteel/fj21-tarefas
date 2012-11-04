<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="andy"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="resources/jquery/themes/base/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<script type="text/javascript" src="resources/jquery/ui/jquery-ui.js"></script>
<title>mostra</title>
</head>
<body>
	<a href="listaTarefas">Lista de Tarefas</a>            <a href="logout">Sair do sistema</a><br><br>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
		<form action="alteraTarefa" method="post">
			<input type="hidden" name="id" value="${tarefa.id}"/>
			Descrição:<br>
			<textarea name="descricao" rows="5" cols="100">
				${tarefa.descricao}
			</textarea><br>
			Finalizado?<input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : '' }/><br>
			Data de finalização:<br>
			<andy:campoData id="dataFinalizacao"/><br>
			<!--<input type="text" name="dataFinalizacao" value='<fmt:formatDate value="${tarefa.dataFinalizacao.time }" pattern="dd/MM/yyyy"/>'/><br>-->
			<input type="submit" value="Aletrar"/>
		</form>
</body>
</html>