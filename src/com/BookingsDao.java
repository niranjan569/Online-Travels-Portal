package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookingsDao {
	public static int book(String name,int serviceNo)
	{
		int status =0;
		try{  
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insert into bookings values(?,?)");
			ps.setString(1, name);
			ps.setInt(2, serviceNo);
			status=ps.executeUpdate();
		}catch (Exception e) {
			
		}
		return status;
	}
}
