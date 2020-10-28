<%@page import="java.sql.ResultSet"%>
<%@page import="basededatos.Conexion"%>
<!DOCTYPE html>
<html>
    <title>Repuestos</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <body class="w3-content" style="max-width:1300px">
        <div style="padding-top: 80px;">
            <div class="w3-half w3-black w3-container w3-center" style="height:700px">
                <div class="w3-padding-64">
                    <h1>Borrar Ordenes#</h1>
                </div>
                <div class="w3-padding-64">
                    <%
                Conexion con = new Conexion();
                ResultSet data = con.getTablaData("orden");
            %>
            <form action="Servicio" method="post">
                <div>
                    <label>Orden a borrar:</label>
                    <select class="w3-input" name="orden">
                        <option></option>
                        <% while (data.next()) {%>
                        <option value="<%= data.getString(1)%>"><%= "No# Orden: " + data.getString(1) + " Cliente Id: "+data.getString(2) %></option>
                        <% }%>
                    </select>
                </div>
                    <br>
                    <input type="hidden" name="option" value="borrar"/>
                <button type="submit" class="w3-input w3-red">Borrar Orden</button>
            </form>
                    <br>
                    <a href="menu_ordenes.jsp" class="w3-button w3-black w3-block w3-hover-brown w3-padding-16">Regresar</a>
                </div>
            </div>
            <div class="w3-half w3-container" style="height:700px">
                <div class="w3-padding-64 w3-center">
                    <img src="logo.jpg" class="w3-margin w3-circle" alt="Person" style="width:80%">
                </div>
            </div>
        </div>
    </body>
</html>