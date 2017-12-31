package DAO;

import java.io.IOException;
import java.net.URLDecoder;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import connect.DBConnect;


@WebServlet("/themSvDAO")
public class themSvDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public themSvDAO() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/DSSinhvien.jsp").forward(request, response);
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
			
			String sql = "insert into sinhvien(fullname, user, pass) values(?,?,?)";
		
			PreparedStatement pstmt = (PreparedStatement) c.prepareStatement(sql);
			pstmt.setString(1, fullnamevn);
			pstmt.setString(2, user);
			pstmt.setString(3, pass);
			
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
