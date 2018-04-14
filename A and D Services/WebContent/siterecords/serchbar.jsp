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
<form class="form-wrapper-2 cf"     width: 505;
    margin: 110px;>

<div>
<input type="text" placeholder="site data list hear..." required>
<button type="submit">Search</button>
</div>



</form>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p>Copyright@2017</p>
  <p>All copyrights are reserved by A & D Services WA Pvt. Ltd.</p>
</footer>
</body>
</html>
<%}%>