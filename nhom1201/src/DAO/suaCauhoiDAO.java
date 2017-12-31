package DAO;

import java.io.IOException;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import connect.DBConnect;
import model.Cauhoi;



@WebServlet("/suaCauhoiDAO")
public class suaCauhoiDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public String  id = "";
    public suaCauhoiDAO() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id=request.getParameter("id");
		
		System.out.println(id);
		Connection c = DBConnect.getConnection();
		
		try
		{
			Statement stmt = (Statement) c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from laptrinhweb.cauhoi where cauhoi.index="+id);
			
		while(rs.next()) {
			Cauhoi entry = new Cauhoi
					(rs.getInt("index"),
					rs.getString("nhom"),
					rs.getString("noidung"),
					rs.getString("QA"),
					rs.getString("QB"),
					rs.getString("QC"),
					rs.getString("QD"),
					rs.getString("dapan")
					);
			
				
				request.setAttribute("entry", entry);
		}
				
		}
		catch(SQLException e)
		{
			throw new ServletException(e);
			
		}
		finally
		{
			try
			{
				if(c != null)c.close();
			}
			catch(SQLException e)
			{
				throw new ServletException(e);
			}
		}
		
		request.setAttribute("id", id);
		
		request.getRequestDispatcher("/suaCauhoi.jsp").forward(request, response);
	}

	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection c = DBConnect.getConnection();
		
		String nhom=request.getParameter("nhom");
		String noidung=request.getParameter("noidung");
		String QA=request.getParameter("QA");
		String QB=request.getParameter("QB");
		String QC=request.getParameter("QC");
		String QD=request.getParameter("QD");
		String dapan=request.getParameter("dapan");
		
		
		
		try
		{
			
			String sql = "UPDATE laptrinhweb.cauhoi SET nhom=?,noidung=?,QA=?,QB=?,QC=?,QD=?,dapan=? WHERE laptrinhweb.cauhoi.index=?;";
		
			PreparedStatement pstmt = (PreparedStatement) c.prepareStatement(sql);
			pstmt.setString(1, nhom);
			pstmt.setString(2, noidung);
			pstmt.setString(3, QA);
			pstmt.setString(4, QB);
			pstmt.setString(5, QC);
			pstmt.setString(6, QD);
			pstmt.setString(7, dapan);
			pstmt.setString(8, id);
			pstmt.executeUpdate();
		
		}
		catch(SQLException e)
		{
			throw new ServletException(e);
		}
		finally
		{
			try
			{
				if(c != null)c.close();
			}
			catch(SQLException e)
			{
				throw new ServletException(e);
			}
		}
		
		
		request.getRequestDispatcher("DSCauhoiDAO").forward(request, response);
		
	
	}

}
