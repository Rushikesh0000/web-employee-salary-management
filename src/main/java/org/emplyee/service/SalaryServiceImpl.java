package org.emplyee.service;

import java.util.List;

import org.Employee.Model.EmployeeCheckSalaryModel;
import org.Employee.Repository.SalaryRepositoryImpl;

public class SalaryServiceImpl implements SalaryService
{
	SalaryRepositoryImpl Srepo=new SalaryRepositoryImpl();

	public List<EmployeeCheckSalaryModel> CheckSalary(int eid, int M) 
	{

		return Srepo.CheckSalary(eid, M);
	}

}
