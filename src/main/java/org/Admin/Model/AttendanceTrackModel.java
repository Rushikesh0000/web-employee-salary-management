package org.Admin.Model;

import java.sql.Date;

public class AttendanceTrackModel
{
	 private int eid;
	 private String name;
	 private String contact;
	 private String department;
	 private String position;
	 private Date Date;
	 private int status;
    
	
	public AttendanceTrackModel()
	{

	}


	public AttendanceTrackModel(int eid, String name, String contact, String department, String position,
			java.sql.Date date, int status) {
		super();
		this.eid = eid;
		this.name = name;
		this.contact = contact;
		this.department = department;
		this.position = position;
		Date = date;
		this.status = status;
	}


	public int getEid() {
		return eid;
	}


	public void setEid(int eid) {
		this.eid = eid;
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


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public Date getDate() {
		return Date;
	}


	public void setDate(Date date) {
		Date = date;
	}


	public int getStatus() {
		return status;
	}


	public void setStatus(int status)
	{
		this.status = status;
	}




	
	
	
}
