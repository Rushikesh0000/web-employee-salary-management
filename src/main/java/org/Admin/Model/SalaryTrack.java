package org.Admin.Model;

import java.util.Date;

public class SalaryTrack
{
	private int id;
	private String name;
	private String contact;
	private String position;
	private int Totalday;
	private int TotalPdays;
	private int TotalAdays;
	private int Totalsalary;
	private int Perdaysal;
	
	
	public SalaryTrack()
	{
		
	}


	public SalaryTrack(int id, String name, String contact, String position, int totalday, int totalPdays,
			int totalAdays, int totalsalary, int perdaysal) {
		super();
		this.id = id;
		this.name = name;
		this.contact = contact;
		this.position = position;
		Totalday = totalday;
		TotalPdays = totalPdays;
		TotalAdays = totalAdays;
		Totalsalary = totalsalary;
		Perdaysal = perdaysal;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public int getTotalday() {
		return Totalday;
	}


	public void setTotalday(int totalday) {
		Totalday = totalday;
	}


	public int getTotalPdays() {
		return TotalPdays;
	}


	public void setTotalPdays(int totalPdays) {
		TotalPdays = totalPdays;
	}


	public int getTotalAdays() {
		return TotalAdays;
	}


	public void setTotalAdays(int totalAdays) {
		TotalAdays = totalAdays;
	}


	public int getTotalsalary() {
		return Totalsalary;
	}


	public void setTotalsalary(int totalsalary) {
		Totalsalary = totalsalary;
	}


	public int getPerdaysal() {
		return Perdaysal;
	}


	public void setPerdaysal(int perdaysal) {
		Perdaysal = perdaysal;
	}

     
	
}
