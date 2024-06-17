package org.Admin.Repository;

import java.util.List;

import org.Admin.Controller.SearchAttedance;
import org.Admin.Model.AddEmployeeModel;
import org.Admin.Model.AttendanceTrackModel;
import org.Admin.Model.BetweendateSearch;
import org.Admin.Model.SalaryTrack;
import org.Admin.Model.SearchAttedanceModel;



public interface AttendanceTrackRepository
{
	 public List<AttendanceTrackModel>getEmploinfoAttedance(int id);
	 public List<AttendanceTrackModel>getEmploinfo(String name);
	 public boolean TrackAttedance(int eid,String attendanceDate,int status);
	public List<SearchAttedanceModel> searchEmployees(String s,String department,String dat);
	public List<BetweendateSearch> searchEmployee(String startdate, String enddate,String department);
	public List<SalaryTrack> salaryTrack(String s, String enddate);
		
}
