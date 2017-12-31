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
import model.Kythi;



@WebServlet("/suaKythiDAO")
public class suaKythiDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public String  id = "";
    public suaKythiDAO() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id=request.getParameter("id");
		
		System.out.println(id);
		Connection c = DBConnect.getConnection();
		
		try
		{
			Statement stmt = (Statement) c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from laptrinhweb.kythi where kythi.index="+id);
			
		while(rs.next()) {
				Kythi entry = new Kythi
						(rs.getInt("index"),
						rs.getString("tenkythi"),
						rs.getString("tongsocau"),
						rs.getString("thoigianthi"),
						rs.getString("thoigian_batdau"),
						rs.getString("thoigian_ketthuc")
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
		
		request.getRequestDispatcher("/suaKythi.jsp").forward(request, response);
	}

	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection c = DBConnect.getConnection();
		
		String tenkythi = request.getParameter("tenkythi");
		String tongsocau = request.getParameter("tongsocau");
		String thoigianthi = request.getParameter("thoigianthi");
		String thoigian_batdau = request.getParameter("thoigian_batdau");
		String thoigian_ketthuc = request.getParameter("thoigian_ketthuc");
		
		
		
		try
		{
			
			String sql = "UPDATE laptrinhweb.kythi SET tenkythi=?,tongsocau=?,thoigianthi=?,thoigian_batdau=?,thoigian_ketthuc=? WHERE laptrinhweb.kythi.index=?;";
		
			PreparedStatement pstmt = (PreparedStatement) c.prepareStatement(sql);
			pstmt.setString(1, tenkythi);
			pstmt.setString(2, tongsocau);
			pstmt.setString(3, thoigianthi);
			pstmt.setString(4, thoigian_batdau);
			pstmt.setString(5, thoigian_ketthuc);
			pstmt.setString(6, id);
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
		
		
		request.getRequestDispatcher("DSKythiDAO").forward(request, response);
		
	
	}

}
