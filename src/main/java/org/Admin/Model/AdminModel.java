package org.Admin.Model;

import java.sql.Date;

public class AdminModel 
{
	private String username;
	private String password;
	private Date dat;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	public AdminModel(String username, String password) 
	{
		this.username = username;
		this.password = password;
	}
	
	public AdminModel() 
	{
		
	}
	public Date getDat() {
		return dat;
	}
	public void setDat(Date sqldate) {
		this.dat = sqldate;
	}

}
