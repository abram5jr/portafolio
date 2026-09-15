<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil | Abraham Parejas Araujo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700;900&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --neon-cyan: #00f3ff;
            --neon-purple: #bc13fe;
            --neon-green: #39ff14;
            --bg-dark: #09090b;
            --card-bg: #121218;
        }

        body { 
            background-color: var(--bg-dark); 
            color: #e0e0e0; 
            font-family: 'Poppins', sans-serif; 
            background-image: radial-gradient(circle at center, #1a1a24 0%, #09090b 100%);
        }

        h1, h4, h5, .navbar-brand { font-family: 'Orbitron', sans-serif; text-transform: uppercase; text-shadow: 0 0 10px currentColor; letter-spacing: 2px; font-weight: 700; }
        .text-primary { color: var(--neon-cyan) !important; }
        .text-success { color: var(--neon-green) !important; }

        .navbar { background-color: rgba(9, 9, 11, 0.95) !important; border-bottom: 2px solid var(--neon-purple); box-shadow: 0 0 15px rgba(188, 19, 254, 0.5); }
        .nav-link { font-family: 'Orbitron', sans-serif; color: #e0e0e0 !important; font-size: 0.9rem; letter-spacing: 1px; text-transform: uppercase; transition: all 0.3s ease; }
        .nav-link:hover { color: var(--neon-cyan) !important; text-shadow: 0 0 8px var(--neon-cyan); }

        .hero-section { padding: 140px 0 80px; }
        .profile-img { width: 200px; height: 200px; object-fit: cover; border-radius: 10px; border: 3px solid var(--neon-cyan); box-shadow: 0 0 25px rgba(0, 243, 255, 0.5); }

        .neon-badge { font-family: 'Orbitron', sans-serif; font-size: 0.8rem; font-weight: 700; letter-spacing: 1px; padding: 8px 16px; border-radius: 4px; background-color: transparent; transition: all 0.3s ease; display: inline-block; }
        .badge-cyan { border: 1px solid var(--neon-cyan); color: var(--neon-cyan); box-shadow: 0 0 5px rgba(0, 243, 255, 0.2); }
        .badge-green { border: 1px solid var(--neon-green); color: var(--neon-green); box-shadow: 0 0 5px rgba(57, 255, 20, 0.2); }
        .badge-purple { border: 1px solid var(--neon-purple); color: var(--neon-purple); box-shadow: 0 0 5px rgba(188, 19, 254, 0.2); }

        .btn { font-family: 'Orbitron', sans-serif; font-weight: 700; letter-spacing: 1px; border-radius: 4px; }
        .btn-primary { background-color: transparent; border: 2px solid var(--neon-purple); color: var(--neon-purple); text-transform: uppercase; transition: 0.3s; }
        .btn-primary:hover { background-color: var(--neon-purple); color: #fff; box-shadow: 0 0 20px var(--neon-purple); }

        .footer { padding: 30px 0; margin-top: 60px; border-top: 2px solid var(--neon-purple); font-family: 'Orbitron', sans-serif; letter-spacing: 1px;}
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg fixed-top shadow-sm">
    <div class="container">
        <span class="navbar-brand text-primary fs-5">MI PORTAFOLIO</span>
        <button class="navbar-toggler border-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon" style="filter: invert(1);"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item px-3"><a class="nav-link" href="index.jsp">Mi Perfil</a></li>
                <li class="nav-item px-3"><a class="nav-link" href="actividades.jsp">Actividades</a></li>
            </ul>
            <div class="d-flex align-items-center gap-3 mt-3 mt-lg-0">
                <!-- BOTÓN CONVERTIDO EN ENLACE A LOGIN.JSP -->
                <a href="login.jsp" class="btn btn-primary btn-sm px-4 shadow-sm" style="text-decoration: none;">
                    🔒 Iniciar Sesión
                </a>
            </div>
        </div>
    </div>
</nav>

<section class="hero-section text-center">
    <div class="container">
        <img src="img/perfil.jpg" alt="Foto de perfil" class="profile-img mb-4" onerror="this.src='https://via.placeholder.com/200'">
        <h1 class="text-primary mb-3" style="font-size: 2.2rem;">Abraham Parejas Araujo</h1>
        <p class="lead text-success fw-bold" style="font-family: 'Orbitron', sans-serif; letter-spacing: 1px; font-size: 1rem;">Estudiante de Diseño y Programación Web | IESTP "Andrés A. Cáceres Dorregaray"</p>
        
        <div class="row justify-content-center mt-5">
            <div class="col-md-9 text-center">
                <h4 class="mb-3" style="color: var(--neon-purple); font-size: 1.4rem;">Sobre Mí</h4>
                <p>Soy un apasionado por la intersección entre el desarrollo web y la psicología visual. Me enfoco en aplicar exclusivamente la ley de anexo de Gestalt para crear interfaces intuitivas y equilibradas, tal como lo implementé en la creación de identidad para la tienda virtual Wasi. Además, busco constantemente la formalización profesional, manteniéndome actualizado tanto en nuevas tecnologías de desarrollo como en procesos administrativos y tributarios para ofrecer soluciones integrales.</p>
                
                <h4 class="mt-5 mb-4" style="color: var(--neon-cyan); font-size: 1.2rem;">Tech Stack & Herramientas</h4>
                <div class="d-flex flex-wrap justify-content-center gap-3">
                    <span class="neon-badge badge-cyan">HTML5</span>
                    <span class="neon-badge badge-cyan">CSS3</span>
                    <span class="neon-badge badge-green">JavaScript</span>
                    <span class="neon-badge badge-purple">Bootstrap 5</span>
                    <span class="neon-badge badge-cyan">Java JSP</span>
                    <span class="neon-badge badge-purple">JMeter</span>
                    <span class="neon-badge badge-green">Firebase</span>
                    <span class="neon-badge badge-cyan">Netlify</span>
                    <span class="neon-badge badge-purple">FlutterFlow</span>
                    <span class="neon-badge badge-green">Kodular</span>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="footer text-center text-secondary">
    <div class="container">
        <p class="mb-1 small">© 2026 Abraham Parejas Araujo.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>