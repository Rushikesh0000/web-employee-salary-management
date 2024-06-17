package org.Admin.Model;

public class DepartmentModel
{
	private int deptid;
	private String name;

	
	public DepartmentModel()
	{
		
	}


	public DepartmentModel(int deptid, String name) {
		super();
		this.deptid = deptid;
		this.name = name;
	}


	public int getDeptid() {
		return deptid;
	}


	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}
	
	
}
