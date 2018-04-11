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
<title>Change Password</title>
<link rel="stylesheet" href="../css/password.css">
</head>
<body>
<div class="center">
<h2 style="text-align:center">Change Your Password!</h2>

<form action="../CheckOldPass" method="post">


  <div class="container">
    <h3 style="text-align: center"><b>Enter old password</b></h3>
    <input type="password" placeholder="Password" name="oldpass" style="text-align: center" required>

    
        
    <button type="submit">Submit</button>
    
  </div>

  <div class="container" style="background-color:#f1f1f1">

  </div>
</form>
</div>
</body>
</html>

<%}%>