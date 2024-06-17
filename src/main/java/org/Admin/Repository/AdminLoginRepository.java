package org.Admin.Repository;



import java.util.List;


import org.Admin.Model.AddEmployeeModel;
import org.Admin.Model.AdminModel;


public interface AdminLoginRepository 
{
	
	public List<AdminModel> getAllAdmin(String name,String password);
	public boolean isAddNewEmployee(AddEmployeeModel model);
	
}
