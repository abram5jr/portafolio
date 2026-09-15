<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="section-header d-flex justify-content-between align-items-end">
    <div>
        <span class="section-subtitle">ESTRUCTURA DE APRENDIZAJE</span>
        <h2 class="section-title">CONTROL DE <span class="text-green">FASES</span></h2>
        <p class="section-desc mb-0">Define los bloques de semanas académicas para agrupar tus evidencias.</p>
    </div>
    <button class="btn btn-neon btn-success-neon py-2 px-4">+ CREAR SEMANA</button>
</div>

<div class="admin-card" style="border-color: var(--neon-green);">
    <div class="card-body p-0 table-responsive">
        <table class="table table-dark table-hover m-0">
            <thead>
                <tr>
                    <th class="ps-4">ID</th>
                    <th>TÍTULO DE FASE</th>
                    <th>DESCRIPCIÓN</th>
                    <th class="text-end pe-4">HERRAMIENTAS</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="ps-4 text-green fw-bold">01</td>
                    <td class="fw-bold">Introducción al Curso</td>
                    <td class="text-muted small">Bases teóricas y metodológicas de nuestro entorno.</td>
                    <td class="text-end pe-4">
                        <button class="btn btn-sm btn-neon btn-cyan-neon py-1 px-2">✏️</button>
                        <button class="btn btn-sm btn-neon btn-danger-neon py-1 px-2">❌</button>
                    </td>
                </tr>
                <tr>
                    <td class="ps-4 text-green fw-bold">02</td>
                    <td class="fw-bold">Actividad de Desarrollo</td>
                    <td class="text-muted small">Contenido práctico de la etapa 2.</td>
                    <td class="text-end pe-4">
                        <button class="btn btn-sm btn-neon btn-cyan-neon py-1 px-2">✏️</button>
                        <button class="btn btn-sm btn-neon btn-danger-neon py-1 px-2">❌</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
