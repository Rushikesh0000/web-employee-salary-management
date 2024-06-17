package org.Admin.Repository;

import java.util.ArrayList;
import java.util.List;

import org.Admin.Model.AddEmployeeModel;
import org.config.DBConfig;

public class EmployeeRepositaryImpl extends DBConfig implements EmployeeRepositary
{

	List<AddEmployeeModel>list=new ArrayList<>();
	
	public  List<AddEmployeeModel> getAllEmployee() 
	{
			try
			{
				stmt=con.prepareStatement("select e.eid,e.ename,e.econtact,e.eemail,e.egender,e.eadress,e.username,e.password,d.deptname,ep.position,e.Joining_date from emploinfo e inner join emplopositionjoin em on em.eid=e.eid inner join eposition ep on em.pid=ep.pid inner join department d on d.did=em.did order by e.eid asc");
				rs=stmt.executeQuery();
				AddEmployeeModel emp;
				
				while(rs.next())
				{
					emp=new AddEmployeeModel();
					
					emp.setEid(rs.getInt(1));
					emp.setEname(rs.getString(2));
					emp.setEcontact(rs.getString(3));
					emp.setEemail(rs.getString(4));
					emp.setEgender(rs.getString(5));
					emp.setEaddress(rs.getString(6));
					emp.setUsername(rs.getString(7));
					emp.setPassword(rs.getString(8));
					emp.setDepartment(rs.getString(9));
					emp.setPosition(rs.getString(10));
					emp.setJoining_date(rs.getDate(11));
					
					list.add(emp);
				}
				
				return list.size()>0?list:null;
			}
			catch(Exception ex)
			{
				System.out.println("Error is "+ex);
				return null;
			}
			
			
	}

	@Override
	public List<AddEmployeeModel> searchEmployee(String s,int d) 
	{
		try
		{
			System.out.println("Repo"+s);
			System.out.println("Repo"+d);
			
			  stmt = con.prepareStatement("SELECT e.eid, e.ename, e.econtact, e.eemail, e.egender, e.eadress, e.username, e.password, d.deptname, ep.position, e.Joining_date FROM emploinfo e INNER JOIN emplopositionjoin em ON em.eid = e.eid INNER JOIN eposition ep ON em.pid = ep.pid INNER JOIN department d ON d.did = em.did WHERE (e.ename LIKE ? OR d.did = ?) ORDER BY e.eid ASC");

		        stmt.setString(1, s + "%");
		        stmt.setInt(2, d);
			
			rs=stmt.executeQuery();
			
			AddEmployeeModel emp;
			
			while(rs.next())
			{
				emp=new AddEmployeeModel();
				
				emp.setEid(rs.getInt(1));
				emp.setEname(rs.getString(2));
				emp.setEcontact(rs.getString(3));
				emp.setEemail(rs.getString(4));
				emp.setEgender(rs.getString(5));
				emp.setEaddress(rs.getString(6));
				emp.setUsername(rs.getString(7));
				emp.setPassword(rs.getString(8));
				emp.setDepartment(rs.getString(9));
				emp.setPosition(rs.getString(10));
				emp.setJoining_date(rs.getDate(11));
				
				list.add(emp);
			}
			
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Exception is "+ex);
			return null;
		}
		
		
	}

}
