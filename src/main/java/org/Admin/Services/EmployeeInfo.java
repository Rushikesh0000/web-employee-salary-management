package org.Admin.Services;

import java.util.List;

import org.Admin.Model.AddEmployeeModel;

public interface EmployeeInfo 
{
   public List<AddEmployeeModel>getAllEmployee();
   
   public List<AddEmployeeModel>searchEmployee(String s,int did);
}
