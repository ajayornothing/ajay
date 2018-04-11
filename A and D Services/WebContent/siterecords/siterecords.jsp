<!DOCTYPE html>

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <h3 style="color:yellow; text-align:center;">You are not logged in</h3>		
  <%@ include file="../login/index.jsp"%> 
<%}else{%>

<%@include file="../include/Home.jsp"%>

<html>
<head>
<title>Site Records</title>
<link rel="stylesheet" href="../css/siterecords.css">
</head>
<body>
<a class="left" href="addsite.jsp" >Add Site Records</a>
<a class="right" href="#" >Search Site Records</a>
</body>
</html>

<%}%>