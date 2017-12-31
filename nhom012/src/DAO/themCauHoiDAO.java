package DAO;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import connect.DBConnect;

public class themCauHoiDAO {
	public static boolean ThemCauHoi(String nhom, String noidung, String QA, String QB, String QC, String QD, String dapan) {
		boolean status=true;
		Connection c = DBConnect.getConnection();
		try
		{
			
			
			String sql = "insert into cauhoi(nhom, noidung, QA, QB, QC, QD, dapan) values(?,?,?,?,?,?,?)";
			PreparedStatement pstmt = (PreparedStatement) c.prepareStatement(sql);
			pstmt.setString(1, nhom);
			pstmt.setString(2, noidung);
			pstmt.setString(3, QA);
			pstmt.setString(4, QB);
			pstmt.setString(5, QC);
			pstmt.setString(6, QD);
			pstmt.setString(7, dapan);
			pstmt.executeUpdate();
			
			status=true;
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
		
	}

}
