package DAO;

import java.io.IOException;
import java.net.URLDecoder;
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

import model.Sinhvien;


@WebServlet("/suaSvDAO")
public class suaSvDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public String  id = "";
    public suaSvDAO() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id=request.getParameter("id");
		
		System.out.println(id);
		Connection c = DBConnect.getConnection();
		
		try
		{
			Statement stmt = (Statement) c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from laptrinhweb.sinhvien where sinhvien.index="+id);
			
		while(rs.next()) {
				Sinhvien entry = new Sinhvien
						(rs.getInt("index"),
						rs.getString("fullname"),
						rs.getString("user"),
						rs.getString("pass")
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
		
		request.getRequestDispatcher("/suaSv.jsp").forward(request, response);
	}

	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection c = DBConnect.getConnection();
		
		String fullname = request.getParameter("fullname");
		String fullnamevn = URLDecoder.decode( fullname, "UTF-8" );
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		
		
		
		try
		{
			
			String sql = "UPDATE laptrinhweb.sinhvien SET fullname=?,user=?,pass=? WHERE laptrinhweb.sinhvien.index=?;";
		
			PreparedStatement pstmt = (PreparedStatement) c.prepareStatement(sql);
			pstmt.setString(1, fullnamevn);
			pstmt.setString(2, user);
			pstmt.setString(3, pass);
			pstmt.setString(4, id);
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
		
		
		request.getRequestDispatcher("DSSinhvienDAO").forward(request, response);
		
	
	}

}
