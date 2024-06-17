package org.Admin.Services;

import java.util.List;

import javax.swing.text.Position;

import org.Admin.Model.Department2;
import org.Admin.Model.DepartmentModel;
import org.Admin.Model.EmploPosition;
import org.Admin.Repository.DepartmentRepo;
import org.Admin.Repository.DepartmentRepoImpl;



public class DepartmentServicesImpl implements DepartmentServices
{
	DepartmentRepo Drepo=new DepartmentRepoImpl();
	
	public List<DepartmentModel> searchDepartment(String s) 
	{
	
		return Drepo.searchDepartment(s);
	}
	
	 public boolean addDepartment(String department)
	 {
		return Drepo.addDepartment(department);
		 
	 }


	public List<Department2> DeptViewdata()
	{
		return Drepo.DeptViewdata();
	}

	@Override
	public List<EmploPosition> getPosition()
	{
	
		return Drepo.getPosition();
	}

	 
}
