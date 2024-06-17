package org.Admin.Repository;

import java.util.ArrayList;
import java.util.List;

import org.Admin.Model.CheckSalaryModel;
import org.config.DBConfig;

public class SalaryCheckRepoImpl extends DBConfig implements SalaryCheckRepo
{
	List <CheckSalaryModel> list=new ArrayList<>();

	
	
	public int getStatusONE(int empId,int month)
	{
		int month1=month;
		
		try
		{
		stmt=con.prepareStatement("SELECT SUM(status) FROM attendance WHERE status = 1 and eid=? and month(adate)=?");
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
	
	public List<CheckSalaryModel> CheckSalary(int empId, int month)
	{
		try
		{
			
			int Presenty=this.getStatusONE(empId, month);
			int AbsentDays=this.getStatusZero(empId, month);
			
			
			stmt = con.prepareStatement("SELECT  ei.eid,ei.ename,ep.position,ep.package FROM emploinfo ei JOIN emplopositionjoin epj ON ei.eid = epj.eid JOIN eposition ep ON epj.pid = ep.pid WHERE ei.eid =?");

			    stmt.setInt(1, empId);

			    rs = stmt.executeQuery();

			    CheckSalaryModel cs = new CheckSalaryModel();

			    if (rs.next())
			    {
			    	cs.setEid(rs.getInt(1));
			    	cs.setEname(rs.getString(2));
			    	cs.setEposition(rs.getString(3));
			    	cs.setEpackage(rs.getString(4));
			    	String p=rs.getString(4);
			    	
			    	float pdaysal=Integer.parseInt(p)/365;
			    	float basic_salary=Integer.parseInt(p)/12;
			    	
			    	cs.setBasicSal(basic_salary);
			    	cs.setePerdaysal(pdaysal);
			    	cs.seteTotalPdays(Presenty);
			    	cs.seteTotalAdays(AbsentDays);
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
