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
import model.Giangvien;


@WebServlet("/suaGVDAO")
public class suaGVDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public String  id = "";
    public suaGVDAO() {
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
			ResultSet rs = stmt.executeQuery("select * from laptrinhweb.giangvien where giangvien.index="+id);
			
		while(rs.next()) {
				Giangvien entry = new Giangvien
						(rs.getInt("index"),
						rs.getString("fullname"),
						rs.getString("user"),
						rs.getString("pass"),
						rs.getString("email"),
						rs.getString("CMND"),
						rs.getString("SDT")
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
		
		request.getRequestDispatcher("/suaGv.jsp").forward(request, response);
	}

	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection c = DBConnect.getConnection();
		
		String fullname = request.getParameter("fullname");
		String fullnamevn = URLDecoder.decode( fullname, "UTF-8" );
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String email = request.getParameter("email");
		String CMND = request.getParameter("CMND");
		String SDT = request.getParameter("SDT");
		
		
		try
		{
			
			String sql = "UPDATE laptrinhweb.giangvien SET fullname=?,user=?,pass=?,email=?,CMND=?,SDT=? WHERE laptrinhweb.giangvien.index=?;";
		
			PreparedStatement pstmt = (PreparedStatement) c.prepareStatement(sql);
			pstmt.setString(1, fullnamevn);
			pstmt.setString(2, user);
			pstmt.setString(3, pass);
			pstmt.setString(4, email);
			pstmt.setString(5, CMND);
			pstmt.setString(6, SDT);
			pstmt.setString(7, id);
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
		
		
		request.getRequestDispatcher("DSGiangvienDAO").forward(request, response);
		
	
	}

}
