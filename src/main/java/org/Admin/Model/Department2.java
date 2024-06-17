package org.Admin.Model;

public class Department2 
{
	private int deptid;
	private String Deptname;
	
	public Department2()
	{
		
	}

	public Department2(int deptid, String deptname) {
		super();
		this.deptid = deptid;
		Deptname = deptname;
	}

	public int getDeptid() {
		return deptid;
	}

	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}

	public String getDeptname() {
		return Deptname;
	}

	public void setDeptname(String deptname) {
		Deptname = deptname;
	}
	
	

}
