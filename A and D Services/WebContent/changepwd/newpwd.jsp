<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <h3 style="color:yellow; text-align:center;">You are not logged in</h3>		
  <%@ include file="../login/index.jsp"%> 
<%}else{%>
<%@include file="../include/Home.jsp"%>

<html>
<head>
<title>Change Password</title>
<link rel="stylesheet" href="../css/password.css">
</head>
<body>
<div class="center">
<h2 style="text-align:center">Change Your Password!</h2>

<form action="../ChangePass" method="post">


  <div class="container">
    <h3 style="text-align: center"><b>Enter new password</b></h3>
    <input type="password" placeholder="Password" name="newpass" style="text-align: center" required>

<h3 style="text-align: center"><b>Confirm new password</b></h3>
    <input type="password" placeholder="Password" name="cnfnewpass" style="text-align: center" required>    
        
    <button type="submit">Submit</button>
    
  </div>

<script type="text/javascript">

</script>

  <div class="container" style="background-color:#f1f1f1">

  </div>
</form>
</div>
</body>
</html>
<%}%>