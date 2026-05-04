<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Cifrado ASI</title>
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow">
            <div class="card-header bg-primary text-white">
                <h4><i class="fas fa-user-secret"></i> Módulo de Criptografía (RSA/César)</h4>
            </div>
            <div class="card-body">
                <form action="controlador" method="POST">
                    <div class="form-group">
                        <label>Mensaje a proteger:</label>
                        <textarea name="txtMensaje" class="form-control" rows="3" placeholder="Escribe el reporte confidencial aquí..."></textarea>
                    </div>
                    <input type="hidden" name="accion" value="cifrar">
                    <button type="submit" class="btn btn-primary">Cifrar Mensaje</button>
                </form>
                
                <% if(request.getAttribute("cifrado") != null) { %>
                <div class="mt-4 alert alert-info">
                    <strong>Mensaje Cifrado:</strong>
                    <p class="mb-0 text-break">${cifrado}</p>
                </div>
                <% } %>
            </div>
        </div>
        <div class="mt-3">
            <a href="index.jsp" class="btn btn-link text-secondary">Volver al Registro</a>
        </div>
    </div>
</body>
</html>