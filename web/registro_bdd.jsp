<%-- 
    Document   : registro_bdd
    Created on : 27-03-2018, 14:07:50
    Author     : Lyonel
--%>

<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("txt_nomUser");    
    String pwd = request.getParameter("txt_pass");
    String nombre = request.getParameter("txt_nombre");
    String apellido = request.getParameter("txt_apellido");
    String email = request.getParameter("txt_email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_taller_edu",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into usuario(nombre, apellido, email, nom_usuario, pass, fecha_reg) values ('" + nombre + "','" + apellido + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("bienvenida.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
