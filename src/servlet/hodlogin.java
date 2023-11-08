package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class hodlogin
 */
@WebServlet("/hodlogin")
public class hodlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public hodlogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String college = request.getParameter("college");
		System.out.println("college " + college);
		HttpSession sess = request.getSession();
		sess.setAttribute("clg", college);

		String uname = request.getParameter("name");
		System.out.println("username " + uname);

		sess.setAttribute("user", uname);

		String pass = request.getParameter("pass");
		System.out.println("password " + pass);

		sess.setAttribute("dept", pass);

		if (uname.equals("HOD") && pass.equals("ECE")) {

			response.sendRedirect("hodece.jsp");

		}

		else if (uname.equals("HOD") && pass.equals("CSE")) {

			response.sendRedirect("hodmain.jsp");
		}

		else if (uname.equals("HOD") && pass.equals("IT")) {

			response.sendRedirect("hodmainit.jsp");
		}

		else {
			response.sendRedirect("staffloginerror.jsp");
		}

	}
}
