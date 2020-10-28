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
                    <h1>Generar Order para clientes</h1>
                </div>
                <div class="w3-padding-64">
                    <%
                Conexion con = new Conexion();
                ResultSet data = con.getTablaData("cliente");
            %>
            <form action="Servicio" method="post">
                <div class="">
                    <label>Generar Orden Para el cliente:</label>
                    <select class="w3-input" name="cliente">
                        <option></option>
                        <% while (data.next()) {%>
                        <option value="<%= data.getString(1)%>"><%= "Nombre: " + data.getString(2) + " Tipo: " + data.getString(5)%></option>
                        <% }%>
                    </select>
                    <br>
                </div>
                    <input type="hidden" name="option" value="crear"/>
                <button type="submit" class="w3-input w3-red">Crear orden</button>
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
