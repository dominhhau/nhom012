package DAO;

import java.io.IOException;
import java.lang.reflect.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.sun.org.apache.xpath.internal.operations.Bool;

import connect.DBConnect;
import model.Cauhoi;

@WebServlet("/kiemTraTungCauHoiDAO")
public class kiemTraTungCauHoiDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String soCauHoi="";
	String Thoigian_Thi="";
	public kiemTraTungCauHoiDAO() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int Thoigian = Integer.parseInt(request.getParameter("Thoigian_Thi"));
		int SoCauHoi = Integer.parseInt(request.getParameter("soCauHoi"));
		Connection c = DBConnect.getConnection();
		ArrayList<Cauhoi> entries = new ArrayList<Cauhoi>(SoCauHoi);
		ArrayList<Integer> check = new ArrayList<Integer>(SoCauHoi);
		try {

			Random rd = new Random();
			int iNew = 0;
			for (int i = 0; i < SoCauHoi; i++) {
				iNew = rd.nextInt(SoCauHoi);
				while (check.contains(iNew)) {
					iNew = rd.nextInt(SoCauHoi);
				}
				check.add(iNew);
				Statement stmt = (Statement) c.createStatement();
				ResultSet rs = stmt.executeQuery("select * from cauhoi where cauhoi.index=" + (iNew + 1));
				while (rs.next()) {
					Cauhoi entry = new Cauhoi(rs.getInt("index"), rs.getString("noidung"), rs.getString("QA"),
							rs.getString("QB"), rs.getString("QC"), rs.getString("QD"), rs.getString("dapan"));
					entries.add(entry);
				}
			}
		} catch (

		SQLException e) {
			throw new ServletException(e);
		} finally {
			try {
				if (c != null)
					c.close();
			} catch (SQLException e) {
				throw new ServletException(e);
			}
		}
		request.getServletContext().setAttribute("Thoigian_Thi", Thoigian);
		request.getServletContext().setAttribute("SoCauHoi", SoCauHoi);
		request.getServletContext().setAttribute("entries", entries);
		//request.setAttribute("entries", entries);
		request.getRequestDispatcher("/kiemTraTungCau.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
