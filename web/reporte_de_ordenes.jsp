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
                    <h1>Reporte Ordenes</h1>
                </div>
                <div class="w3-padding-64">
                    <%
                        Conexion con = new Conexion();
                        //con.getTablaData("cliente");
                        ResultSet data = con.getTablaData("orden");
                        String cliente_id = "";
                    %>
                    
                    <div style="padding-top:50px;" class="container">
                        <table class="w3-table">
                            <thead>
                            <th>numero de Orden</th>
                            <th>codigo cliente</th>
                            </thead>
                            <tbody>

                            <% while (data.next()) {%>


                            <form action="Consultar" method="post">
                                <tr>
                                    <td><%= data.getString(1) %></td> <input type="hidden" name="orden" value="<%= data.getString(1) %>"/>
                                <td><%= data.getString(2) %></td><input type="hidden" name="cliente_id" value="<%= data.getString(2) %>"/>
                            <input type="hidden" name="option" value="detalle"/>
                            <td><input type="submit" class="w3-input w3-green" value="Consultar Orden"></td>
                            </tr>
                            </form>


                            <% }%>
                            
                            </tbody>


                      </table>
                    </div>

                </div>
            </div>
            <p><a href="principal.jsp" class="w3-button w3-black w3-block w3-hover-brown w3-padding-16">Menu principal</a></p>
        </div>
    </body>
</html>
