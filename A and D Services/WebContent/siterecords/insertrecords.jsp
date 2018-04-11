<%@ page import ="java.sql.*" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="java.util.Date" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    <h3 style="color:yellow; text-align:center;">You are not logged in</h3>		
  <%@ include file="../login/index.jsp"%> 
<%}else{
	
	String start=request.getParameter("startdate");
	String end=request.getParameter("enddate");

	java.sql.Date StartDate=java.sql.Date.valueOf(start);
		
	java.sql.Date EndDate=java.sql.Date.valueOf(end);
	
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
        "A&D", "admin");

PreparedStatement st1=con.prepareStatement("select max(siteid) from siterecords");
ResultSet rs=st1.executeQuery();
rs.next();
int siteid=rs.getInt(1);
siteid++;

PreparedStatement st = con.prepareStatement("insert into siterecords values(?,?,?,?,?,?,?,?)");

st.setInt(1,siteid);
st.setString(2, request.getParameter("name"));
st.setString(3, request.getParameter("address"));
st.setString(4, request.getParameter("contactperson"));
st.setString(5, request.getParameter("contactno"));
st.setString(6, request.getParameter("email"));
st.setDate(7,StartDate);
st.setDate(8,EndDate);

st.executeUpdate();

response.sendRedirect("siteadded.jsp");
}%>