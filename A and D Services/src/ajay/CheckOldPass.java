package ajay;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


/**
 * Servlet implementation class CheckOldPass
 */
@WebServlet("/CheckOldPass")
public class CheckOldPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOldPass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application=request.getServletContext();
		HttpSession session=request.getSession();
		// TODO Auto-generated method stub
		Connection con=(Connection)application.getAttribute("connection");
		
		String userid=session.getAttribute("userid").toString();
		String oldpass=request.getParameter("oldpass");
		try {
		PreparedStatement st=con.prepareStatement("select password from users where password=?");
		
			st.setString(1,oldpass);
		
		ResultSet rs=st.executeQuery();
		if(rs.next())
		{
			response.sendRedirect("changepwd/newpwd.jsp");
		}
		doGet(request, response);
	}
	 catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
