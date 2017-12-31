package DAO;


import java.sql.ResultSet;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import connect.DBConnect;

public class kiemTraThoiGian {
	public static boolean validate() {
		boolean status=false;
		Connection c = DBConnect.getConnection();
		String batdau="";
		String ketthuc="";
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String today=dateFormat.format(date);
		
		try
		{
			Statement stmt = (Statement) c.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM laptrinhweb.kythi where kythi.tenkythi='toiec3'");
			
		while(rs.next()) {
				batdau= (rs.getString("thoigian_batdau"));
				ketthuc=(rs.getString("thoigian_ketthuc"));
				System.out.println(batdau);
				System.out.println(ketthuc);
				System.out.println(today);
				if(batdau.compareTo(today) <=0 && ketthuc.compareTo(today) >=0)
				{
					status=true;
				}
				
				
		}
				
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	
	return status;
	}

}
