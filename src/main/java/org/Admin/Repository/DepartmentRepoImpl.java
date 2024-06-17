package org.Admin.Repository;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.Position;

import org.Admin.Model.Department2;
import org.Admin.Model.DepartmentModel;
import org.Admin.Model.EmploPosition;
import org.Admin.Model.SearchAttedanceModel;
import org.config.DBConfig;

public class DepartmentRepoImpl extends DBConfig implements DepartmentRepo
{
	  List<DepartmentModel> list = new ArrayList<>();
	  
	public List<DepartmentModel> searchDepartment(String s)
	{
		try 
		{   
            stmt=con.prepareStatement("select *from department where deptname like ?"); 
           
            stmt.setString(1, s + "%");
            
            rs = stmt.executeQuery();
            
          
            
            DepartmentModel Department=new DepartmentModel();
            
            if(rs.next()) 
            {
                 Department = new DepartmentModel();
           
                Department.setDeptid(rs.getInt(1));
                Department.setName(rs.getString(2));
                
                list.add(Department);
            }
            
            
            return list.size()>0?list:null;
        }
		catch (SQLException ex)
		{
            System.out.println("Search Department Error is " + ex);
            return null;
        } 
	}


	
	public int getDeptid()
	{
		int dId=0;
		
		try
		{
			stmt=con.prepareStatement("select max(did) from department");
			rs=stmt.executeQuery();
			
			if(rs.next())
			{
				dId=rs.getInt(1);		
			}
			return ++dId;
		}
		catch(Exception ex)
		{
			return -1;
		}
		
	}
	
	
	public boolean addDept(String department)
	{
		int did=this.getDeptid();
		
		try
		{System.out.println(department);
			stmt=con.prepareStatement("insert into department values(?,?)");
			stmt.setInt(1,did);
			stmt.setString(2,department);
			
			int value=stmt.executeUpdate();
			
			if(value>0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		catch(Exception ex)
		{
			System.out.println("Add Department Error "+ex);
			return false;
		}
	}
	
	public boolean addDepartment(String department)
	{
	
		try
		{
			
			 stmt=con.prepareStatement("select *from department where deptname=?"); 
	           
			
	            stmt.setString(1,department);
	            
	            rs = stmt.executeQuery();
	            
	            if(rs.next())
	            {
	            	return false;
	            }
	            else
	            {System.out.println(department);
	            	return this.addDept(department);
	              
	            }
	            
	         
		}
		catch(Exception ex)
		{
		   System.out.println("The Department Erro is "+ex);
		   return false;
		}
	}


	public List<Department2> DeptViewdata()
	{
		List<Department2> list = new ArrayList<>();
		
		try 
			{   
	            stmt=con.prepareStatement("select *from department "); 
	             
	            rs = stmt.executeQuery();
	              
	            Department2 Department=new Department2();
	            
	            while(rs.next()) 
	            {
	                 Department = new Department2();
	               
	                Department.setDeptid(rs.getInt(1));
	                Department.setDeptname(rs.getString(2));
	                
	                list.add(Department);
	            }
			
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("View Department error is"+ex);
			return null;
			
		}
	}



	@Override
	public List<EmploPosition> getPosition() 
	{
          List<EmploPosition> list = new ArrayList<>();
		
		try 
			{   
	            stmt=con.prepareStatement("select *from eposition "); 
	             
	            rs = stmt.executeQuery();
	              
	            EmploPosition eposition=new EmploPosition();
	            
	            while(rs.next()) 
	            {
	            	eposition = new EmploPosition();
	               
	            	eposition.setPid(rs.getInt(1));
	            	eposition.setDname(rs.getString(2));
	                
	                list.add(eposition);
	            }
			
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("View Department error is"+ex);
			return null;
			
		}
	}


}
