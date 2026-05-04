package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    private Connection con;
    private String url = "jdbc:mysql://localhost:3306/ciber_seguridad";
    private String user = "root"; // Tu usuario de MySQL
    private String pass = "";     // Tu contraseña de MySQL

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.err.println("Error de conexión: " + e);
        }
        return con;
    }
}