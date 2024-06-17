package org.Admin.Repository;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.Admin.Controller.SearchAttedance;
import org.Admin.Model.AddEmployeeModel;
import org.Admin.Model.AttendanceTrackModel;
import org.Admin.Model.BetweendateSearch;
import org.Admin.Model.SalaryTrack;
import org.Admin.Model.SearchAttedanceModel;
import org.config.DBConfig;

public class AttendanceTrackRepositoryImpl extends DBConfig implements AttendanceTrackRepository
{
	List<AttendanceTrackModel>list=new ArrayList<>();
	AttendanceTrackModel Atm;
	
	 public List<AttendanceTrackModel>getEmploinfoAttedance(int id)
	 {
		 try
		 {
			 stmt=con.prepareStatement("select e.eid,e.ename,e.econtact,d.deptname,ep.position from emploinfo e inner join emplopositionjoin em on em.eid=e.eid inner join eposition ep on em.pid=ep.pid inner join department d on d.did=em.did where d.did=? order by e.eid asc");
			
			 stmt.setInt(1,id);
			 
			 rs=stmt.executeQuery();
				
				
				while(rs.next())
				{
					Atm=new AttendanceTrackModel();
					
					Atm.setEid(rs.getInt(1));
					Atm.setName(rs.getString(2));
					Atm.setContact(rs.getString(3));
					Atm.setDepartment(rs.getString(4));
					Atm.setPosition(rs.getString(5));
					
					list.add(Atm);
				}
				return list.size()>0?list:null;
		 }
		 catch(Exception ex)
		 {
			 System.out.println("Exception is "+ex);
			 return null;
		 }
		
		 
	 }

	 

//	 
//		   public boolean TrackAttedance(int id,String attendanceDate,int status)
//		   {
//
//                     
//			   try {
//				   String insertQuery = "INSERT INTO attendance values (?, ?, ?)";
//	                stmt = con.prepareStatement(insertQuery);
//	                stmt.setInt(1,id);
//	                stmt.setString(2,attendanceDate);
//	                stmt.setInt(3,status);
//	                
//	                
//	                int rowsInserted = stmt.executeUpdate();
//	                
//	                if(rowsInserted>0)
//	                {
//	                	Atm.setStatus(1);
//	                	return true;
//	                }
//	                else
//	                {   Atm.setStatus(1);
//	                	return false;
//	                }
//	                
//		            }
//			   catch (SQLException e) 
//			   {
//				   System.out.println("The Attendance Error is "+e);
//		            return false;
//		        }
//			 
//		   }
		   
		   
	 public boolean TrackAttedance(int id,String attendanceDate,int status)
		   {
		    //System.out.println(attendanceDate);
		  // Date d=Date.valueOf(attendanceDate);
			    try 
	              {
			        // Check if record already exists
			        String checkQuery = "SELECT * FROM attendance WHERE eid = ? AND adate= ?";
			       stmt= con.prepareStatement(checkQuery);
			        stmt.setInt(1, id);
			        stmt.setDate(2, java.sql.Date.valueOf(attendanceDate));
			         rs = stmt.executeQuery();

			        if (rs.next())
			        {
			            // Record exists, update it
			            String updateQuery = "UPDATE attendance SET status = ? WHERE eid = ? AND adate = ?";
			            
			            stmt=con.prepareStatement(updateQuery);
			            stmt.setInt(1,status);
			            stmt.setInt(2, id);
			          //  stmt.setString(3, attendanceDate);
			            stmt.setDate(3,java.sql.Date.valueOf(attendanceDate));
			            int rowsUpdated = stmt.executeUpdate();

			            if (rowsUpdated > 0) 
			            {
			            
			               // Atm.setStatus(status);
			                return true; // Updated successfully
			            } 
			            else
			            {
			                //Atm.setStatus(1);
			                return false; // Failed to update
			            }
			        } else {
			            // Record doesn't exist, insert new record
			            String insertQuery = "INSERT INTO attendance VALUES (?, ?, ?)";
			            stmt = con.prepareStatement(insertQuery);
			            stmt.setInt(1,id);
			            stmt.setDate(2,java.sql.Date.valueOf(attendanceDate));
			            //stmt.setString(2, attendanceDate);
			            stmt.setInt(3, status);
			            int rowsInserted = stmt.executeUpdate();

			            if (rowsInserted > 0)
			            {
			               // Atm.setStatus(1);
			                return true; // Inserted successfully
			            } else {
			               // Atm.setStatus(1);
			                return false; // Failed to insert
			            }
			        }
			    } catch (SQLException e) {
			        System.out.println("The Attendance Error is " + e);
			        return false;
			    }
			}

	 
	 public List<AttendanceTrackModel>getEmploinfo(String s)
	 {
		 try
		 {
			 stmt=con.prepareStatement("select e.eid,e.ename,e.econtact,d.deptname,ep.position from emploinfo e inner join emplopositionjoin em on em.eid=e.eid inner join eposition ep on em.pid=ep.pid inner join department d on d.did=em.did where e.ename like'"+s+"%' order by e.eid asc");
			
	            rs=stmt.executeQuery();
	            
				AttendanceTrackModel Atm;
				
				while(rs.next())
				{
					Atm=new AttendanceTrackModel();
					
					Atm.setEid(rs.getInt(1));
					Atm.setName(rs.getString(2));
					Atm.setContact(rs.getString(3));
					Atm.setDepartment(rs.getString(4));
					Atm.setPosition(rs.getString(5));
					
					list.add(Atm);
				}
				return list.size()>0?list:null;
		 }
		 catch(Exception ex)
		 {
			 System.out.println("Exception is "+ex);
			 return null;
		 }
		
	 }
	 
	

