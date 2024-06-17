package org.Admin.Repository;

import org.config.DBConfig;

public class DeleteRepositoryImpl extends DBConfig implements DeleteRepository
{
	public int DeleteByid(int id)
	{
		try
		{
			stmt=con.prepareStatement("delete from emploinfo where eid=?");
			stmt.setInt(1, id);
			
			int value=stmt.executeUpdate();
			
			if(value>0)
			{
				return 1;
			}
			else
			{
				return 0;
			}
		}
		catch(Exception ex)
		{
			System.out.println("Exception is "+ex);
			return 1;
		}
		
	}

	public int DeleteByDeptId(int did)
	{
		try
		{
		stmt=con.prepareStatement("delete from department where did=?");
		stmt.setInt(1,did);
		
		int value=stmt.executeUpdate();
		
		if(value>0)
		{
			return 1;
		}
		else
		{
			return 0;
		}
		}
		catch(Exception ex)
		{
			System.out.println("Exception is "+ex);
			return 1;
		}
	}
	
}
