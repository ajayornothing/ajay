   <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <h3 style="color:yellow; text-align:center;">You are not logged in</h3>		
  <%@ include file="../login/index.jsp"%> 
<%}else{%>

<%@include file="../include/Home.jsp"%>

<html>
<head>
<title>Admin Settings</title>
<style type="text/css">
 a.admin:link,a.admin:visited{
  font-size:20px;
    background-color: white;
    color: black;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display:block;
    padding:20px 0;
   }
  a.admin:hover{
   background-color: rgb(38, 98, 86);
    color: white;
    }
.display {
 margin:auto;
  width: 20%;
  border: 3px solid #73AD21;
  text-decoration:none;
text-align: center;
  }
 
  }
</style>
</head>
<body>
  <div class="display" >
<a class="admin" href="../ViewUsers" >View All Users</a>
  </div>
</body>
</html>
<%}%>