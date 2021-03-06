<%@page import="basededatos.Conexion"%>
<%@page import="java.sql.ResultSet"%>
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
                    <h1>Borrar Producto</h1>
                </div>
                <div class="w3-padding-64">
                    <table class="w3-table">
                        <thead>
                            <%
                                Conexion con = new Conexion();
                                ResultSet data = con.getTablaData("producto");
                            %>
                            <tr>
                                <th>Id</th>
                                <th>producto</th>
                                <th>    </th>
                        </thead>
                        <tbody>
                            <% while (data.next()) {%>
                            <tr>
                        <input type="hidden" name="id" value="<%= data.getString(1)%>"/>
                        <td><%= data.getString(1)%></td>
                        <td><%= data.getString(2)%></td>
                        <td><form action="Crud" method="post"><input type="hidden" name="make" value="borrar_p"/><input type="hidden" name="id_borrar" value="<%= data.getString(1)%>"/><input type="submit" class="w3-input w3-red" value="borrar"></form></td>
                        </tr> 
                        <% }%>
                        </tbody>
                    </table>
                    <br>
                    <a href="menu_producto.jsp" class="w3-button w3-black w3-block w3-hover-brown w3-padding-16">Regresar</a>
                </div>
            </div>
            <div class="w3-half w3-container" style="height:700px">
                <div class="w3-padding-64 w3-center">
                    <img src="logo.jpg" class="w3-margin w3-circle" style="width:80%">
                </div>
            </div>
        </div>
    </body>
</html>