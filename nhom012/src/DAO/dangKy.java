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


@WebServlet("/dangKy")
public class dangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public dangKy() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.getRequestDispatcher("dangNhapSv.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	
		String fullname = request.getParameter("fullname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Connection c = DBConnect.getConnection();
		try
		{
			
			
			String sql = "insert into sinhvien(fullname, user, pass) values(?,?,?)";
			PreparedStatement pstmt = (PreparedStatement) c.prepareStatement(sql);
			pstmt.setString(1, fullname);
			pstmt.setString(2, username);
			pstmt.setString(3, password);
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
		
		
		request.getRequestDispatcher("dangnhapSv.jsp").forward(request, response);
		
	}
	
}


