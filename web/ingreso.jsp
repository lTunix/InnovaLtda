<%-- 
    Document   : ingreso
    Created on : 27-03-2018, 14:14:09
    Author     : Lyonel
--%>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
No est�s logeado<br/>
<a href="index.jsp">Por favor ingresa a tu cuenta</a>
<%} else {
%>
Bienvenido <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Cerrar sesi�n</a>
<%
    }
%>
