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


@WebServlet("/xoaCauhoiDAO")
public class xoaCauhoiDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public String  id = "";
	 
    public xoaCauhoiDAO() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id=request.getParameter("id");
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection c = DBConnect.getConnection();
		
		
		
		
		try
		{
			
			String sql = "DElETE FROM laptrinhweb.cauhoi WHERE laptrinhweb.cauhoi.index=?;";
		
			PreparedStatement pstmt = (PreparedStatement) c.prepareStatement(sql);
			pstmt.setString(1,id);
			
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


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
