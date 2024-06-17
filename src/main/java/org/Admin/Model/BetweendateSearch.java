package org.Admin.Model;

import java.util.Date;

public class BetweendateSearch 
{
	private int id;
	private String name;
	private Date startdate;
	private Date enddate;
	private String status;
	private int Pdays;
	private int Adays;
	private int totaldays;
	
	
	public BetweendateSearch()
	{
		
	}


	public BetweendateSearch(int id, String name, Date startdate, Date enddate, String status, int pdays, int adays,
			int totaldays) {
		super();
		this.id = id;
		this.name = name;
		this.startdate = startdate;
		this.enddate = enddate;
		this.status = status;
		Pdays = pdays;
		Adays = adays;
		this.totaldays = totaldays;
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


	public Date getStartdate() {
		return startdate;
	}


	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}


	public Date getEnddate() {
		return enddate;
	}


	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getPdays() {
		return Pdays;
	}


	public void setPdays(int pdays) {
		Pdays = pdays;
	}


	public int getAdays() {
		return Adays;
	}


	public void setAdays(int adays) {
		Adays = adays;
	}


	public int getTotaldays() {
		return totaldays;
	}


	public void setTotaldays(int totaldays) {
		this.totaldays = totaldays;
	}
	
	
	

}
