package org.Admin.Services;

import org.Admin.Repository.DeleteRepositoryImpl;

public class DeleteServicesImpl implements DeleteServices
{
	
	DeleteRepositoryImpl dl=new DeleteRepositoryImpl();
	
	public int DeleteByid(int id)
	{
		return dl.DeleteByid(id);
	}

	@Override
	public int DeleteBydeptId(int did) 
	{
		
		return dl.DeleteByDeptId(did);
	}
 
}
