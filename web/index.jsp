<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow border-0">
                    <div class="card-header bg-dark text-white text-center py-4">
                        <h3><i class="fas fa-shield-alt mr-2"></i>CiberSafe Enterprise</h3>
                        <p class="mb-0">Portal de Registro Seguro</p>
                    </div>
                    <div class="card-body p-4">
                        <form action="Controlador" method="POST">
                            <div class="form-group">
                                <label><i class="fas fa-user mr-1"></i> Usuario</label>
                                <input type="text" name="txtUser" class="form-control" placeholder="Ej: admin_seguro" required>
                            </div>
                            <div class="form-group">
                                <label><i class="fas fa-lock mr-1"></i> Contraseña</label>
                                <input type="password" id="passInput" name="txtPass" class="form-control" placeholder="Mínimo 8 caracteres" required onkeyup="checkStrength()">
                                <div class="progress mt-2" style="height: 5px;">
                                    <div id="strengthBar" class="progress-bar" role="progressbar" style="width: 0%"></div>
                                </div>
                                <small id="strengthText" class="form-text text-muted">Seguridad: Pendiente</small>
                            </div>
                            <button type="submit" class="btn btn-dark btn-block mt-4">
                                Registrar y Evaluar Seguridad
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function checkStrength() {
            let pass = document.getElementById('passInput').value;
            let bar = document.getElementById('strengthBar');
            let text = document.getElementById('strengthText');
            
            if (pass.length === 0) {
                bar.style.width = '0%';
                text.innerText = "Seguridad: Pendiente";
            } else if (pass.length < 6) {
                bar.style.width = '33%'; bar.className = "progress-bar bg-danger";
                text.innerText = "Nivel: BAJO";
            } else if (pass.length >= 8 && /[A-Z]/.test(pass) && /[0-9]/.test(pass) && /[!@#$%^&*]/.test(pass)) {
                bar.style.width = '100%'; bar.className = "progress-bar bg-success";
                text.innerText = "Nivel: ALTO (Cumple normatividad)";
            } else {
                bar.style.width = '66%'; bar.className = "progress-bar bg-warning";
                text.innerText = "Nivel: MEDIO";
            }
        }
    </script>
</body>