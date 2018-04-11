<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "A&D", "admin");
    PreparedStatement st = con.prepareStatement("select * from users where userid=? and password=?");
    st.setString(1,userid);
    st.setString(2,pwd);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
    	String fname=rs.getString(2);
    	String lname=rs.getString(3);
        session.setAttribute("userid", userid);
        application.setAttribute("connection", con);
        application.setAttribute("fname", fname);
        application.setAttribute("lname", lname);
        response.sendRedirect("success.jsp");
    } else { %>
        
        <h3 style="color:yellow; text-align:center;">Invalid Username or Password</h3>		
  <%@ include file="index.jsp"%> 
   	<%	
     }
%>