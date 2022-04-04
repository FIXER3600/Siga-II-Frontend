<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page
language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <link rel="stylesheet" href="./css/style.css" />

    <title>Paulistao 2021</title>
  </head>
  <body>
	  <div class="header">
		  <ul>
			<a href="index.jsp" class="link-grupos"><li>Grupos</li></a>
			<a href="jogos.jsp" class="link-jogos"><li>Jogos</li></a>
		  </ul>
	  </div><br><br>
    <img alt="Logo" src="./assets/logo.png" /><br><br>
    <form action="Grupo" method="post">
      <input
        class="botao"
        type="submit"
        id="gerar_grupo"
        name="gerar_grupo"
        value="Gerar Grupos"
      />
    </form>
    <br />
    <div class="grupos">
      <div align="center">
        <c:if test="${not empty erro}">
          <h4>
            <c:out value="${erro}"></c:out>
          </h4>
        </c:if>
      </div>

      <div>
        <table>
          <c:forEach items="${grupos}" var="g">
            <table class="grupos-table">
              <caption>
                <c:out value="${g.getNome()}" > </c:out>
              </caption>

              <tr>
                <th class="Grupo">Time</th>
                <th class="Grupo">Estadio</th>
                <th class="Grupo">Cidade</th>
                <th class="Grupo">Codigo do Time</th>
              </tr>
              <c:forEach items="${g.getTimes()}" var="t">
                <tr>
                  <td>
                    <c:out value="${t.getNomeTime()}"></c:out>
                  </td>
                  <td>
                    <c:out value="${t.getEstadio()}"></c:out>
                  </td>
                  <td>
                    <c:out value="${t.getCidade()}"></c:out>
                  </td>
                  <td>
                    <c:out value="${t.getCodigoTime()}"></c:out>
                  </td>
                </tr>
              </c:forEach>
            </table>
          </c:forEach>
        </table>
      </div>
      <div align="center">
        <c:if test="${not empty saida}">
          <h4>
            <c:out value="${saida}"></c:out>
          </h4>
        </c:if>
      </div>
    </div>
   <!--<footer class="footer">Desenvolvido por <a href="https://github.com/FIXER3600">Guilherme</a> e <a href="https://github.com/GabrielFernandez26">Gabriel</a></footer>
   -->
</body>
</html>
