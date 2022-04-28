<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel='stylesheet' href='./css/style.css' />
<title>Jogos</title>
</head>
<body>
	<div align="center">
		<c:if test="${not empty erro}">
			<h4>
				<c:out value="${erro}"></c:out>
			</h4>
		</c:if>
	</div>
	
	<div class="jogos">
		<img alt="Logo" src="./assets/logo.png">
		<form action="ServletJogo" method="post">
			<input type="submit" id=gerar_jogos name=gerar_jogos
				value="Gerar Jogos">
		</form>
			<table>
				<tr>
					<th class='Jogo'>codigoJogo</th>
					<th class='Jogo'>timeA</th>
					<th class='Jogo'>timeB</th>
					<th class='Jogo'>golsTimeA</th>
					<th class='Jogo'>golsTimeB</th>
					<th class='Jogo'>data</th>
				</tr>
				<c:forEach items="${jogos}" var="j">
					<tr>
						<td align="center"><c:out value="${j.getCodigoJogo()}"></c:out></td>
						<td align="center"><c:out value="${j.getTimeA()}"></c:out></td>
						<td align="center"><c:out value="${j.getTimeB()}"></c:out></td>
						<td align="center"><c:out value="${j.getGolsTimeA()}"></c:out></td>
						<td align="center"><c:out value="${j.getGolsTimeB()}"></c:out></td>
						<td align="center"><c:out value="${j.getData()}"></c:out></td>
					</tr>
				</c:forEach>
			</table>
			<div align="center">
				<c:if test="${not empty saida}">
					<h4>
						<c:out value="${saida}"></c:out>
					</h4>
				</c:if>
			<br/>
			<div align="center">
				<c:if test="${not empty erro}">
					<h4><c:out value="${erro}"></c:out></h4>
				</c:if>
	</div>
		</div>
</body>
</html>
