package servlet;

import imple.imple;
import inter.inter;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.freeeventbean;

import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

import dbcon.dbcon;

/**
 * Servlet implementation class prizeadd
 */
@WebServlet("/prizeadd")
public class manualprizeadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public manualprizeadd() {
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
		
		String fullpath = editPath + "college\\WebContent\\product\\";
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
		/*freeeventbean b=new freeeventbean();
		
		b.setDate((list.get(0).toString()));
 	    System.out.println("company email:"+list.get(0).toString());
		
 	   b.setEventname((list.get(1).toString()));
	    System.out.println("name:"+list.get(1).toString());
	    
	 		 b.setCollege((list.get(2).toString()));
		 	    System.out.println("name:"+list.get(1).toString());
		 	    
		 	   b.setEmail((list.get(3).toString()));
		 	    System.out.println("name:"+list.get(2).toString());
		 	    
		 	   b.setAddress((list.get(4).toString()));
		 	    System.out.println("name:"+list.get(3).toString());
		 	    
		 	   b.setCategory((list.get(5).toString()));
		 	    System.out.println("name:"+list.get(4).toString());
		 	    
		 	   b.setOrganiser((list.get(6).toString()));
		 	    System.out.println("name:"+list.get(5).toString());
		 	    
		 	   b.setSdate((list.get(7).toString()));
		 	    System.out.println("name:"+list.get(6).toString());
		 	    
		 	   b.setEdate((list.get(8).toString()));
		 	    System.out.println("name:"+list.get(7).toString());
		 	    
		 	   b.setMobile((list.get(9).toString()));
		 	    System.out.println("name:"+list.get(8).toString());
		 	    
		 	   b.setCity((list.get(10).toString()));
		 	    System.out.println("name:"+list.get(9).toString());
		 	   
		 	    b.setState((list.get(11).toString()));
		 	    System.out.println("name:"+list.get(10).toString());
		 	  
		 	    b.setDescribtion((list.get(12).toString()));
		 	    System.out.println("name:"+list.get(11).toString());
		 	  
		 	   b.setEtype((list.get(13).toString()));
		 	    System.out.println("name:"+list.get(12).toString());
		 	    
		 	    b.setTechnical((list.get(14).toString()));
		 	    System.out.println("name:"+list.get(13).toString());
		 	   
		 	    b.setNontechnical((list.get(15).toString()));
		 	    System.out.println("name:"+list.get(14).toString());
		 	  
		 	    b.setDepart((list.get(16).toString()));
		 	    System.out.println("name:"+list.get(15).toString());
		 	    
		 	   b.setConperson1((list.get(17).toString()));
		 	    System.out.println("name:"+list.get(16).toString());
		 	    
		 	   b.setConperson2((list.get(18).toString()));
		 	    System.out.println("name:"+list.get(17).toString());
		 	    
		 	   b.setConnum1((list.get(19).toString()));
		 	    System.out.println("name:"+list.get(18).toString());
		 	    
		 	   b.setConnum2((list.get(20).toString()));
		 	    System.out.println("name:"+list.get(19).toString());
		 	    
		 	   b.setLdate((list.get(21).toString()));
		 	    System.out.println("name:"+list.get(20).toString());
		 	   
		 	    b.setRegfees((list.get(22).toString()));
		 	    System.out.println("name:"+list.get(21).toString());
		 	    
		 	  
		 	   	  		 	  	 	    
	 	   b.setPic(filename);
		  */
		   SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
		    Date date = new Date();  
		    System.out.println(formatter.format(date));  
	 	  int u=0;
			try{
			Connection con=dbcon.create();	
			PreparedStatement ps = con.prepareStatement("INSERT INTO college.achievement VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, list.get(0).toString());
			ps.setString(2, list.get(1).toString());
			ps.setString(3, list.get(2).toString());
			ps.setString(4, list.get(3).toString());
			ps.setString(5, list.get(4).toString());
			ps.setString(6, list.get(5).toString());
			ps.setString(7, list.get(6).toString());
			ps.setString(8, list.get(7).toString());
			ps.setString(9, list.get(8).toString());
			ps.setString(10, list.get(9).toString());
			ps.setString(11, filename);
			ps.setString(12, "");
			ps.setString(13,formatter.format(date));
			
			u=ps.executeUpdate();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			HttpSession ses=request.getSession();
			
			if(u==1){
				if(list.get(5).toString().equals("First")){
					ses.setAttribute("no", "Second");
				response.sendRedirect("addachievement.jsp");
				}
				else if(list.get(5).toString().equals("Second")){
					ses.setAttribute("no", "Third");
				response.sendRedirect("addachievement.jsp");
				}
				else {
				response.sendRedirect("stafmain.jsp");
				}
			}else{
				response.sendRedirect("error.jsp");
			}
		
	}

}
