package org.Admin.Model;

public class CheckSalaryModel
{
	private int eid;
	private String ename;
	private String econtact;
	private String eposition;
	private int eTotalday;
	private int eTotalPdays;
	private int eTotalAdays;
	private int eTotalsalary;
	private float ePerdaysal;
	private String epackage;
	private float BasicSal;
	
	public CheckSalaryModel()
	{
		
	}

	public CheckSalaryModel(int eid, String ename, String econtact, String eposition, int eTotalday, int eTotalPdays,
			int eTotalAdays, int eTotalsalary, float ePerdaysal, String epackage,float BasicSal) {
		super();
		this.eid = eid;
		this.ename = ename;
		this.econtact = econtact;
		this.eposition = eposition;
		this.eTotalday = eTotalday;
		this.eTotalPdays = eTotalPdays;
		this.eTotalAdays = eTotalAdays;
		this.eTotalsalary = eTotalsalary;
		this.ePerdaysal = ePerdaysal;
		this.epackage = epackage;
		this.BasicSal=BasicSal;
	}

	
	
	public float getBasicSal() {
		return BasicSal;
	}

	public void setBasicSal(float basicSal) {
		BasicSal = basicSal;
	}

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEcontact() {
		return econtact;
	}

	public void setEcontact(String econtact) {
		this.econtact = econtact;
	}

	public String getEposition() {
		return eposition;
	}

	public void setEposition(String eposition) {
		this.eposition = eposition;
	}

	public int geteTotalday() {
		return eTotalday;
	}

	public void seteTotalday(int eTotalday) {
		this.eTotalday = eTotalday;
	}

	public int geteTotalPdays() {
		return eTotalPdays;
	}

	public void seteTotalPdays(int eTotalPdays) {
		this.eTotalPdays = eTotalPdays;
	}

	public int geteTotalAdays() {
		return eTotalAdays;
	}

	public void seteTotalAdays(int eTotalAdays) {
		this.eTotalAdays = eTotalAdays;
	}

	public int geteTotalsalary() {
		return eTotalsalary;
	}

	public void seteTotalsalary(int eTotalsalary) {
		this.eTotalsalary = eTotalsalary;
	}

	public float getePerdaysal() {
		return ePerdaysal;
	}

	public void setePerdaysal(float pdaysal) {
		this.ePerdaysal = pdaysal;
	}

	public String getEpackage() {
		return epackage;
	}

	public void setEpackage(String epackage) {
		this.epackage = epackage;
	}


	

}
