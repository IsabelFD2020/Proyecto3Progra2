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
                    <h1>Reporte Productos</h1>
                </div>
                <div class="w3-padding-64">
                    <div class="">
                        <p>Filtro Origen:
                            <select id="myInput" onchange="myFunction();">
                                <option value="A">Todo</option>
                                <option value="USA">USA</option>
                                <option value="JAPON">JAPON</option>
                                <option value="CHINA">CHINA</option>
                            </select>
                        </p>
                        <table id="myTable" class="w3-table w3-bordered">
                            <thead>
                                <%
                                    Conexion con = new Conexion();
                                    ResultSet d = con.getTablaData("producto");
                                %>
                                <tr>
                                    <th>Id</th>
                                    <th>nombre</th>
                                    <th>precio unidad</th>
                                    <th>Origen</th>
                            </thead>
                            <tbody>
                                <% while (d.next()) {%>
                                <tr>
                                    <td><%= d.getString(1)%></td>
                                    <td><%= d.getString(2)%></td>
                                    <td><%= d.getString(3)%></td>
                                    <td><%= d.getString(4)%></td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                </div>
                            <p><a href="principal.jsp" class="w3-button w3-black w3-block w3-hover-brown w3-padding-16">Menu principal</a></p>
            </div>
        </div>
        <script>
            function myFunction() {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[3];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
        </script>
    </body>
</html>
