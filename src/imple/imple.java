package imple;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import dbcon.Dbconn;
import dbcon.dbcon;
import bean.Studentregbean;
import bean.collegemanageregbean;
import bean.freeeventapplybean;
import bean.freeeventbean;
import dbcon.dbcon;
import bean.assignbean;
import bean.principalshare;
import bean.projectbean;
import bean.stafbean;
import bean.studentbean;
import bean.testpaperbean;
import inter.inter;

public class imple implements inter{
 
	static Connection con;
	@Override
	public int staf(stafbean sb) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO college.staffreg VALUES(?,?,?,?,?,?,?)");
		ps.setString(1, sb.getStafid());
		ps.setString(2, sb.getName());
		ps.setString(3, sb.getDepartment());
		ps.setString(4, sb.getMobile());
		ps.setString(5, "Activate");
		ps.setString(6, "");
		ps.setString(7, "");

		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public int stdent(studentbean st) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO college.studentreg VALUES(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, st.getStudendid());
		ps.setString(2, st.getName());
		ps.setString(3, st.getDepartment());
		ps.setString(4, st.getMobile());
		ps.setString(5, "Activate");
		ps.setString(6, st.getCname());
		ps.setString(7, st.getCid());
		ps.setString(8,"stud");
		ps.setString(9,"time");
		
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public int principal(principalshare p) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO college.principal VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, p.getDate());
		ps.setString(2, p.getFilename());
		ps.setString(3, p.getDepart());
		ps.setString(4, p.getFrom());
		ps.setString(5, "Not View");
		ps.setString(6, "hod");
		ps.setString(7, "staff");
		ps.setString(8, "student");
		ps.setString(9, "");
		ps.setString(10, "");
		ps.setString(11, "");
		ps.setString(12, "");ps.setString(13, "");ps.setString(14, "");ps.setString(15, "time");ps.setString(16, "time");ps.setString(17, "time");

		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	
	public int bookadd(principalshare p) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO college.book VALUES(id,?,?,?,?,?,?,?,?)");
		ps.setString(1, p.getDate());
		ps.setString(2, p.getFilename());
		ps.setString(3, p.getDepart());
		ps.setString(4, p.getFrom());
		ps.setString(5, "Not View");
		ps.setString(6, "");
		ps.setString(7, "");
		ps.setString(8, "");
		
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	
	public int circularadd(principalshare p) {
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO college.staffcircular VALUES(id,?,?,?,?,?,?,?,?)");
		ps.setString(1, p.getDate());
		ps.setString(2, p.getFilename());
		ps.setString(3, p.getDepart());
		ps.setString(4, p.getFrom());
		ps.setString(5, "Not View");
		ps.setString(6, "");
		ps.setString(7, "");
		ps.setString(8, "");
		
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
}
	@Override
	public boolean slog(stafbean sl) {
		boolean b=false;
		try
		{
		
			con=dbcon.create();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM college.staffreg where  stafid=? and department=? ");
			ps.setString(1, sl.getStafid());
			ps.setString(2, sl.getDepartment());
			
	         ResultSet rs=ps.executeQuery();
			b=rs.next();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}
	@Override
	public int assign(assignbean ab) {
		// TODO Auto-generated method stub
		int s=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO college.assignment VALUES(id,?,?,?,?,?)");
		ps.setString(1, ab.getStaffid());
		ps.setString(2, ab.getAssignment());
		ps.setString(3, ab.getSubject());
		ps.setString(4, ab.getFile());
		ps.setString(5, "fortest");
	

		s=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return s;
		
		
		
	}
	@Override
	public boolean stlog(studentbean st) {
		// TODO Auto-generated method stub
		boolean b=false;
		try
		{
		
			con=dbcon.create();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM college.studentreg where  studeid=? and department=? ");
			ps.setString(1, st.getStudendid());
			ps.setString(2, st.getDepartment());
			
	         ResultSet rs=ps.executeQuery();
			b=rs.next();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}
	@Override
	public int test(testpaperbean tpb) {
		// TODO Auto-generated method stub
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO college.testpaper VALUES(id,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, tpb.getStudid());
		ps.setString(2, tpb.getStaffid());
		ps.setString(3, tpb.getSubject());
		ps.setString(4, tpb.getDescription());
		ps.setString(5, tpb.getQuesname());
		ps.setString(6, tpb.getAnspaper());
		ps.setString(7, tpb.getGetmark());
		ps.setString(8, tpb.getTotalmark());
		ps.setString(9, "Test Finished");

		u=ps.executeUpdate();
		
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;	
		}
	@Override
	public int proj(projectbean pb) {
		// TODO Auto-generated method stub
		int u=0;
		try{
		con=dbcon.create();	
		PreparedStatement ps = con.prepareStatement("INSERT INTO college.project VALUES(id,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, pb.getStudid());
		ps.setString(2, pb.getProjtitle());
		ps.setString(3, pb.getFilename());
		ps.setString(4, pb.getReview());
		ps.setString(5, pb.getStaffid());
		ps.setString(6, pb.getMark());
		ps.setString(7, pb.getTotalmark());
		ps.setString(8, "Uploaded");
		ps.setString(9, pb.getDept());
		
		u=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;	
	}


	
	public int Stureg(Studentregbean prb) {
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`stureg` VALUES(id,?,?,?,?,?,?,?)");
		 				
		 		
		 				ps.setString(1,prb.getName());
		 				System.out.println(prb.getName());
		 				ps.setString(2,prb.getEmail());
		 				ps.setString(3,prb.getPhone());
		 				ps.setString(4,prb.getPass());
		 				ps.setString(5,prb.getCpass());
		 				ps.setString(6,prb.getCollege());
		 				ps.setString(7,"");
		 			    reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;

	}
	
	@Override
	public boolean Stulog(Studentregbean prb) {
		// TODO Auto-generated method stub
		
		boolean log=false;
		 con=Dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`stureg` where email=?  and pass=? and college=?");
				ps.setString(1,prb.getEmail());
				
				ps.setString(2,prb.getPass());
				ps.setString(3, prb.getCollege());
				System.out.println(prb.getCollege());
				ResultSet rs=ps.executeQuery();
				System.out.println(log=rs.next());
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

	}

	public int colmanreg(collegemanageregbean prb) {
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`colmanreg` VALUES(id,?,?,?,?,?,?,?)");
		 				
		 		
		 				ps.setString(1,prb.getCname());
		 				System.out.println(prb.getCname());
		 				ps.setString(2,prb.getEmail());
		 				ps.setString(3,prb.getPhone());
		 				ps.setString(4,prb.getPass());
		 				ps.setString(5,prb.getCpass());
		 				ps.setString(6,prb.getCaddress());
		 				ps.setString(7,"");
		 			    reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;

	}
	@Override
	public boolean colmanlog(collegemanageregbean prb) {
		// TODO Auto-generated method stub
		
		boolean log=false;
		String status="Accepted";
		 con=Dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`colmanreg` where cemail=?  and pass=? and cname=? and status=?");
				ps.setString(1,prb.getEmail());
				
				ps.setString(2,prb.getPass());
				ps.setString(3, prb.getCname());
				ps.setString(4, status);
				System.out.println(prb.getCname());
				ResultSet rs=ps.executeQuery();
				System.out.println(log=rs.next());
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

	}

	public int freeevent(freeeventbean prb,String ab){
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`freeevent` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		 				
		 		
		 				ps.setString(1,prb.getDate());
		 				System.out.println(prb.getDate());
		 				ps.setString(2,prb.getEmail());
		 				ps.setString(3,prb.getCollege());
		 				ps.setString(4,prb.getAddress());
		 				ps.setString(5,prb.getCategory());
		 				ps.setString(6,prb.getOrganiser());
		 				ps.setString(7,prb.getSdate());
		 				ps.setString(8,prb.getEdate());
		 				ps.setString(9,prb.getMobile());
		 				ps.setString(10,prb.getCity());
		 				ps.setString(11,prb.getState());
		 				ps.setString(12,prb.getDescribtion());
		 				ps.setString(13,prb.getTechnical());
		 				ps.setString(14,prb.getNontechnical());
		 				ps.setString(15,prb.getDepart());
		 				ps.setString(16,prb.getConperson1());
		 				ps.setString(17,prb.getConnum1());
		 				ps.setString(18,prb.getConperson2());
		 				ps.setString(19,prb.getConnum2());
		 				ps.setString(20,prb.getLdate());
		 				ps.setString(21,prb.getRegfees());
		 				ps.setString(22,prb.getPic());
		 				ps.setString(23,prb.getEtype());
		 				ps.setString(24,prb.getEventname());
		 				ps.setString(25,ab);
		 				ps.setString(26,"Not Approved");
		 			    reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;

	}
	
	public int freeeveapply(freeeventapplybean prb){
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`freeapplyevent` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		 				
		 		
		 				ps.setString(1,prb.getFirstname());
		 			
		 				ps.setString(2,prb.getLastname());
		 				ps.setString(3,prb.getEmail());
		 				ps.setString(4,prb.getCollege());
		 				ps.setString(5,prb.getDegree());
		 				ps.setString(6,prb.getDepartment());
		 				ps.setString(7,prb.getAdmissionyear());
		 				ps.setString(8,prb.getRollno());
		 				ps.setString(9,prb.getDob());
		 				ps.setString(10,prb.getGender());
		 				ps.setString(11,prb.getPass());
		 				ps.setString(12,prb.getCpass());
		 				ps.setString(13,prb.getHoppy());
		 				ps.setString(14,prb.getEventname());
		 				ps.setString(15,prb.getEventtype());
		 				ps.setString(16,prb.getOrgrn());
		 				ps.setString(17,prb.getSdate());
		 				ps.setString(18,prb.getFilename());
		 				ps.setString(19,prb.getFilecontent());
		 				ps.setString(20,prb.getFilesize());
		 				ps.setString(21,prb.getFiletype());
		 				ps.setString(22,prb.getEncrypt());
		 				ps.setString(23,prb.getDecrypt());
		 				ps.setString(24,"HOW");
		 				ps.setString(25,"are");
		 				ps.setString(26,"are");
		 				ps.setString(27,"Not Approved");
		 				
		 			    reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;

	}
	
	public int limiteveapply(freeeventapplybean prb){
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`freeapplyevent` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		 				
		 		
		 				ps.setString(1,prb.getFirstname());
		 			
		 				ps.setString(2,prb.getLastname());
		 				ps.setString(3,prb.getEmail());
		 				ps.setString(4,prb.getCollege());
		 				ps.setString(5,prb.getDegree());
		 				ps.setString(6,prb.getDepartment());
		 				ps.setString(7,prb.getAdmissionyear());
		 				ps.setString(8,prb.getRollno());
		 				ps.setString(9,prb.getDob());
		 				ps.setString(10,prb.getGender());
		 				ps.setString(11,prb.getPass());
		 				ps.setString(12,prb.getCpass());
		 				ps.setString(13,prb.getHoppy());
		 				ps.setString(14,prb.getEventname());
		 				ps.setString(15,prb.getEventtype());
		 				ps.setString(16,prb.getOrgrn());
		 				ps.setString(17,prb.getSdate());
		 				ps.setString(18,prb.getFilename());
		 				ps.setString(19,prb.getFilecontent());
		 				ps.setString(20,prb.getFilesize());
		 				ps.setString(21,prb.getFiletype());
		 				ps.setString(22,prb.getEncrypt());
		 				ps.setString(23,prb.getDecrypt());
		 				ps.setString(24,prb.getEventlimit());
		 				System.out.println(prb.getEventlimit());
		 				ps.setString(25,"HELLO");
		 				ps.setString(26,"HELLO");
		 				ps.setString(27,"Not Approved");
		 			
		 				
		 			    reg=ps.executeUpdate();
		 			   System.out.println(reg);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;

	}
	
	public int paideveapply(freeeventapplybean prb){
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `collegeevent`.`freeapplyevent` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		 				
		 		
		 				ps.setString(1,prb.getFirstname());
		 			
		 				ps.setString(2,prb.getLastname());
		 				ps.setString(3,prb.getEmail());
		 				ps.setString(4,prb.getCollege());
		 				ps.setString(5,prb.getDegree());
		 				ps.setString(6,prb.getDepartment());
		 				ps.setString(7,prb.getAdmissionyear());
		 				ps.setString(8,prb.getRollno());
		 				ps.setString(9,prb.getDob());
		 				ps.setString(10,prb.getGender());
		 				ps.setString(11,prb.getPass());
		 				ps.setString(12,prb.getCpass());
		 				ps.setString(13,prb.getHoppy());
		 				ps.setString(14,prb.getEventname());
		 				ps.setString(15,prb.getEventtype());
		 				ps.setString(16,prb.getOrgrn());
		 				ps.setString(17,prb.getSdate());
		 				ps.setString(18,prb.getFilename());
		 				ps.setString(19,prb.getFilecontent());
		 				ps.setString(20,prb.getFilesize());
		 				ps.setString(21,prb.getFiletype());
		 				ps.setString(22,prb.getEncrypt());
		 				ps.setString(23,prb.getDecrypt());
		 				ps.setString(24,"HI");
		 				ps.setString(25,prb.getRegfees());
		 				ps.setString(26,"paid");
		 				ps.setString(27,"Approved");
		 				

		 			
		 				
		 			    reg=ps.executeUpdate();
		 			   System.out.println(reg);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;

	}
}
