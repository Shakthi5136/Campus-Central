package servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.mysql.jdbc.PreparedStatement;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

import dbcon.dbcon;

/**
 * servlet implementation class addproducts
 */
@WebServlet("/addproduct")
public class addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String active;
       
    /**
     * @see HttpServlet#HttpServlet()
     */


    public addproduct() {
        super();
        
        
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

		String filetype=null;
		Part part;
		FilePart filepart;
		long size=0;
		String filename=null;
		
		filename=request.getParameter("filename");
		System.out.println("filename:"+filename);
 
		MultipartParser mp = new MultipartParser(request, 999999999);
		 
		
		PrintWriter out=response.getWriter();
		
		ArrayList list=new ArrayList<>();
		
		 
		
		String path = getServletContext().getRealPath(" ");
		System.out.println(path);
		

		String editPath = path.substring(0, path.indexOf("."));
		System.out.println(editPath);
		
		String fullpath = editPath + "college\\WebContent\\Local\\";
		System.out.println(fullpath);
		
		while ((part = mp.readNextPart()) != null)
		{
			if (part.isFile()) {
				filepart = (FilePart) part;
				
				filetype = filepart.getContentType();

				 filename = filepart.getFileName();
				System.out.println(filename);

				fullpath = fullpath + filename;
				System.out.println(fullpath);
				
				File file = new File(fullpath);
				size = filepart.writeTo(file);
				
				BufferedReader br = new BufferedReader(new FileReader(file));
		
				
			}
			else if(part.isParam())
			{
				ParamPart param = (ParamPart) part;
				String name = param.getName();
				
				String value = param.getStringValue();

				System.out.println("Loadinggg...... " + value);
				list.add(value);					
			}				
		}

		
		  
		

		
int reg=0;
      Connection con=(Connection) dbcon.create();
     
      
      try {
    	    
    
    	 PreparedStatement ps=(PreparedStatement) con.prepareStatement("INSERT INTO college.leader VALUES(id,?,?,?,?,?,?,?)");
       
    
         ps.setString(1, list.get(0).toString());
         ps.setString(2, list.get(1).toString());
         ps.setString(3, list.get(2).toString());
         ps.setString(4, list.get(3).toString());
         ps.setString(5, filename);
         ps.setString(6, "");
         ps.setString(7, "");
         
         
           reg=ps.executeUpdate(); 
         
           
           
      }catch(SQLException e)  {
    	  
    	  
    	  
    	  e.printStackTrace();
    	  
    	  
      }
         
      
      
      if(reg==1){
    	  
    	  
    	  
    	  response.sendRedirect("stafmain.jsp");
    	 
    	  
      }
      
      
      else{
    	  
    	  
    	  response.sendRedirect("error.jsp");
 
    	  
      }
		
		
	}

	
}

