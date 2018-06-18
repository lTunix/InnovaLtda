package Controlador;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author ksandoval
 */
@WebServlet(name = "ServletLogin", urlPatterns = {"/ingreso.do"})
public class ServletLogin extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
          try (PrintWriter out = response.getWriter()){
            String correousu = request.getParameter("txt_correoUser");
            String pass = request.getParameter("txt_passUser");            
            Usuario usuarioValido = Usuario.ValidarUsuario(correousu, pass);
                if(usuarioValido != null){
                    HttpSession hs = request.getSession(true);
                    hs.setAttribute("Usuario", usuarioValido.getNombre());
                    hs.setAttribute("Correo", usuarioValido.getEmail());
                    hs.setAttribute("Tipo", usuarioValido.getId_tipo_user());
                    
                    if(usuarioValido.getId_tipo_user() == 1){
                        //Se genera una sesión para el usuario.
                        request.getSession().setAttribute("user", usuarioValido);
                        request.getRequestDispatcher("BienvenidoAlumno.jsp").forward(request, response);  
                        
                        //response.sendRedirect("BienvenidoAlumno.jsp");                  
                    }else if(usuarioValido.getId_tipo_user() == 2){
                          //Se genera una sesión para el usuario.
                        request.getSession().setAttribute("user", usuarioValido);
                        request.getRequestDispatcher("BienvenidoDocente.jsp").forward(request, response);
                        //response.sendRedirect("BienvenidoDocente.jsp");
                        
                    }else if(usuarioValido.getId_tipo_user()== 3){
                          //Se genera una sesión para el usuario.
                        request.getSession().setAttribute("user", usuarioValido);
                        request.getRequestDispatcher("BienvenidoCoordinador.jsp").forward(request, response);
                        //response.sendRedirect("BienvenidoCoordinador.jsp");
                        
                    }else if(usuarioValido.getId_tipo_user()== 4){
                          //Se genera una sesión para el usuario.
                        request.getSession().setAttribute("user", usuarioValido);
                        request.getRequestDispatcher("BienvenidoParticular.jsp").forward(request, response);
                        //response.sendRedirect("BienvenidoParticular.jsp");
                        
                    } else{
                        //se niega el acceso al usuarios
                        response.sendRedirect("ErrorLogin.jsp");
                    }
                    //response.sendRedirect("BienvenidoAlumno.jsp");
                }
                else{
                    response.sendRedirect("ErrorLogin.jsp");
            }
        }  
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             try {
                 processRequest(request, response);
             } catch (SQLException ex) {
                 Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
             }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
             try {
                 processRequest(request, response);
                 
            //codigo
             } catch (SQLException ex) {
                 Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
             }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
