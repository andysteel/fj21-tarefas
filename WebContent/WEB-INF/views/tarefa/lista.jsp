<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<title>Insert title here</title>
</head>
<body>
	<img alt="jpg" src="resources/cabecalho.jpg"><br><br>
	<a href="novaTarefa">Criar nova Tarefa</a>       <a href="logout">Sair do sistema</a><br><br>
		<script type="text/javascript">
		function finalizaAgora(id){
			$.post("finalizaTarefa", {'id':id}, function(){
				$("#tarefa_"+id).html("Finalizado");
				
				
			});
		}
		</script>
	
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Descri��o</th>
			<th>Finalizado?</th>
			<th>Data de finaliza��o</th>
		</tr>
		<c:forEach items="${tarefa}" var="tarefa">
			<tr>
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false }">
					<td id="tarefa_${tarefa.id}">
						<a href="#" onClick="finalizaAgora(${tarefa.id})">Finaliza Agora </a>
					</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true }">
					<td>Finalizado</td>
				</c:if>
				<td >
					<fmt:formatDate value="${tarefa.dataFinalizacao.time }" pattern="dd/MM/yyyy"/>
				</td>
				<td><a href="removeTarefa?id=${tarefa.id }">Remover</a></td>
				<td><a href="mostraTarefa?id=${tarefa.id }">Alterar</a></td>
				
			</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>