package org.Employee.Model;

import java.sql.Date;

public class EmployeeInfoModel
{
	  private int id;
	    private String name;
	    private String email;
	    private String contact;
	    private String gender;
	    private String address;
	    private String username;
	    private String password;
	    private String department;
	    private String position;
	    private Date joining_date;
	    
	    

	    public EmployeeInfoModel()
	    {
	    }

		public EmployeeInfoModel(int id, String name, String email, String contact, String gender, String address,
				String username, String password, String department, String position, Date joining_date) {
			super();
			this.id = id;
			this.name = name;
			this.email = email;
			this.contact = contact;
			this.gender = gender;
			this.address = address;
			this.username = username;
			this.password = password;
			this.department = department;
			this.position = position;
			this.joining_date = joining_date;
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

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getContact() {
			return contact;
		}

		public void setContact(String contact) {
			this.contact = contact;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

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

		public Date getJoining_date() {
			return joining_date;
		}

		public void setJoining_date(Date joining_date) {
			this.joining_date = joining_date;
		}

	   
		

}
