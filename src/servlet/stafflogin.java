package servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.stafbean;

/**
 * Servlet implementation class stafflogin
 */
@WebServlet("/stafflogin")
public class stafflogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stafflogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
		System.out.println("staff ");
		String name=request.getParameter("staff");
		System.out.println("staff "+name);
		
		String email=request.getParameter("mail");
		System.out.println("Email "+email);
		HttpSession ses=request.getSession();
		ses.setAttribute("cmail", email);
		
		String college=request.getParameter("college");
		System.out.println("college "+college);
		HttpSession sess=request.getSession();
		sess.setAttribute("clg", college);
		
		

		String password=request.getParameter("password");
		System.out.println("Password "+password);
		
		
		String pass=request.getParameter("password");
		System.out.println("Password "+pass);
		
		
		
		
	
		sess.setAttribute("stafid",name);
		
		/*String pass=request.getParameter("pass");
		System.out.println("Department "+pass);*/
		
		HttpSession sess1=request.getSession();
		sess1.setAttribute("sdept",pass);
		
			stafbean n=new stafbean();
			n.setStafid(name);
			n.setDepartment(pass);
			
			inter b=new imple();
			boolean v=b.slog(n);
			if(v==true){
				
			response.sendRedirect("stafmain.jsp");
			
		}
	
	else{
		response.sendRedirect("error.jsp");
	}

	}

}
