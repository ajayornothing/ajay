<%@ page import ="java.sql.*" %>
<%
session.setAttribute("userid", null);
session.invalidate();
Connection con=(Connection)application.getAttribute("connection");
//con.close();
response.sendRedirect("index.jsp");
%>