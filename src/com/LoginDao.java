package com;

import java.sql.*;

public class LoginDao {
	public static  boolean validate(User u){
		boolean status=false;  
		try{  
		Connection con=ConnectionProvider.getCon();         
		PreparedStatement ps=con.prepareStatement("select * from users where email=? and password=?");  
		  
		ps.setString(1,u.getEmail());  
		ps.setString(2, u.getPassword());  
		              
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		              
		}catch(Exception e){}  
		  
		return status; 
	}
	public static String getName(String usr){
		String name=null; 
		try{  
		Connection con=ConnectionProvider.getCon();         
		PreparedStatement ps=con.prepareStatement("select * from users where email=?");  
		  
		ps.setString(1,usr);         
		ResultSet rs=ps.executeQuery();
		if(rs.next())
			name = rs.getString(1);      
		}catch(Exception e){System.out.println(e);}  
		  
		return name; 
	}
}
