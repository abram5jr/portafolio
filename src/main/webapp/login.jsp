<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acceso al Sistema | Portafolio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700;900&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --neon-cyan: #00f3ff;
            --neon-purple: #bc13fe;
            --neon-green: #39ff14;
            --bg-dark: #09090b;
        }

        body, html { 
            height: 100%; 
            margin: 0; 
            font-family: 'Poppins', sans-serif; 
            background-color: var(--bg-dark);
            color: #fff;
        }

        /* LADO IZQUIERDO: Branding y diseño visual */
        .left-panel {
            background: linear-gradient(135deg, rgba(9,9,11,0.9) 0%, rgba(188,19,254,0.15) 100%), 
                        radial-gradient(circle at top left, rgba(0,243,255,0.1) 0%, transparent 50%);
            border-right: 1px solid rgba(188, 19, 254, 0.3);
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 4rem;
        }

        .brand-icon {
            font-size: 4rem;
            color: var(--neon-cyan);
            text-shadow: 0 0 20px var(--neon-cyan);
            margin-bottom: 1rem;
        }

        .brand-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 3.5rem;
            font-weight: 900;
            line-height: 1.1;
            margin-bottom: 1.5rem;
        }

        .brand-text {
            font-size: 1.1rem;
            color: #a0a0a0;
            max-width: 80%;
        }

        /* LADO DERECHO: Formulario limpio */
        .right-panel {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: var(--bg-dark);
            position: relative;
        }

        .login-wrapper {
            width: 100%;
            max-width: 400px;
            padding: 2rem;
        }

        .form-title {
            font-family: 'Orbitron', sans-serif;
            font-weight: 700;
            font-size: 1.8rem;
            margin-bottom: 0.5rem;
            color: var(--neon-cyan);
            text-shadow: 0 0 10px rgba(0, 243, 255, 0.3);
        }

        /* Inputs estilo "línea inferior" */
        .form-group {
            margin-bottom: 2.5rem;
            position: relative;
        }

        .form-control-line {
            width: 100%;
            background: transparent;
            border: none;
            border-bottom: 2px solid #333;
            color: #fff;
            padding: 10px 0;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-control-line:focus {
            outline: none;
            border-bottom: 2px solid var(--neon-cyan);
            box-shadow: 0 4px 10px -4px rgba(0, 243, 255, 0.5);
        }

        .form-label-top {
            font-family: 'Orbitron', sans-serif;
            font-size: 0.8rem;
            color: var(--neon-purple);
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        /* Botón de Ingreso */
        .btn-login {
            background-color: transparent;
            border: 2px solid var(--neon-cyan);
            color: var(--neon-cyan);
            font-family: 'Orbitron', sans-serif;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            padding: 12px;
            width: 100%;
            border-radius: 4px;
            transition: 0.3s;
            margin-top: 1rem;
        }

        .btn-login:hover {
            background-color: var(--neon-cyan);
            color: #000;
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.6);
        }

        .back-link {
            position: absolute;
            top: 2rem;
            right: 2rem;
            color: #666;
            text-decoration: none;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.85rem;
            transition: 0.3s;
        }

        .back-link:hover {
            color: var(--neon-cyan);
            text-shadow: 0 0 8px var(--neon-cyan);
        }
    </style>
</head>
<body>

    <div class="container-fluid h-100 p-0">
        <div class="row g-0 h-100">
            
            <!-- MITAD IZQUIERDA -->
            <div class="col-lg-6 d-none d-lg-flex left-panel">
                <div class="brand-icon">⚡</div>
                <h1 class="brand-title">
                    HOLA,<br>
                    <span style="color: var(--neon-purple); text-shadow: 0 0 15px rgba(188,19,254,0.4);">ADMINISTRADOR</span>
                </h1>
                <p class="brand-text">
                    Accede al panel de control para gestionar tus evidencias, subir nuevas actividades y mantener tu portafolio web completamente actualizado.
                </p>
            </div>

            <!-- MITAD DERECHA -->
            <div class="col-lg-6 right-panel">
                <a href="index.jsp" class="back-link">VOLVER AL INICIO ✕</a>
                
                <div class="login-wrapper">
                    <h2 class="form-title">Bienvenido de nuevo</h2>
                    <p class="text-secondary mb-5" style="font-size: 0.9rem;">Por favor, ingresa tus credenciales de acceso.</p>

                    <!-- MENSAJE DE ERROR DINÁMICO -->
                    <%
                        String error = request.getParameter("error");
                        if(error != null && error.equals("1")) {
                    %>
                        <div class="alert alert-danger p-2 mb-4 text-center" style="background: rgba(255,0,60,0.1); border: 1px solid #ff003c; color: #ff003c; font-size: 0.85rem; font-weight: bold;">
                            ❌ Usuario o contraseña incorrectos.
                        </div>
                    <% } %>

                    <!-- FORMULARIO CONECTADO A LoginServlet -->
                    <form action="LoginServlet" method="POST">
                        <div class="form-group">
                            <label class="form-label-top">USUARIO</label>
                            <input type="text" class="form-control-line" name="txtUsuario" required autocomplete="off">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label-top">CONTRASEÑA</label>
                            <input type="password" class="form-control-line" name="txtPassword" required>
                        </div>
                        
                        <button type="submit" class="btn btn-login">INGRESAR</button>
                    </form>
                </div>
            </div>

        </div>
    </div>

</body>
</html>