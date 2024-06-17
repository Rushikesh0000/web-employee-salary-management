package org.Admin.Repository;

import java.util.List;

import org.Admin.Model.CheckSalaryModel;



public interface SalaryCheckRepo 
{
	public List<CheckSalaryModel> CheckSalary(int empId, int month);
}
