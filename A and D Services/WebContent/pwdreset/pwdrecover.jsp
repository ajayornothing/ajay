<%@ page import ="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="java.sql.*" %>

<%
String uname=request.getParameter("uname");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","A&D", "admin");
PreparedStatement st=con.prepareStatement("select emailid,password from users where userid=?");
st.setString(1,uname);
ResultSet rs=st.executeQuery();
if(rs.next())
{
	String to=rs.getString(1);
	String pwd=rs.getString(2);
	final String from = "services.aandd@gmail.com";
	String sub = "Password for your A&D services account";
	String msg= "Hello "+uname+",\n\nPassword for your A&D services account is \""+pwd+"\".\nYou can change your password by logging into your accout." ;
			
	final String password="ajay5500";
	    //Get properties object    
	    Properties props = new Properties();    
	    props.put("mail.smtp.host", "smtp.gmail.com");    
	    props.put("mail.smtp.socketFactory.port", "465");    
	    props.put("mail.smtp.socketFactory.class",    
	              "javax.net.ssl.SSLSocketFactory");    
	    props.put("mail.smtp.auth", "true");    
	    props.put("mail.smtp.port", "465");    
	    //get Session   
	 	 Session sess = Session.getInstance(props,    
	     new javax.mail.Authenticator() {    
	     protected PasswordAuthentication getPasswordAuthentication() {    
	     return new PasswordAuthentication(from,password);  
	     }    
	    });    
	    //compose message    
	 
	     MimeMessage message = new MimeMessage(sess);    
	     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
	     message.setSubject(sub);    
	     message.setText(msg);    
	     //send message  
	     Transport.send(message);    
	     response.sendRedirect("emailsent.html");
	      
}

else
{%>
<h3 style="color:tomato; text-align:center;">User Id you enterd does not exist !</h3>	
<%@include file="forgotpwd.jsp" %>
<%} %>



