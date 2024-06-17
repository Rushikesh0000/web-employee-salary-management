package org.Admin.Services;

import java.util.List;

import org.Admin.Model.AddEmployeeModel;
import org.Admin.Repository.EmployeeRepositaryImpl;

public class EmployeeInfoImpl implements EmployeeInfo
{
	EmployeeRepositaryImpl emprepo=new EmployeeRepositaryImpl();
	
	public List<AddEmployeeModel> getAllEmployee() 
	{
		return emprepo.getAllEmployee();
	}


	public List<AddEmployeeModel> searchEmployee(String s,int department)
	{
		
		return emprepo.searchEmployee(s,department);
	}

}
