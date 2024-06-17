package org.emplyee.service;

import java.util.List;

import org.Admin.Model.BetweendateSearch;
import org.Admin.Model.SearchAttedanceModel;
import org.Employee.Model.EmployeeInfoModel;
import org.Employee.Repository.EmployeeInformation;
import org.Employee.Repository.EmployeeInformationImpl;


public class EmployeeInfoServicesImpl implements EmployeeInfoServices
{
	EmployeeInformation Erepo=new EmployeeInformationImpl(); 
	
	public int getIdsession(String user, String password)
	{
		
		return Erepo.getIdsession(user, password);
	}



	@Override
	 public List<EmployeeInfoModel>getProfile(int eid)
	{
		// TODO Auto-generated method stub
		return Erepo.getProfile(eid);
	}







}
