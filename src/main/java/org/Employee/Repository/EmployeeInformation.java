package org.Employee.Repository;

import java.util.List;

import org.Admin.Model.AddEmployeeModel;
import org.Admin.Model.BetweendateSearch;
import org.Admin.Model.SearchAttedanceModel;
import org.Employee.Model.EmployeeInfoModel;

public interface EmployeeInformation 
{
	public int getIdsession(String user, String password);
	 public List<EmployeeInfoModel>getProfile(int eid);
	 
	
}
