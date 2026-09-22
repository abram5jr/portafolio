package com.zonajava.controlador;

import config.Conexion;
import java.io.InputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.util.Map;

// Importes nuevos de Cloudinary
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@WebServlet(name = "SubirArchivoServlet", urlPatterns = {"/SubirArchivoServlet"})
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,
    maxFileSize = 1024 * 1024 * 10,
    maxRequestSize = 1024 * 1024 * 50
)
public class SubirArchivoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String semanaIdStr = request.getParameter("semana");
        String categoria = request.getParameter("categoria");
        String tituloArchivo = request.getParameter("tituloArchivo");
        Part filePart = request.getPart("archivoFisico");

        try {
            // 1. Configurar credenciales dinámicas (Render o Local)
            String cloudName = System.getenv("CLOUD_NAME");
            String apiKey = System.getenv("API_KEY");
            String apiSecret = System.getenv("API_SECRET");

            if (cloudName == null) {
                cloudName = "TU_CLOUD_NAME"; // Reemplaza con tu dato de Cloudinary
                apiKey = "TU_API_KEY";       // Reemplaza con tu dato de Cloudinary
                apiSecret = "TU_API_SECRET"; // Reemplaza con tu dato de Cloudinary
            }

            Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", cloudName,
                "api_key", apiKey,
                "api_secret", apiSecret,
                "secure", true
            ));

            // 2. Convertir el archivo y subirlo a la nube
            InputStream inputStream = filePart.getInputStream();
            byte[] fileBytes = inputStream.readAllBytes();
            Map uploadResult = cloudinary.uploader().upload(fileBytes, ObjectUtils.emptyMap());

            // 3. Obtener el enlace URL público que nos devuelve Cloudinary
            String rutaEnLaNube = (String) uploadResult.get("secure_url");

            // 4. Guardar SOLO EL ENLACE en la base de datos TiDB
            Conexion conexionDB = new Conexion();
            Connection con = conexionDB.getConnection();
            int semanaId = Integer.parseInt(semanaIdStr);

            String sql = "INSERT INTO evidencias (semana_id, categoria_archivo, nombre_archivo, ruta_archivo) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, semanaId);
            ps.setString(2, categoria);
            ps.setString(3, tituloArchivo);
            ps.setString(4, rutaEnLaNube); // Guardamos la URL web directa

            ps.executeUpdate();
            System.out.println("Archivo subido a Cloudinary exitosamente.");

        } catch (Exception e) {
            System.out.println("Error fatal en subida: " + e.getMessage());
        }

        response.sendRedirect("admin.jsp?exito=true");
    }
}