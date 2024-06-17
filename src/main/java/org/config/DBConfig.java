package org.config;

import java.sql.*;

public class DBConfig 
{
	protected Connection con;
	protected ResultSet rs;
	protected PreparedStatement stmt;
	
	public DBConfig()
	{
		try
		{
			//Class.forName("com.mysql.cj.jdbc.Driver");
		  com.mysql.cj.jdbc.Driver d=new com.mysql.cj.jdbc.Driver();
		  
		  DriverManager.registerDriver(d);
		  
		   //con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webproject","root","root");
		   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smprowor_webproject","smprowor_rushikesh","dLZz7$+~piwe");

		}
	catch(Exception ex)
	{
		 System.err.println("MySQL JDBC Driver not found.  Error in DBConfig class"+ex);
         ex.printStackTrace();
	}
	}

}
