<jsp:useBean id="gameBean" scope="session" class="game.GameBean" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tic Tac Toe</title>
        <style>
            body {
                background-color: #add8e6; /* Azul claro */
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Tic Tac Toe Felipe </h1>
        <form action="entryServlet" method="post">
            <input type="submit" name="User" value="Tu empiezas"><br/>
            <br/>
            <input type="submit" name="Computer" value="La computadora empieza">
        </form>
    </body>
</html>
