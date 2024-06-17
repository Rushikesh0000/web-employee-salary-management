package org.Employee.Repository;

import java.util.ArrayList;
import java.util.List;
import org.Employee.Model.EmployeeCheckSalaryModel;
import org.config.DBConfig;

public class SalaryRepositoryImpl extends DBConfig implements SalaryRepository
{

List <EmployeeCheckSalaryModel> list=new ArrayList<>();

	
	
	public int getStatusONE(int empId,int month)
	{
		
		try
		{
		stmt=con.prepareStatement("SELECT SUM(status) FROM attendance WHERE status = 1 and eid=? and month(adate)=?");
		stmt.setInt(1,empId);
		stmt.setInt(2,month);
		
		rs=stmt.executeQuery();
		
		if(rs.next())
		{
		  return rs.getInt(1);	
		}
		else
		{
			return 0;
		}
	
		}
		catch(Exception ex)
		{
			System.out.println("Status erro is "+ex);
			return 0;
		}
	}
	

	
	public int getStatusZero(int empId,int month)
	{
		int month1=month;
		
		try
		{
			stmt=con.prepareStatement("SELECT SUM(status) FROM attendance WHERE status = 0 and eid=? and month(adate)=?");
			stmt.setInt(1,empId);
			stmt.setInt(2,month1);
		
		   rs=stmt.executeQuery();
		
		if(rs.next())
		{
		  return rs.getInt(1);
			
		}
		else
		{
			return 0;
		}
	
		}
		catch(Exception ex)
		{
			System.out.println("Status erro is "+ex);
			return 0;
		}
	}
	
	public List<EmployeeCheckSalaryModel> CheckSalary(int eid, int M)
	{
		try
		{
			
			int Presenty=this.getStatusONE(eid, M);
			int AbsentDays=this.getStatusZero(eid, M);
			
			stmt = con.prepareStatement("SELECT  ei.eid,ei.ename,ep.position,ep.package FROM emploinfo ei JOIN emplopositionjoin epj ON ei.eid = epj.eid JOIN eposition ep ON epj.pid = ep.pid WHERE ei.eid =?");

			    stmt.setInt(1,eid);

			    rs = stmt.executeQuery();

			    EmployeeCheckSalaryModel cs = new EmployeeCheckSalaryModel();

			    if (rs.next())
			    {
			    	
			    	cs.setId(rs.getInt(1));
			    	cs.setName(rs.getString(2));
			    	cs.setPosition(rs.getString(3));
			    	cs.setPackages(rs.getString(4));
			    	
			    	
                   String p=rs.getString(4);
			    	
			    	float pdaysal=Integer.parseInt(p)/365;
			    	float basic_salary=Integer.parseInt(p)/12;
			    	
			    	
			    	
			    	cs.setBasicSal(basic_salary);
			    	cs.setPerdaysal(pdaysal);
			    	cs.setTotalPdays(Presenty);
			    	cs.setTotalAdays(AbsentDays);
			    	list.add(cs);
			    	
			    } 
			    else 
			    {
			        System.out.println("No records found.");
			    }
		
		
        
	        return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Check Salary Error "+ex);
			return null;
		}
		
	}

}
