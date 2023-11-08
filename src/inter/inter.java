package inter;

import bean.Studentregbean;
import bean.collegemanageregbean;
import bean.freeeventapplybean;
import bean.freeeventbean;
import bean.assignbean;
import bean.principalshare;
import bean.projectbean;
import bean.stafbean;
import bean.studentbean;
import bean.testpaperbean;

public interface inter  {

	public int staf(stafbean sb);
	 public int stdent(studentbean st);
	 public int principal(principalshare p);
	 public boolean slog(stafbean sl);
	 
	 public int assign(assignbean ab);
	 
	 public boolean stlog(studentbean st);
	 
	 public int test(testpaperbean tpb);
	 
	 public int proj(projectbean pb);
	 public int Stureg(Studentregbean prb);
	 public int colmanreg(collegemanageregbean prb);
	 public boolean Stulog(Studentregbean prb);
	 public boolean colmanlog(collegemanageregbean prb);
	 public int freeevent(freeeventbean prb,String ab);
	 public int freeeveapply(freeeventapplybean prb);
	 public int limiteveapply(freeeventapplybean prb);
	 public int paideveapply(freeeventapplybean prb);
	 
}
