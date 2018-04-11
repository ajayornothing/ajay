<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <h3 style="color:yellow; text-align:center;">You are not logged in</h3>		
  <%@ include file="../login/index.jsp"%> 
<%}else{%>

	<%@ include file="../include/Home.jsp"%> 
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/searchbar.css">
</head>
<body  background="images">

<!DOCTYPE html>
<!-- search form 6 -->
<div class="button_box2">
<form class="form-wrapper-2 cf">
<input type="text" placeholder="site data list hear..." required aling="center">
<button type="submit">Search</button>
</form>
</div>
</body>
</html>
<%}%>