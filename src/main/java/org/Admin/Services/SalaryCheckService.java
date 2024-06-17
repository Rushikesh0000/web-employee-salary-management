package org.Admin.Services;

import java.util.List;

import org.Admin.Model.CheckSalaryModel;

public interface SalaryCheckService 
{
	public List<CheckSalaryModel> CheckSalary(int empId, int month);
}
