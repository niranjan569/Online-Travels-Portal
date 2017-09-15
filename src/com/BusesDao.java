package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class BusesDao {
	public static List<Buses> fetchBuses(String from,String to) {
		List<Buses> list = new ArrayList<Buses>();
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("select * from buses where from_loc=? and to_loc=?");
			ps.setString(1,from);
			ps.setString(2,to);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Buses buses = new Buses();
				buses.setFrom(rs.getString("from_loc"));
				buses.setTo(rs.getString("to_loc"));
				buses.setArrival(rs.getString("arrival"));
				buses.setDeparture(rs.getString("departure"));
				buses.setServiceNo(rs.getInt("service_no"));
				list.add(buses);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
}
