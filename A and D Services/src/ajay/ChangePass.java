package ajay;

import java.io.IOException;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


/**
 * Servlet implementation class ChangePass
 */
@WebServlet("/ChangePass")
public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePass() {
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
		// TODO Auto-generated method stub
		ServletContext application=request.getServletContext();
		HttpSession session=request.getSession();
		String pwd=request.getParameter("newpass");
		Connection con=(Connection)application.getAttribute("connection");
		String userid=session.getAttribute("userid").toString();
		
		PreparedStatement st;
		try {
			st = con.prepareStatement("update users set password=? where userid=?");
			st.setString(1,pwd);
		    st.setString(2,userid);
		    st.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("message","Your password has been successfully changed");
		//RequestDispatcher rd=request.getRequestDispatcher("changepwd/pwdstatus.jsp");
		response.sendRedirect("changepwd/pwdstatus.jsp");
		//rd.forward(request, response);
		doGet(request, response);
	}

}
