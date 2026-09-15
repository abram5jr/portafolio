package com.zonajava.controlador;

import config.Conexion;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "EliminarArchivoServlet", urlPatterns = {"/EliminarArchivoServlet"})
public class EliminarArchivoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Recibimos el ID del archivo que quieres borrar
        String idEvidencia = request.getParameter("id");
        
        if (idEvidencia != null) {
            try {
                // 2. Nos conectamos a la Base de Datos
                Conexion conexionDB = new Conexion();
                Connection con = conexionDB.getConnection();
                
                // 3. Preparamos la orden DELETE
                String sql = "DELETE FROM evidencias WHERE id=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, Integer.parseInt(idEvidencia));
                
                // 4. Ejecutamos el borrado
                ps.executeUpdate();
                
            } catch (Exception e) {
                System.out.println("Error al eliminar el registro: " + e.getMessage());
            }
        }
        
        // 5. Recargamos la página del panel
        response.sendRedirect("admin.jsp");
    }
}