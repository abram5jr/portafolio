<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel Administrativo | Portafolio Neón</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700;900&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --neon-cyan: #00f3ff;
            --neon-purple: #bc13fe;
            --neon-green: #39ff14;
            --neon-red: #ff003c;
            --bg-dark: #09090b;
            --card-bg: #121218;
        }

        body { 
            background-color: var(--bg-dark); 
            color: #e0e0e0; 
            font-family: 'Poppins', sans-serif; 
            background-image: radial-gradient(circle at center, #1a1a24 0%, #09090b 100%);
            margin: 0;
            overflow-x: hidden;
        }

        h1, h2, h3, h4, h5, h6, .nav-title, .brand-logo { font-family: 'Orbitron', sans-serif; text-transform: uppercase; letter-spacing: 2px; }
        
        .text-cyan { color: var(--neon-cyan) !important; text-shadow: 0 0 8px rgba(0, 243, 255, 0.4); }
        .text-purple { color: var(--neon-purple) !important; text-shadow: 0 0 8px rgba(188, 19, 254, 0.4); }
        .text-green { color: var(--neon-green) !important; text-shadow: 0 0 8px rgba(57, 255, 20, 0.4); }
        .text-danger { color: var(--neon-red) !important; text-shadow: 0 0 8px rgba(255, 0, 60, 0.4); }

        /* --- SIDEBAR LATERAL NEÓN --- */
        .sidebar {
            background-color: rgba(9, 9, 11, 0.95);
            width: 260px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            border-right: 2px solid var(--neon-purple);
            box-shadow: 4px 0 20px rgba(188, 19, 254, 0.15);
            padding: 20px 0;
            display: flex;
            flex-direction: column;
            z-index: 1000;
        }

        .brand-logo { padding: 0 25px; margin-bottom: 30px; display: flex; align-items: center; gap: 10px; font-weight: 900; font-size: 1.2rem; color: var(--neon-cyan); text-shadow: 0 0 10px var(--neon-cyan); }
        
        .user-profile-badge { margin: 0 20px 30px; padding: 15px; background-color: var(--card-bg); border-radius: 8px; border: 1px dashed var(--neon-cyan); display: flex; align-items: center; gap: 12px; box-shadow: 0 0 10px rgba(0,243,255,0.1); }
        .user-avatar { background: transparent; border: 2px solid var(--neon-cyan); color: var(--neon-cyan); width: 40px; height: 40px; border-radius: 5px; display: flex; align-items: center; justify-content: center; font-weight: bold; font-size: 1.2rem; font-family: 'Orbitron'; box-shadow: 0 0 8px var(--neon-cyan) inset;}
        .user-info p { margin: 0; font-size: 0.85rem; font-family: 'Orbitron'; color: #fff; }
        .user-info span { font-size: 0.75rem; color: var(--neon-green); display: flex; align-items: center; gap: 5px; }
        .status-dot { width: 8px; height: 8px; background-color: var(--neon-green); border-radius: 50%; box-shadow: 0 0 8px var(--neon-green); }

        .nav-title { padding: 0 25px; font-size: 0.75rem; color: #666; margin-bottom: 10px; font-weight: 700; }
        
        .sidebar-link {
            display: flex; align-items: center; justify-content: space-between;
            padding: 12px 25px; color: #a0a0a0; text-decoration: none;
            font-size: 0.9rem; font-family: 'Orbitron'; border-left: 4px solid transparent; background: transparent; width: 100%; text-align: left; transition: 0.3s;
        }
        .sidebar-link:hover { color: var(--neon-cyan); background-color: rgba(0, 243, 255, 0.05); text-shadow: 0 0 8px var(--neon-cyan); }
        .sidebar-link.active { color: var(--neon-cyan); background-color: rgba(0, 243, 255, 0.1); border-left-color: var(--neon-cyan); font-weight: 700; text-shadow: 0 0 10px var(--neon-cyan); box-shadow: inset 10px 0 20px -10px rgba(0,243,255,0.3);}
        
        .badge-notification { background-color: transparent; border: 1px solid var(--neon-red); color: var(--neon-red); font-size: 0.7rem; padding: 2px 8px; border-radius: 4px; font-weight: bold; box-shadow: 0 0 8px rgba(255,0,60,0.4); }

        .btn-logout { margin-top: auto; padding: 15px 25px; color: #a0a0a0; font-family: 'Orbitron'; text-decoration: none; font-size: 0.85rem; display: flex; align-items: center; gap: 10px; transition: 0.3s; }
        .btn-logout:hover { color: var(--neon-red); text-shadow: 0 0 8px var(--neon-red); }

        /* --- CONTENIDO PRINCIPAL --- */
        .main-content { margin-left: 260px; padding: 40px; min-height: 100vh; }
        
        .section-header { margin-bottom: 40px; }
        .section-subtitle { font-size: 0.8rem; color: var(--neon-purple); text-transform: uppercase; letter-spacing: 2px; font-weight: 700; margin-bottom: 5px; display: block; font-family: 'Orbitron';}
        .section-title { font-size: 2.2rem; font-weight: 700; margin: 0; color: #fff;}
        .section-desc { color: #a0a0a0; font-size: 0.95rem; margin-top: 10px; max-width: 700px; line-height: 1.6; }

        /* Tarjetas Neón */
        .neon-card { background-color: var(--card-bg); border: 1px solid #333; border-radius: 8px; padding: 25px; transition: 0.3s; height: 100%; position: relative; overflow: hidden; }
        .neon-card::before { content: ''; position: absolute; top: 0; left: 0; width: 100%; height: 2px; background: var(--neon-cyan); box-shadow: 0 0 15px var(--neon-cyan); opacity: 0; transition: 0.3s; }
        .neon-card:hover { border-color: rgba(0,243,255,0.3); transform: translateY(-3px); box-shadow: 0 5px 20px rgba(0,0,0,0.5); }
        .neon-card:hover::before { opacity: 1; }
        
        .stat-title { font-size: 0.8rem; color: #888; font-family: 'Orbitron'; margin-bottom: 10px; }
        .stat-value { font-size: 2.5rem; font-weight: 700; margin: 0; color: #fff; font-family: 'Orbitron'; }
        
        /* Formularios y Cajas del admin.jsp original */
        .admin-card { background-color: var(--card-bg); border: 2px solid var(--neon-purple); border-radius: 8px; box-shadow: 0 0 15px rgba(188, 19, 254, 0.15); height: 100%;}
        .admin-card-header { border-bottom: 1px dashed var(--neon-purple); padding: 15px 20px; color: var(--neon-purple); font-family: 'Orbitron'; }
        
        .form-label { font-size: 0.85rem; color: var(--neon-cyan); font-weight: 600; letter-spacing: 1px; text-transform: uppercase; }
        .form-control, .form-select { background-color: #09090b !important; border: 1px solid #333 !important; color: #fff !important; font-family: 'Poppins', sans-serif; transition: all 0.3s ease; }
        .form-control:focus, .form-select:focus { border-color: var(--neon-cyan) !important; box-shadow: 0 0 10px rgba(0, 243, 255, 0.3) !important; }
        
        /* Botones Neón */
        .btn-neon { font-family: 'Orbitron', sans-serif; font-weight: 700; letter-spacing: 1px; border-radius: 4px; background: transparent; transition: 0.3s; }
        .btn-success-neon { border: 2px solid var(--neon-green); color: var(--neon-green); }
        .btn-success-neon:hover { background-color: var(--neon-green); color: #000; box-shadow: 0 0 20px var(--neon-green); }
        .btn-cyan-neon { border: 2px solid var(--neon-cyan); color: var(--neon-cyan); }
        .btn-cyan-neon:hover { background-color: var(--neon-cyan); color: #000; box-shadow: 0 0 20px var(--neon-cyan); }
        .btn-danger-neon { border: 2px solid var(--neon-red); color: var(--neon-red); }
        .btn-danger-neon:hover { background-color: var(--neon-red); color: #fff; box-shadow: 0 0 20px var(--neon-red); }

        /* Tablas Neón */
        .table-dark { background-color: transparent !important; }
        .table-dark th { border-bottom: 2px solid var(--neon-cyan); color: var(--neon-cyan); font-family: 'Orbitron', sans-serif; font-size: 0.85rem;}
        .table-dark td { border-bottom: 1px dashed #333; background-color: transparent !important; vertical-align: middle; }
        
        .fila-separadora { background-color: rgba(0, 243, 255, 0.05) !important; border-bottom: 1px solid var(--neon-cyan) !important; border-top: 1px solid var(--neon-cyan) !important;}
        .fila-separadora td { border: none !important; color: var(--neon-cyan); font-family: 'Orbitron', sans-serif; letter-spacing: 2px; font-size: 0.8rem; padding: 12px 0; }
        
        /* Modal Neón */
        .modal-content { background-color: var(--card-bg); border: 2px solid var(--neon-cyan); box-shadow: 0 0 25px rgba(0, 243, 255, 0.2); }
        .modal-header { border-bottom: 1px dashed var(--neon-cyan); }
        .modal-title { color: var(--neon-cyan); font-family: 'Orbitron'; font-size: 1.1rem; }
        
        /* Acciones rápidas */
        .action-box { background: rgba(255,255,255,0.02); border: 1px solid #333; border-radius: 8px; padding: 20px; cursor: pointer; transition: 0.3s; }
    </style>
</head>
<body>

<nav class="sidebar">
    <div class="brand-logo">
        <span class="brand-icon">⚡</span> PORTAFOLIO_
    </div>

    <div class="user-profile-badge">
        <div class="user-avatar">A</div>
        <div class="user-info">
            <p>Abraham Parejas</p>
            <span><div class="status-dot"></div> Admin_Activo</span>
        </div>
    </div>

    <div class="nav-title">SISTEMA CORE</div>
    
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <button class="sidebar-link active" id="tab-dashboard" data-bs-toggle="pill" data-bs-target="#pane-dashboard" type="button" role="tab">
            <span>📊 Dashboard</span>
        </button>
        <button class="sidebar-link" id="tab-perfil" data-bs-toggle="pill" data-bs-target="#pane-perfil" type="button" role="tab">
            <span>👤 Mi Perfil</span>
        </button>
        <button class="sidebar-link" id="tab-semanas" data-bs-toggle="pill" data-bs-target="#pane-semanas" type="button" role="tab">
            <span>📅 Semanas</span>
        </button>
        <button class="sidebar-link" id="tab-trabajos" data-bs-toggle="pill" data-bs-target="#pane-trabajos" type="button" role="tab">
            <span>📁 Gestor de Trabajos</span>
        </button>
        <button class="sidebar-link" id="tab-usuarios" data-bs-toggle="pill" data-bs-target="#pane-usuarios" type="button" role="tab">
            <span>👥 Usuarios</span>
        </button>
        <button class="sidebar-link" id="tab-mensajes" data-bs-toggle="pill" data-bs-target="#pane-mensajes" type="button" role="tab">
            <span>✉️ Bandeja Inbox</span>
            <span class="badge-notification">3</span>
        </button>
    </div>

    <a href="LogoutServlet" class="btn-logout">
        <span>⛔ Cerrar Conexión</span>
    </a>
</nav>

<main class="main-content">
    <div class="tab-content" id="v-pills-tabContent">
        
        <!-- PESTAÑA DASHBOARD -->
        <div class="tab-pane fade show active" id="pane-dashboard" role="tabpanel">
            <jsp:include page="vistas/dashboard.jsp" />
        </div>

        <!-- PESTAÑA MI PERFIL -->
        <div class="tab-pane fade" id="pane-perfil" role="tabpanel">
            <jsp:include page="vistas/perfil.jsp" />
        </div>

        <!-- PESTAÑA SEMANAS -->
        <div class="tab-pane fade" id="pane-semanas" role="tabpanel">
            <jsp:include page="vistas/semanas.jsp" />
        </div>

        <!-- PESTAÑA TRABAJOS -->
        <div class="tab-pane fade" id="pane-trabajos" role="tabpanel">
            <jsp:include page="vistas/trabajos.jsp" />
        </div>

        <!-- PESTAÑA USUARIOS -->
        <div class="tab-pane fade" id="pane-usuarios" role="tabpanel">
            <jsp:include page="vistas/usuarios.jsp" />
        </div>

        <!-- PESTAÑA MENSAJES -->
        <div class="tab-pane fade" id="pane-mensajes" role="tabpanel">
            <jsp:include page="vistas/mensajes.jsp" />
        </div>

    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
