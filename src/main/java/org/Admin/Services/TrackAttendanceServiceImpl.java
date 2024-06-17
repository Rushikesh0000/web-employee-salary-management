package org.Admin.Services;

import java.util.List;


import org.Admin.Model.AttendanceTrackModel;
import org.Admin.Model.BetweendateSearch;
import org.Admin.Model.SalaryTrack;
import org.Admin.Model.SearchAttedanceModel;
import org.Admin.Repository.AttendanceTrackRepository;
import org.Admin.Repository.AttendanceTrackRepositoryImpl;

public class TrackAttendanceServiceImpl implements TrackAttendanceService 
{
	AttendanceTrackRepository attedance=new AttendanceTrackRepositoryImpl();
	
	
	 public List<AttendanceTrackModel>getEmploinfoAttedance(int id)
	{
		return attedance.getEmploinfoAttedance(id);
	}
	 
	 public List<AttendanceTrackModel>getEmploinfo(String name)
	 {
		 return attedance.getEmploinfo(name);
	 }
	
	public boolean TrackAttedance(int eid,String attendanceDate,int status)
	{
		return attedance.TrackAttedance(eid,attendanceDate,status);
	}


	 public List<SearchAttedanceModel> searchEmployees(String s,String department,String dat)
	{
		
		return attedance.searchEmployees(s,department,dat);
	}

	
	public List<BetweendateSearch> searchEmployee( String startdate, String enddate,String department)
	{
		
		return attedance.searchEmployee(startdate,enddate,department);
	}


	public List<SalaryTrack> salaryTrack(String s, String dept)
	{
		
		return attedance.salaryTrack(s,dept);
	}



}
