<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <h3 style="color:yellow; text-align:center;">You are not logged in</h3>		
  <%@ include file="../login/index.jsp"%> 
<%}else{%>

<%@include file="../include/Home.jsp"%>
    
    
    <%@ page import ="java.sql.*" %>
    <%
    ResultSet rs=(ResultSet)session.getAttribute("resultset");
    %>
<!DOCTYPE html>
<html>
<head>
<style>
div {
	margin:auto;
    width:70%
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>

<h2 style="text-align: center;"><span style="color: #800000;">Users Information</span></h2>
<div>
<table>
  <tr>
    <th>UserID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Phone</th>
    <th>Email Id</th>
    <th>Password</th>
    <th>Delete</th>
    
  </tr>
  <%while(rs.next())
  {
  %>
  <tr>
  
  	<td><%=rs.getString(1) %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>   
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(5) %></td>
    <td><%=rs.getString(6) %></td>
    <td><a href="../Delete?userid='+<%=rs.getString(1)%>+'">Delete</a></td>
    
  </tr>
 <%} %>
</table>
</div>

</body>
</html>
<%} %>