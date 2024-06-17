package org.Employee.Repository;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.Admin.Model.SearchAttedanceModel;
import org.Employee.Model.AttedanceModell;
import org.config.DBConfig;

public class AttedanceRepositoryImpl extends DBConfig implements AttedanceRepository
{
   List<AttedanceModell>list=new ArrayList<>();
	public List<AttedanceModell> ViewEmployee(int eid, int dat)
	{
		try
		{
		 String query ="SELECT e.eid,e.ename, a.adate, a.status FROM emploinfo e INNER JOIN attendance a ON a.eid = e.eid INNER JOIN emplopositionjoin epj ON e.eid =epj.eid INNER JOIN department d ON epj.did = d.did WHERE e.eid=?  or a.adate= ? ";
         stmt = con.prepareStatement(query);
         stmt.setInt(1,eid);
         stmt.setInt(2,dat);
         
         
         rs = stmt.executeQuery();
         
         int Pcnt=0,Acnt=0,totalday=0;
         
         AttedanceModell Semp=new AttedanceModell();
         System.out.println("LLLLLL");
         while(rs.next()) 
         {  
              Semp = new AttedanceModell();
          
              Semp.setEid(rs.getInt(1));
	             Semp.setName(rs.getString(2));
             // Retrieve the DATE value from the ResultSet
             Date sqlDate = rs.getDate("adate");
         	
         	System.out.println("LLLLLL"+rs.getInt(1));
    		System.out.println("PPPPPP"+rs.getString(2));
    		
             Semp.setDate(sqlDate);
             
             totalday++;
             	
             int status = rs.getInt("status");
         
             
             if (status==1) 
             {
             	Pcnt++;
                 Semp.setStatus("present");
             } else 
             {
             	Acnt++;
                 Semp.setStatus("Absent");
             }
             
             list.add(Semp);
         }
  
         
         return list.size() > 0 ? list :null;
     } 
		catch (SQLException ex) 
		{
         System.out.println("Search Attendance Error is " + ex);
         return null;
      } 
   }

	}

