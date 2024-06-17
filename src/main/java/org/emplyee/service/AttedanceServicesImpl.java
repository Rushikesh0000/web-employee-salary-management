package org.emplyee.service;

import java.util.List;

import org.Employee.Model.AttedanceModell;
import org.Employee.Repository.AttedanceRepositoryImpl;

public class AttedanceServicesImpl implements AttedanceServices
{

	AttedanceRepositoryImpl Arepo=new AttedanceRepositoryImpl();


	public List<AttedanceModell> ViewEmployee(int eid, int dat)
	{
	
		return Arepo.ViewEmployee(eid,dat);
	}
}
