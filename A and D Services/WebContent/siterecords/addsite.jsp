 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <h3 style="color:yellow; text-align:center;">You are not logged in</h3>		
  <%@ include file="../login/index.jsp"%> 
<%}else{%>

	<%@ include file="../include/Home.jsp"%> 
	
  <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add new site</title>
        <link rel="stylesheet" href="../css/addsite.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>

      <form action="insertrecords.jsp" method="post">
      
        <h1>Add Site</h1>
        
        <fieldset>
          
          <label>Site Name:</label>
          <input type="text"  name="name" required>
          
          <label>Site Address:</label>
          <input type="text" name="address" required>
          
          <label>Contact Person:</label>
          <input type="text"  name="contactperson" required>
          
          <label>Contact Number:</label>
          <input type="text" name="contactno" required>
          
          <label>Email id:</label>
          <input type="email" name="email" required>
          
          <label>Starting Date:</label>
          <input type="date"  name="startdate" required>  
          
          <label>Ending Date:</label>
          <input type="date"" name="enddate"required>
        </fieldset>
               
        <button type="submit">Add Site</button>
      </form>
      
    </body>
</html>
<%}%>