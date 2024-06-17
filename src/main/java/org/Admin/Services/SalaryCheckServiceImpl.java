package org.Admin.Services;

import java.util.List;

import org.Admin.Model.CheckSalaryModel;
import org.Admin.Repository.SalaryCheckRepo;
import org.Admin.Repository.SalaryCheckRepoImpl;

public class SalaryCheckServiceImpl implements SalaryCheckRepo
{

	SalaryCheckRepoImpl ScheckRepo=new SalaryCheckRepoImpl();
	
	public List<CheckSalaryModel> CheckSalary(int empId, int month)
	{
		
		return ScheckRepo.CheckSalary(empId, month);
	}
	
}
