package org.Employee.Repository;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.Admin.Model.AddEmployeeModel;
import org.Admin.Model.BetweendateSearch;
import org.Employee.Model.EmploLogin;
import org.Employee.Model.EmployeeInfoModel;
import org.config.DBConfig;

public class EmployeeInformationImpl extends DBConfig implements EmployeeInformation
{
	 
	public int getIdsession(String user, String password)
	{
		int id=0;
	
		
		try
		{
		
			stmt=con.prepareStatement("select eid from emploinfo where username=? and password=?");
			
			stmt.setString(1,user);
			stmt.setString(2,password);
			
			rs=stmt.executeQuery();
			
			
			
			if(rs.next())
			{
			  id= rs.getInt(1);			
				return id;
			}
			else
			{
				return -1;
			}
			
		}
		catch(Exception ex)
		{
			System.out.println("Log In Error Employee"+ex);
			return -1;
		}
		
	}


	 public List<EmployeeInfoModel>getProfile(int eid)
	{
		 
		 

		List<EmployeeInfoModel>list=new ArrayList<>();
		try {
			
			EmployeeInfoModel emp;
			stmt=con.prepareStatement("select e.eid,e.ename,e.econtact,e.eemail,e.egender,e.eadress,e.username,e.password,d.deptname,ep.position,e.Joining_date from emploinfo e inner join emplopositionjoin em on em.eid=e.eid inner join eposition ep on em.pid=ep.pid inner join department d on d.did=em.did where e.eid=?");
			stmt.setInt(1,eid);	
			
			rs=stmt.executeQuery();
			
		
			if(rs.next())
			{
					emp=new EmployeeInfoModel();
					
					emp.setId(rs.getInt(1));
					emp.setName(rs.getString(2));
					emp.setContact(rs.getString(3));
					emp.setEmail(rs.getString(4));
					emp.setGender(rs.getString(5));
					emp.setAddress(rs.getString(6));
					emp.setUsername(rs.getString(7));
					emp.setPassword(rs.getString(8));
					emp.setDepartment(rs.getString(9));
					emp.setPosition(rs.getString(10));
					emp.setJoining_date(rs.getDate(11));
					
					list.add(emp);
			}
			else
			{
				System.out.println("Data Not Present........!");
			}
			return list.size()>0?list:null;
			
		}catch(Exception ex)
		{
			System.out.println("Fetch Profile Data is"+ex);
			return null;
		}
		
	}



}
