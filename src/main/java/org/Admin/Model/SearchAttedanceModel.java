package org.Admin.Model;

import java.util.Date;

public class SearchAttedanceModel 
{
	private int id;
	private String name;
	private Date date;
	private String status;
    private int totalday;
    private int totalAbsent;
    private int totalPresent;
	
	public SearchAttedanceModel()
	{
		
	}
	
	public SearchAttedanceModel(int id, String name, Date date, String status, int totalday, int totalAbsent,
			int totalPresent) {
		super();
		this.id = id;
		this.name = name;
		this.date = date;
		this.status = status;
		this.totalday = totalday;
		this.totalAbsent = totalAbsent;
		this.totalPresent = totalPresent;
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

	public int getTotalday() {
		return totalday;
	}


	public void setTotalday(int totalday) {
		this.totalday = totalday;
	}


	public int getTotalAbsent() {
		return totalAbsent;
	}


	public void setTotalAbsent(int totalAbsent) {
		this.totalAbsent = totalAbsent;
	}


	public int getTotalPresent() {
		return totalPresent;
	}


	public void setTotalPresent(int totalPresent) {
		this.totalPresent = totalPresent;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	
	 
}
