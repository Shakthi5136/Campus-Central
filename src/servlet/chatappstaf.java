package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.dbcon;

/**
 * Servlet implementation class chatappstaf
 */
@WebServlet("/chatappstaf")
public class chatappstaf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chatappstaf() {
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
		

		String stafid=request.getParameter("name");
		String studentid=request.getParameter("phone");
		String text=request.getParameter("text");
		
		int u=0;
		try{
		Connection con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO college.chat VALUES(id,?,?,?,?,?)");
		ps.setString(1, stafid);
		ps.setString(2, studentid);
		ps.setString(3, text);
		ps.setString(4, "");
		ps.setString(5, "staff");
		

		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		if(u==1){
			response.sendRedirect("stafmain.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}

}
