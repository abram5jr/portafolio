<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="section-header d-flex justify-content-between align-items-start">
    <div>
        <span class="section-subtitle">PANEL PRINCIPAL</span>
        <h2 class="section-title text-cyan">INICIO DE SISTEMA</h2>
        <p class="section-desc">Bienvenido al núcleo de administración. Supervisa el estado global de tus evidencias, trabajos y configuración personal.</p>
    </div>
    <a href="index.jsp" class="btn btn-neon btn-cyan-neon py-2 px-4" style="text-decoration: none;">👀 VER SITIO PÚBLICO</a>
</div>

<div class="row g-4 mb-4">
    <div class="col-md-3">
        <div class="neon-card" style="border-bottom: 2px solid var(--neon-cyan);">
            <div class="stat-title">SEMANAS ACTIVAS</div>
            <div class="stat-value text-cyan">16</div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="neon-card" style="border-bottom: 2px solid var(--neon-purple);">
            <div class="stat-title">EVIDENCIAS TOTALES</div>
            <div class="stat-value text-purple">12</div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="neon-card" style="border-bottom: 2px solid var(--neon-green);">
            <div class="stat-title">NIVEL DE ACCESO</div>
            <div class="stat-value text-green" style="font-size: 1.25rem; margin-top: 20px;">ADMINISTRADOR</div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="neon-card" style="border-bottom: 2px solid var(--neon-red);">
            <div class="stat-title">MENSAJES SIN LEER</div>
            <div class="stat-value text-danger" style="color: var(--neon-red) !important;">3</div>
        </div>
    </div>
</div>

<div class="row g-4">
    <div class="col-lg-7">
        <div class="neon-card" style="border-color: rgba(0, 243, 255, 0.3);">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h4 class="text-cyan m-0" style="font-size: 1.1rem; font-family: 'Poppins'; font-weight: 700;">Resumen del portafolio</h4>
                <span class="text-muted small" style="font-family: 'Orbitron';">/overview</span>
            </div>
            
            <div class="d-flex gap-4 align-items-center mb-4 flex-wrap">
                <p class="text-secondary" style="font-size: 0.95rem; line-height: 1.7; flex: 1; min-width: 250px;">
                    Este es el centro de control de tu portafolio académico. Desde aquí puedes administrar las 16 semanas de formación, agregar los trabajos realizados, actualizar tu información personal y controlar los mensajes enviados desde la página pública.
                </p>
                <div class="text-center p-3" style="background: rgba(0,243,255,0.05); border: 1px dashed var(--neon-cyan); border-radius: 8px; min-width: 150px;">
                    <h3 class="text-cyan m-0" style="font-size: 2.8rem; font-weight: 700; font-family: 'Orbitron';">16</h3>
                    <span class="text-muted" style="font-size: 0.65rem; font-family: 'Orbitron'; letter-spacing: 1px;">SEMANAS<br>PLANIFICADAS</span>
                </div>
            </div>
            
            <div class="p-3 d-flex align-items-center gap-3" style="background: rgba(57,255,20,0.05); border: 1px solid var(--neon-green); border-radius: 8px;">
                <span style="color: var(--neon-green); font-size: 1.5rem;">✧</span>
                <div>
                    <h6 class="text-green m-0" style="font-size: 0.95rem; font-weight: 600;">Estado de mensajes</h6>
                    <span class="text-secondary small">Tienes <strong class="text-white">3</strong> mensajes pendientes de revisar.</span>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-5">
        <div class="neon-card" style="border-color: rgba(188, 19, 254, 0.3);">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h4 class="text-purple m-0" style="font-size: 1.1rem; font-family: 'Poppins'; font-weight: 700;">Acciones rápidas</h4>
                <span class="text-muted small" style="font-family: 'Orbitron';">/tools</span>
            </div>
            
            <div class="row g-3">
                <div class="col-6">
                   <div class="action-box" onclick="document.getElementById('tab-perfil').click();" onmouseover="this.style.borderColor='var(--neon-cyan)'; this.style.boxShadow='0 0 15px rgba(0,243,255,0.2)';" onmouseout="this.style.borderColor='#333'; this.style.boxShadow='none';">
                       <div class="text-cyan mb-2" style="font-size: 1.2rem;">👤</div>
                       <h6 class="text-white m-0" style="font-size: 0.95rem;">Mi perfil</h6>
                       <span class="text-muted" style="font-size: 0.7rem;">Editar información</span>
                   </div>
                </div>
                <div class="col-6">
                   <div class="action-box" onclick="document.getElementById('tab-semanas').click();" onmouseover="this.style.borderColor='var(--neon-green)'; this.style.boxShadow='0 0 15px rgba(57,255,20,0.2)';" onmouseout="this.style.borderColor='#333'; this.style.boxShadow='none';">
                       <div class="text-green mb-2" style="font-size: 1.2rem;">📅</div>
                       <h6 class="text-white m-0" style="font-size: 0.95rem;">Semanas</h6>
                       <span class="text-muted" style="font-size: 0.7rem;">Gestionar aprendizaje</span>
                   </div>
                </div>
                <div class="col-6">
                   <div class="action-box" onclick="document.getElementById('tab-trabajos').click();" onmouseover="this.style.borderColor='var(--neon-purple)'; this.style.boxShadow='0 0 15px rgba(188,19,254,0.2)';" onmouseout="this.style.borderColor='#333'; this.style.boxShadow='none';">
                       <div class="text-purple mb-2" style="font-size: 1.2rem;">📁</div>
                       <h6 class="text-white m-0" style="font-size: 0.95rem;">Trabajos</h6>
                       <span class="text-muted" style="font-size: 0.7rem;">Administrar proyectos</span>
                   </div>
                </div>
                <div class="col-6">
                   <div class="action-box" onclick="document.getElementById('tab-mensajes').click();" onmouseover="this.style.borderColor='var(--neon-red)'; this.style.boxShadow='0 0 15px rgba(255,0,60,0.2)';" onmouseout="this.style.borderColor='#333'; this.style.boxShadow='none';">
                       <div style="color: var(--neon-red); font-size: 1.2rem; margin-bottom: 8px;">✉️</div>
                       <h6 class="text-white m-0" style="font-size: 0.95rem;">Mensajes</h6>
                       <span class="text-muted" style="font-size: 0.7rem;">Revisar inbox</span>
                   </div>
                </div>
            </div>
        </div>
    </div>
</div>
