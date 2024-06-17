package org.Admin.Services;

import java.util.List;

import org.Admin.Model.AddEmployeeModel;
import org.Admin.Model.AdminModel;
import org.Admin.Repository.AdminLoginRepositoryImpl;


public class AdminServicesImpl implements AdminServices
{

	AdminLoginRepositoryImpl adm=new AdminLoginRepositoryImpl();

	public List<AdminModel> getAllAdmin(String name,String password)
	{
	
		return adm.getAllAdmin(name,password);
	}

	public boolean isAddNewEmployee(AddEmployeeModel model) 
	{
		
		return adm.isAddNewEmployee(model);
	}


}
