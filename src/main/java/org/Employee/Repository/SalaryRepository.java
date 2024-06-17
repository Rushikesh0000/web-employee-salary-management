package org.Employee.Repository;

import java.util.List;

import org.Employee.Model.EmployeeCheckSalaryModel;

public interface SalaryRepository 
{
	public List<EmployeeCheckSalaryModel> CheckSalary(int eid, int M);

}
