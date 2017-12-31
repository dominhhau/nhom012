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
import model.Kythi;
import connect.DBConnect;


@WebServlet("/DSKythiDAO")
public class DSKythiDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DSKythiDAO() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection c = DBConnect.getConnection();
		ArrayList<Kythi> entries = new ArrayList<Kythi>();
		
		try
		{
			Statement stmt = (Statement) c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from kythi");
			
			while(rs.next())
			{
				Kythi entry = new Kythi
						(rs.getInt("index"),
						rs.getString("tenkythi"),
						rs.getString("tongsocau"),
						rs.getString("thoigianthi"),
						rs.getString("thoigian_batdau"),
						rs.getString("thoigian_ketthuc")
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
		request.getRequestDispatcher("/DSKythi.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
