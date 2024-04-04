<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="game.GameBean.GameState" %>
<%@page import="game.Cell" %>
<%@page import="game.Line" %>

<jsp:useBean id="gameBean" scope="session" class="game.GameBean" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tic Tac Toe Felipe</title>
        <style>
            body {
                background-color: #add8e6; /* Azul claro */
            }
        </style>
    </head>
    <body>
        <h1>Tic Tac Toe Felipe</h1>
        <table border="1">
            <c:forEach var="line" items="${gameBean.gridLines}">
            <tr>
                <c:forEach var="cell" items="${gameBean.getGridStatus(line)}">
                <td>
                    <c:choose>
                        <c:when test="${cell.state == 'X'}">
                            <img src="img/state_x.png" alt="X"/>
                        </c:when>
                        <c:when test="${cell.state == 'O'}">
                            <img src="img/state_o.png" alt="O"/>
                        </c:when>
                        <c:otherwise>
                            <c:if test="${winner == null}">
                                <a href="gameServlet?Line=${cell.line}&Col=${cell.col}">
                            </c:if>
                                <img src="img/state_null.png" alt="null"/>
                            <c:if test="${winner == null}">
                                </a>
                            </c:if>
                        </c:otherwise>
                    </c:choose>
                </td>    
                </c:forEach>
            </tr>
            </c:forEach>
        </table>
        <c:if test="${winner != null}">
            <h2>${winner} Ganaste!</h1>
            <form action="index.jsp" method="post">
                <input type="submit" name="Replay" value="juega de nuevo"><br/>
            </form>
        </c:if>
    </body>
</html>
