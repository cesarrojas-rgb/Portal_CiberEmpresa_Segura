package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class UsuarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;

    // ESTE ES EL PUNTO 3.1.2: Lógica de niveles
    public String evaluarPassword(String password) {
        if (password.length() >= 8 && password.matches(".*[A-Z].*") && password.matches(".*[0-9].*") && password.matches(".*[!@#$%^&*].*")) {
            return "Alto";
        } else if (password.length() >= 6 && password.matches(".*[0-9].*")) {
            return "Medio";
        } else {
            return "Bajo";
        }
    }

    // Método para registrar usuario (lo usaremos más adelante)
    public int registrar(String user, String pass) {
        String nivel = evaluarPassword(pass);
        String sql = "INSERT INTO usuarios (username, password, nivel_seguridad) VALUES (?,?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass); // Nota: En un sistema real aquí se cifraría
            ps.setString(3, nivel);
            return ps.executeUpdate();
        } catch (Exception e) {
            return 0;
        }
    }
}
