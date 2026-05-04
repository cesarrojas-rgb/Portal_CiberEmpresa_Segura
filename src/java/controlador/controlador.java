package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.UsuarioDAO;

public class controlador extends HttpServlet {

    UsuarioDAO udao = new UsuarioDAO();

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    
    String accion = request.getParameter("accion");

    if (accion != null && accion.equals("cifrar")) {
        String mensaje = request.getParameter("txtMensaje");
        // Algoritmo César simple: mover cada letra 3 posiciones (Punto 3.1.3)
        StringBuilder cifrado = new StringBuilder();
        for (char c : mensaje.toCharArray()) {
            cifrado.append((char) (c + 3));
        }
        request.setAttribute("cifrado", cifrado.toString());
        request.getRequestDispatcher("criptografia.jsp").forward(request, response);
    } else {
        // Aquí se queda tu código anterior de registro de usuario...
        String user = request.getParameter("txtUser");
        String pass = request.getParameter("txtPass");
        // ... (el resto del código que ya tenías)
    }
}
}