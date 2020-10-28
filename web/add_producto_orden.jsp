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
            <div class="w3-black w3-container w3-center" style="height:700px">
                <div class="w3-padding-64">
                    <h1>Agregar productos a la orden</h1>
                </div>
                <div class="w3-padding-64">
                    <%
                        Conexion con = new Conexion();
                        int tempID = Integer.parseInt(request.getParameter("cliente"));
                        ResultSet data = con.getTablaData("orden WHERE id_cliente=" + tempID + "");
                        String numeroOrden = "";
                        String clieneId = "";
                    %>
                    <% while (data.next()) {

                            numeroOrden = data.getString(1);
                            clieneId = data.getString(2);

             }%>    
                    <div class="w3-container">
                        <div class="form-group">
                            <h2 for="orden">Numero de Orden#: <%= numeroOrden%></h2>
                        </div>
                        <% data = con.getTablaData("producto"); %>
                        <table class="w3-table w3-bordered">
                            <thead>
                                <tr>
                                    <th>producto</th>
                                    <th>precio</th>
                                    <th>Origen</th>
                                    <th>cantidad</th>
                                    <th>agregar</th>
                            </thead>
                            <tbody>
                                <% while (data.next()) {%>
                            <form action="Servicio" method="post"> 
                                <tr>    
                                    <td><%= data.getString(2)%></td>
                                    <td><%= data.getString(3)%></td>
                                    <td><%= data.getString(4)%></td>
                                    <td><input type="text" name="cantidad" value="1"/></td>
                                <input type="hidden" name="id_producto" value="<%= data.getString(1)%>"/>
                                <input type="hidden" name="nombre_producto" value="<%= data.getString(2)%>"/>
                                <input type="hidden" name="precio" value="<%= data.getString(3)%>"/>
                                <input type="hidden" name="id_orden" value="<%= numeroOrden%>"/>
                                <input type="hidden" name="cliente" value="<%= clieneId%>"/>
                                <input type="hidden" name="option" value="agregar_art"/>
                                <td><input class="w3-input w3-green" type="submit" value="agregar"/></td>
                                </tr>
                            </form>
                            <% }%>
                            </tbody>
                        </table>
                    </div>
                    <p><a href="principal.jsp" class="w3-button w3-black w3-block w3-hover-brown w3-padding-16">Menu principal</a></p>
                </div>
            </div>
    </body>
</html>
