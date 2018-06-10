<%-- 
    Document   : logout
    Created on : 27-03-2018, 14:14:45
    Author     : Lyonel
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
