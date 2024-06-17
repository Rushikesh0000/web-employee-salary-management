package org.Admin.Repository;


import java.util.ArrayList;
import java.util.List;

import org.Admin.Controller.AddNewEmployee;
import org.Admin.Model.AddEmployeeModel;
import org.Admin.Model.AdminModel;

import org.config.DBConfig;

public class AdminLoginRepositoryImpl extends DBConfig implements AdminLoginRepository
{
	List<AdminModel>list=new ArrayList<>();

	public List<AdminModel> getAllAdmin(String username,String password)
	{
		try
		{
		   stmt=con.prepareStatement("select *from admin where username=? and password=?");
           stmt.setString(1,username);
           stmt.setString(2, password);
           
           rs=stmt.executeQuery();
           AdminModel m;
           
           while(rs.next())
           {
        	   m=new AdminModel();
        	   
        	   m.setUsername(rs.getString("username"));
        	   m.setPassword(rs.getString("password"));
        	  
        	   list.add(m);
           }
           
           return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return null;
		}
		
	}


	int eid=this.getEmployeeid();
	public int getEmployeeid()
	{
		int empId=0;
		
		try
		{
			stmt=con.prepareStatement("select max(eid) from emploinfo");
			rs=stmt.executeQuery();
			
			if(rs.next())
			{
				empId=rs.getInt(1);
				
			}
			return ++empId;
		}
		catch(Exception ex)
		{
			return -1;
		}
		
	}
	
	int did,pid;
//
//      public int getPid(String position)
//      {
//    	  
//    	  try
//    	  {
//    	  stmt=con.prepareStatement("select pid from eposition where position=?");
//			
//			stmt.setString(1,position);		
//            rs=stmt.executeQuery();
//			
//			if(rs.next())
//			{
//				pid=rs.getInt(1);
//				System.out.println(pid);
//			}
//			return pid;
//    	  }
//    	  catch(Exception ex)
//    	  {
//    		  System.out.println("Error is "+ex);
//    		  return 0;
//    	  }
//		
//      }
      
      
//      public int getDid(String deptname)
//      {
//    	  try
//    	  {
//    		  
//    		stmt=con.prepareStatement("select did from department where deptname=?");
//  
//  			stmt.setString(1,deptname);
//  			
//  			
//              rs=stmt.executeQuery();
//  			
//  			if(rs.next())
//  			{
//  				did=rs.getInt(1);
//  				
//  			}
//			return did;
//    	  }
//    	  catch(Exception ex)
//    	  {
//    		  System.out.println("Error is "+ex);
//    		  return 0;
//    	  }
//		
//      }
      
      public boolean isAddNewEmployee(AddEmployeeModel model) 
	{  
    	 did=Integer.parseInt(model.getDepartment());
	     pid=Integer.parseInt(model.getPosition());
	    
		/*
		 * System.out.println("Department id is"+did);
		 * System.out.println("Position id is"+pid);
		 * System.out.println("EMP ID is"+getEmployeeid());
		 */
		
		int eid=this.getEmployeeid();
		//int pid=this.getPid(model.getPosition());
		//int did=this.getDid(model.getDepartment());
		
		try
		{
			stmt=con.prepareStatement("insert into emploinfo values(?,?,?,?,?,?,?,?,?)");
			
			stmt.setInt(1,eid);
			stmt.setString(2,model.getEname());
			stmt.setString(3,model.getEcontact());
			stmt.setString(4,model.getEemail());
			stmt.setString(5,model.getEgender());
			stmt.setString(6,model.getEaddress());
			stmt.setString(7,model.getUsername());
			stmt.setString(8,model.getPassword());
			stmt.setDate(9,model.getJoining_date());
			
			System.out.println(model.getJoining_date());
			int value=stmt.executeUpdate();	
		     
			if(value>0)
			{	
				stmt=con.prepareStatement("insert into emplopositionjoin values(?,?,?)");
				stmt.setInt(1,pid);
				stmt.setInt(2,eid);
				stmt.setInt(3,did);
				
				int result=stmt.executeUpdate();
				
				if(result>0)
				{
				  return true; 
				}
				else
				{
					return false;
				}
			}
			else
			{
				return false;
			}
		
		}
		catch(Exception ex)
		{
			System.out.println("Error is"+ex);
			return false;
		}
		
	}	

}
