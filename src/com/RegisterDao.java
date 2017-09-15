package com;

import java.sql.*;
import java.util.Iterator;

public class RegisterDao {
	public static int register(User u){  
		int status=0;  
		try{  
		Connection con=ConnectionProvider.getCon();
		PreparedStatement p = con.prepareStatement("select * from users where email=?");
		p.setString(1, u.getEmail());
		ResultSet rs = p.executeQuery();
		if(!rs.next())
		{
			PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?)");  
			ps.setString(1,u.getUserName());  
			ps.setString(2,u.getEmail());  
			ps.setString(3,u.getPassword());
			ps.setString(4, u.getGender());
			              
			status=ps.executeUpdate();  
		}
		}catch(Exception e){}  
		
		return status;  
		}  
}
