<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {%>
<html>
<head>

<link rel="stylesheet" href="../css/Home.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#"><i class="fa fa-user" style="font-size:40px;color#818181"></i>  ${applicationScope.fname } ${applicationScope.lname }</a>
   <a href="#"></a>
  <a href="../homepage/Home.jsp">Homepage</a>
  <a href="#">Create Invoice</a>
  <a href="#">Expenses Records</a>
  <a href="#">Monthly Payment Records</a>
  <a href="#">Reports</a>
  <a href="#">Fuel Inventory</a>
  <a href="../siterecords/siterecords.jsp">Site Records</a>
  <a href="#">Subcontractor Details</a>
  <a href="../admin/admin.jsp">Admin Settings</a>
  <a href="../pwdreset/pwdchange.jsp">Change Password</a>
  <a href="../login/logout.jsp">Logout</a>
   
</div>


<h2 class="header">A&D Services WA Pvt. Ltd.</h2>
<hr>
<span style="font-size:30px;cursor:pointer;float:left;" onclick="openNav()">&#9776; </span>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
     
</body>
</html> 
   <% }
%>