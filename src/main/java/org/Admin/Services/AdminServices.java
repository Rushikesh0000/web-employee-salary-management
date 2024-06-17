package org.Admin.Services;



import java.util.List;

import org.Admin.Controller.AddNewEmployee;
import org.Admin.Model.AddEmployeeModel;
import org.Admin.Model.AdminModel;


public interface AdminServices
{
	public List<AdminModel> getAllAdmin(String name,String password);
	public boolean isAddNewEmployee(AddEmployeeModel adde);

}
