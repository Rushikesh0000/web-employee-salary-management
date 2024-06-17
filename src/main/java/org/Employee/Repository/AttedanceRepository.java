package org.Employee.Repository;

import java.util.List;

import org.Employee.Model.AttedanceModell;

public interface AttedanceRepository
{
	public List<AttedanceModell>ViewEmployee(int eid,int dat);

}
