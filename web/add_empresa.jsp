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
                    <h1>Agregar Empresa</h1>
                </div>
                <div class="w3-padding-64">
                    <form action="Crud" method="post">
                        <div class="form-group">
                            <label>Nombre:</label>
                            <input type="text" class="w3-input" name="nombre" required>
                        </div>
                        <div class="form-group">
                            <label>Nit:</label>
                            <input type="text" class="w3-input" name="nit" required>
                        </div>
                        <div class="form-group">
                            <label>Contacto:</label>
                            <input type="text" class="w3-input" name="contacto" required>
                        </div>
                        <div class="form-group">
                            <label>Descuento:</label>
                            <input type="number" class="w3-input" name="descuento" required>
                        </div>
                        <input type="hidden" name="make" value="crearE"/>
                        <br>
                        <button type="submit" class="w3-input w3-red">Guardar</button>
                    </form>
                    <br>
                    <a href="menu_cliente.jsp" class="w3-button w3-black w3-block w3-hover-brown w3-padding-16">Regresar</a>
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
