<%-- 
    Document   : login
    Created on : 27-03-2018, 14:11:10
    Author     : Lyonel
--%>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("txt_nomUser");    
    String pwd = request.getParameter("txt_pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_taller_edu",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from usuario where nom_usuario='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("ingreso.jsp");
    } else {
        out.println("Contraseña inválida <a href='index.jsp'>Por favor volver a intentar</a>");
    }
%>