	 public List<SearchAttedanceModel> searchEmployees(String s,String department,String date)
	{
		 List<SearchAttedanceModel> list= new ArrayList<>();
		 
		 try {
	            
	            // Use parameterized query to prevent SQL injection
	            String query ="SELECT e.eid,e.ename,a.eid, a.adate, a.status FROM emploinfo e INNER JOIN attendance a ON a.eid = e.eid INNER JOIN emplopositionjoin epj ON e.eid =epj.eid INNER JOIN department d ON epj.did = d.did WHERE (e.ename like ? OR d.deptname like ?) and a.adate like ? ";
	            stmt = con.prepareStatement(query);
	            stmt.setString(1,s + "%");
	            stmt.setString(2,department + "%");
	            stmt.setString(3,date + "%");
	            
	            rs = stmt.executeQuery();
	            
	            int Pcnt=0,Acnt=0,totalday=0;
	            
	            SearchAttedanceModel Semp=new SearchAttedanceModel();
	            
	            while(rs.next()) 
	            {  
	                 Semp = new SearchAttedanceModel();
	             
	                 Semp.setId(rs.getInt(1));
		             Semp.setName(rs.getString(2));
	                // Retrieve the DATE value from the ResultSet
	                Date sqlDate = rs.getDate("adate");
	            	
	                Semp.setDate(sqlDate);
	                
	                totalday++;
	                	
	                int status = rs.getInt("status");
	            
	                
	                if (status==1) 
	                {
	                	Pcnt++;
	                	
	                	 
	                    Semp.setStatus("Present");
	                } else 
	                {
	                	Acnt++;
	                    Semp.setStatus("Absent");
	                }
	                
	                list.add(Semp);
	            }
	            
	            Semp.setTotalday(totalday);
	            Semp.setTotalPresent(Pcnt);
                Semp.setTotalAbsent(Acnt);
                
	            return list.size() > 0 ? list :null;
	        } 
		 catch (SQLException ex) 
		 {
	            System.out.println("Search Attendance Error is " + ex);
	            return null;
	        } 
}

	
	public List<BetweendateSearch> searchEmployee( String startDate, String endDate,String department)
	{
		List<BetweendateSearch> list = new ArrayList<>();
		
		 int Pct=0,Act=0,totlday=0;
		 
        String query = "SELECT e.eid, e.ename, a.eid, a.adate, a.status " +
                "FROM emploinfo e " +
                "INNER JOIN attendance a ON a.eid = e.eid " +
                "INNER JOIN emplopositionjoin epj ON e.eid = epj.eid " +
                "INNER JOIN department d ON epj.did = d.did " +
                "WHERE (a.adate BETWEEN ? AND ?) " +
                "AND d.deptname LIKE ? " +
                "ORDER BY a.adate ASC";

 try {
     stmt = con.prepareStatement(query);

     stmt.setDate(1, java.sql.Date.valueOf(startDate));
     stmt.setDate(2, java.sql.Date.valueOf(endDate));
     stmt.setString(3, "%" + department + "%");

            rs = stmt.executeQuery();
          
            BetweendateSearch Semp = new BetweendateSearch();
          
            while (rs.next())
            {
            	 Semp = new BetweendateSearch();
            	 
            	 Semp.setId(rs.getInt(1));
            	 Semp.setName(rs.getString(2));
                // Retrieve the DATE value from the ResultSet
                Date sqlDate = rs.getDate("adate");
                Semp.setStartdate(sqlDate);
                
                totlday++;
                
                int status = rs.getInt("status");
            
                if (status==1) 
                {
                	
                	Pct++;
                    Semp.setStatus("Present");
                } 
                else 
                {
                	Act++;
                    Semp.setStatus("Absent");
                }
               
                
                
                list.add(Semp);
            }
      
            Semp.setTotaldays(totlday);
            Semp.setPdays(Pct);
            Semp.setAdays(Act);
            
            return list.size() > 0 ? list : null;
            
        } 
		catch (SQLException ex)
		{
            System.out.println("Between Attendance Error is " + ex);
            return null;
        } 
	}


	public List<SalaryTrack> salaryTrack(String name, String dept)
	{
		
		  List<SalaryTrack> list = new ArrayList<>();
		   

		    try {
		    	String query ="SELECT e.eid,e.ename,e.econtact,ep.position FROM emploinfo e INNER JOIN emplopositionjoin epj ON e.eid =epj.eid inner join eposition ep on epj.pid=ep.pid INNER JOIN department d ON epj.did = d.did WHERE e.ename like ? OR d.deptname like ? ";
	            stmt = con.prepareStatement(query);
	            stmt.setString(1,name + "%");
	            stmt.setString(2,dept + "%");
	           
		
		        rs = stmt.executeQuery();
		        
		        SalaryTrack Semp;
		       
		        while (rs.next())
		        {
		        	Semp = new SalaryTrack();

					Semp.setId(rs.getInt(1));
					Semp.setName(rs.getString(2));
					Semp.setContact(rs.getString(3));
					Semp.setPosition(rs.getString(4));
					
		
		            list.add(Semp);
		        }
		        
		        return list.size() > 0 ?list :null;
		        
		    } catch (SQLException ex)
		    {
		        System.out.println("Between Attendance Error: " + ex);
		        return null;
		    } 
		    finally 
		    {
		        // Ensure the statement and result set are closed
		        try {
		            if (rs != null) rs.close();
		            if (stmt != null) stmt.close();
		        } 
		        catch (SQLException e) 
		        {
		            e.printStackTrace();
		        }
		    }
		}


	}

	


