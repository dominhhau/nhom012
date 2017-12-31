package DAO;

import java.sql.*;

import com.mysql.jdbc.Connection;

import connect.DBConnect;

public class LoginDAOSv {
	public static boolean validate(String name, String pass) {
		boolean status=false;
		Connection c = DBConnect.getConnection();
		try
		{
			
			PreparedStatement ps=c.prepareStatement(  
				"select * from sinhvien where username=? and password=?;"); 
		
		ps.setString(1,name);
		ps.setString(2,pass);
		
		ResultSet rs = ps.executeQuery();
		status = rs.next();
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	
	return status;
	}
	

}
