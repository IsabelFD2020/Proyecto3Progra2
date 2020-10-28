<% if (request.getParameter("msg") != null) { out.print("<script> alert('NO se reconece el usuario o la clave!'); </script>");}%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body style="margin: 0;background-color: #33CAFF;">
        <div class="w3-display-topmiddle" style="width:40%;margin: auto; padding-top: 100px;color: white;">
            <p>Por favor Ingrese sus credenciales</p>
            <form action="Entrar" method="post">
                <div class="form-group">
                    <label>usuario:</label>
                    <input type="text" class="w3-input" name="usuario" required>
                </div>
                <div class="form-group">
                    <label>Clave:</label>
                    <input type="password" class="w3-input" name="pswd" required>
                </div>
                <br>
                <input type="submit" class="w3-input" value="Ingresar">
            </form>
        </div>
    </body>
</html>
