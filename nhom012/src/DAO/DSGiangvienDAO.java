package DAO;

import java.io.IOException;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import model.Giangvien;
import connect.DBConnect;


@WebServlet("/DSGiangvienDAO")
public class DSGiangvienDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DSGiangvienDAO() {
        super();
        
    }
    
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection c = DBConnect.getConnection();
		ArrayList<Giangvien> entries = new ArrayList<Giangvien>();
		
		try
		{
			Statement stmt = (Statement) c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from giangvien ");
			
			while(rs.next())
			{
				Giangvien entry = new Giangvien
						(rs.getInt("index"),
						rs.getString("fullname"),
						rs.getString("user"),
						rs.getString("pass"),
						rs.getString("email"),
						rs.getString("CMND"),
						rs.getString("SDT")
						);
				
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
		request.getRequestDispatcher("/DSGiangvien.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
