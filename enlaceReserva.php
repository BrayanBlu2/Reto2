<?php
// Verificar si se reciben los datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    // Establecer conexión a la base de datos (ajusta los parámetros según tu configuración)
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "reto2final";

    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar la conexión
    if ($conn->connect_error) {
        die("La conexión a la base de datos falló: " . $conn->connect_error);
    }

    // Obtener valores del formulario
    $fecha = $_GET["Fecha"];
    $numeropersonas = $_GET["NumeroPersonas"];
   

    // Preparar la consulta SQL para la inserción
    $sql = "INSERT INTO reservas ( Fecha,NumeroPersonas)
            VALUES ( '$fecha', '$numeropersonas')";

    // Ejecutar la consulta
    if ($conn->query($sql) === TRUE) {
        echo "Registro insertado correctamente";
    } else {
        echo "Error al insertar el registro: " . $conn->error;
    }

    // Cerrar la conexión a la base de datos
    $conn->close();
}
?>