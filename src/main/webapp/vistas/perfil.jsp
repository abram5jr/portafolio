<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="section-header">
    <span class="section-subtitle">CONFIGURACIÓN</span>
    <h2 class="section-title">DATOS DEL <span class="text-purple">USUARIO</span></h2>
    <p class="section-desc">Modifica la información que se inyecta dinámicamente en tu portafolio público.</p>
</div>

<div class="admin-card" style="border-color: var(--neon-purple);">
    <div class="admin-card-header">
        <h5 class="m-0" style="font-size: 1.2rem;">👤 INFORMACIÓN PÚBLICA</h5>
    </div>
    <div class="card-body p-4">
        <form>
            <div class="row g-4 mb-4">
                <div class="col-md-6">
                    <label class="form-label text-purple">Nombres</label>
                    <input type="text" class="form-control" value="Abraham">
                </div>
                <div class="col-md-6">
                    <label class="form-label text-purple">Apellidos</label>
                    <input type="text" class="form-control" value="Parejas Araujo">
                </div>
                <div class="col-md-6">
                    <label class="form-label text-purple">Programa de Estudio</label>
                    <input type="text" class="form-control" value="Diseño y Programación Web">
                </div>
                <div class="col-md-6">
                    <label class="form-label text-purple">Institución</label>
                    <input type="text" class="form-control" value="IESTP Andrés A. Cáceres Dorregaray">
                </div>
            </div>

            <div class="mb-4 mt-5">
                <label class="form-label text-cyan">SÍNTESIS PROFESIONAL (SOBRE MÍ)</label>
                <textarea class="form-control" rows="4">Soy un apasionado por la intersección entre el desarrollo web y la psicología visual. Me enfoco en aplicar exclusivamente la ley de anexo de Gestalt para crear interfaces intuitivas y equilibradas, tal como lo implementé en la creación de identidad para la tienda virtual Wasi.</textarea>
            </div>
            
            <div class="text-end">
                <button type="button" class="btn btn-neon btn-success-neon py-2 px-5">ACTUALIZAR DATOS</button>
            </div>
        </form>
    </div>
</div>
