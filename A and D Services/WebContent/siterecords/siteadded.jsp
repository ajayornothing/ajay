<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <h3 style="color:yellow; text-align:center;">You are not logged in</h3>		
  <%@ include file="../login/index.jsp"%> 
<%}else{%>

	<%@ include file="../include/Home.jsp"%> 
	
<!DOCTYPE html>
<html>
<head>
<title>Site Added</title>
<style>
.center {
    margin: auto;
    margin-top:200px;
    width: 30%;
    border: 3px solid #73AD21;
    padding: 20px;
    font-size:21px;
}

</style>
</head>
<body>



<div class="center">
  <p style="text-align:center">Site added successfully</p>

</div>

</body>
</html>
<%}%>