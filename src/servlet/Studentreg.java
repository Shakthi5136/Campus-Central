package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.Dbconn;
import dbcon.dbcon;

import bean.Studentregbean;


import imple.imple;
import inter.inter;

/**
 * Servlet implementation class Patientregservlet
 */
@WebServlet("/Studentreg")
public class Studentreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Studentreg() {
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
		

		
		String uname=request.getParameter("username");
		System.out.println("Username "+uname);
		
		String email=request.getParameter("email");
		System.out.println("Email "+email);
		
		String phno=request.getParameter("phoneno");
		System.out.println("Phoneno "+phno);
		
		String college=request.getParameter("college");
		System.out.println("college "+college);
		
		String stuid=request.getParameter("password1");
		System.out.println("Password "+stuid);
		
		String dept=request.getParameter("password2");
		System.out.println("Password "+dept);
		
		
		
		Studentregbean ur=new Studentregbean();
	
		ur.setName(uname);
		ur.setPhone(phno);
		ur.setEmail(email);
		ur.setCollege(college);
		ur.setPass(stuid);
		ur.setCpass(dept);
	
		
		inter in=new imple();
		int i=in.Stureg(ur);
		if(i==1){
			
			int reg=0;
	   		 
	   		Connection con=dbcon.create();
	   		 
	   		 		try {
	   		 			
	   		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `college`.`studentreg` VALUES(?,?,?,?,?,?,?,?,?)");
	   		 				
	   		 		
	   		 				ps.setString(1,stuid);
	   		 				ps.setString(2,uname);
	   		 				ps.setString(3,dept);
	   		 				ps.setString(4,phno);
	   		 				ps.setString(5,"Activate");
	   		 				ps.setString(6,"");
	   		 				ps.setString(7,"");
	   		 				ps.setString(8,"stud");
	   		 				ps.setString(9,"time");
	   		 			    reg=ps.executeUpdate();
	   		
	   		} catch (SQLException e) {
	   			// TODO Auto-generated catch block
	   			e.printStackTrace();
	   		}
	        	if(reg==1)
			response.sendRedirect("stafmain.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
	}

}
