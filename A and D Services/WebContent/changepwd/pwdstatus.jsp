<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <h3 style="color:yellow; text-align:center;">You are not logged in</h3>		
  <%@ include file="../login/index.jsp"%> 
<%}else{%>
<%@include file="../include/Home.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>Password Changed</title>
<link rel="stylesheet" href="../css/green.css">
</head>
<body>



<div class="center">
  <p>${sessionScope.message}</p>

</div>

</body>
</html>
<%}%>