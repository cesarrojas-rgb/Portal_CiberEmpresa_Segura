<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Registro Exitoso</title>
</head>
<body class="bg-light">
    <div class="container mt-5 text-center">
        <div class="alert alert-success shadow">
            <h2><i class="fas fa-check-circle"></i> ¡Registro Completado!</h2>
            <p>${mensaje}</p>
            <hr>
            <p>Los lineamientos de seguridad empresarial se han aplicado correctamente en la Base de Datos.</p>
            <a href="index.jsp" class="btn btn-outline-dark">Volver al inicio</a>
        </div>
    </div>
</body>
</html>