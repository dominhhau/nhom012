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

import model.Cauhoi;

import connect.DBConnect;


@WebServlet("/DSCauhoiDAO")
public class DSCauhoiDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DSCauhoiDAO() {
        super();
        
    }
    
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection c = DBConnect.getConnection();
		ArrayList<Cauhoi> entries = new ArrayList<Cauhoi>();
		
		try
		{
			Statement stmt = (Statement) c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from cauhoi ");
			
			while(rs.next())
			{
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
		request.getRequestDispatcher("/DSCauhoi.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
