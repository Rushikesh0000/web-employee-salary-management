package org.Admin.Model;

import java.sql.Date;

public class AddEmployeeModel {
    private int eid;
    private String ename;
    private String eemail;
    private String econtact;
    private String egender;
    private String eaddress;
    private String username;
    private String password;
    private String department;
    private String position;
    private Date joining_date;
 
    public AddEmployeeModel() {
    }

    public AddEmployeeModel(int eid, String ename, String eemail, String econtact, String egender, String eaddress,
            String username, String password, String department, String position, Date joining_date) {
        this.eid = eid;
        this.ename = ename;
        this.eemail = eemail;
        this.econtact = econtact;
        this.egender = egender;
        this.eaddress = eaddress;
        this.username = username;
        this.password = password;
        this.department = department;
        this.position = position;
        this.joining_date = joining_date;
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

    public String getEemail() {
        return eemail;
    }

    public void setEemail(String eemail) {
        this.eemail = eemail;
    }

    public String getEcontact() {
        return econtact;
    }

    public void setEcontact(String econtact) {
        this.econtact = econtact;
    }

    public String getEgender() {
        return egender;
    }

    public void setEgender(String egender) {
        this.egender = egender;
    }

    public String getEaddress() {
        return eaddress;
    }

    public void setEaddress(String eaddress) {
        this.eaddress = eaddress;
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
