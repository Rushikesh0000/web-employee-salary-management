package org.Admin.Repository;

import java.util.List;

import org.Admin.Model.AddEmployeeModel;

public interface EmployeeRepositary
{
  public List<AddEmployeeModel>getAllEmployee();
  public List<AddEmployeeModel> searchEmployee(String s,int did);
}

