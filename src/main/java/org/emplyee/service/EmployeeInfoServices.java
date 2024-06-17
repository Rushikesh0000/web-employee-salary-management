package org.emplyee.service;

import java.util.List;

import org.Admin.Model.BetweendateSearch;
import org.Admin.Model.SearchAttedanceModel;
import org.Employee.Model.EmployeeInfoModel;

public interface EmployeeInfoServices 
{
	public int getIdsession(String user,String password);
	 public List<EmployeeInfoModel>getProfile(int eid); 


}
