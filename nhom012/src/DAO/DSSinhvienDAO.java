package DAO;

import java.io.IOException;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;


import model.Sinhvien;

import connect.DBConnect;


@WebServlet("/DSSinhvienDAO")
public class DSSinhvienDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DSSinhvienDAO() {
        super();
        
    }
    
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection c = DBConnect.getConnection();
		List<Sinhvien> entries = new ArrayList<Sinhvien>();
		
		try
		{
			Statement stmt = (Statement) c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from sinhvien");
			
			while(rs.next())
			{
				Sinhvien entry = new Sinhvien
						(rs.getInt("index"),
						rs.getString("fullname"),
						rs.getString("user"),
						rs.getString("pass"));
				
				entries.add(entry);
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
		
		request.setAttribute("entries", entries);
		request.getRequestDispatcher("/DSSinhvien.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
