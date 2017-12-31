package DAO;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import connect.DBConnect;


@WebServlet("/ThemGv")
public class ThemGv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ThemGv() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/DSGiangvien.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection c = DBConnect.getConnection();
		
		String fullname = request.getParameter("fullname");
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		String email = request.getParameter("email");
		String CMND = request.getParameter("CMND");
		String SDT = request.getParameter("SDT");
		
		
		try
		{
			
			String sql = "insert into giangvien(fullname, user, pass, email, CMND, SDT) values(?,?,?,?,?,?)";
		
			PreparedStatement pstmt = (PreparedStatement) c.prepareStatement(sql);
			pstmt.setString(1, fullname);
			pstmt.setString(2, user);
			pstmt.setString(3, pass);
			pstmt.setString(4, email);
			pstmt.setString(5, CMND);
			pstmt.setString(6, SDT);
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
		
		
		request.getRequestDispatcher("giangvienDAO").forward(request, response);
		
	}

}
