package servlet;

import imple.imple;
import inter.inter;

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

import bean.stafbean;

/**
 * Servlet implementation class staffreg
 */
@WebServlet("/staffreg")
public class staffreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public staffreg() {
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
		String college=request.getParameter("college");
		String mail=request.getParameter("mail");
		
		String staffid=request.getParameter("stafid");
		String name=request.getParameter("name");
        String department=request.getParameter("depart");
        String mobile=request.getParameter("mobile");
        
        stafbean sb=new stafbean();
        sb.setStafid(staffid);
        sb.setName(name);
        sb.setDepartment(department);
        sb.setMobile(mobile);
        
        inter n=new imple();
        int b=n.staf(sb);
        if(b==1){
        
        	int reg=0;
   		 
   		Connection con=Dbconn.create();
   		 
   		 		try {
   		 			
   		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`colmanreg` VALUES(id,?,?,?,?,?,?,?)");
   		 				
   		 		
   		 				ps.setString(1,college);
   		 				ps.setString(2,mail);
   		 				ps.setString(3,mobile);
   		 				ps.setString(4,staffid);
   		 				ps.setString(5,name);
   		 				ps.setString(6,department);
   		 				ps.setString(7,"");
   		 			    reg=ps.executeUpdate();
   		
   		} catch (SQLException e) {
   			// TODO Auto-generated catch block
   			e.printStackTrace();
   		}
        	if(reg==1)
        	response.sendRedirect("hodmain.jsp");
        }
        	else{
        		response.sendRedirect("Error.jsp");
        	}
        }
     
	}

