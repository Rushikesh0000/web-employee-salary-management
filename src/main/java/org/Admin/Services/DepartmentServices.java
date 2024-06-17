package org.Admin.Services;

import java.util.List;

import javax.swing.text.Position;

import org.Admin.Model.Department2;
import org.Admin.Model.DepartmentModel;
import org.Admin.Model.EmploPosition;

public interface DepartmentServices
{
	 public List<DepartmentModel> searchDepartment(String s);
	 public boolean addDepartment(String department);
	 public List<Department2>DeptViewdata();
	 
	 public List<EmploPosition>getPosition();
}
