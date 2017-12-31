package controller;

import java.io.IOException;
import java.lang.reflect.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import connect.DBConnect;
import model.Cauhoi;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/KiemTraTungCau")
public class KiemTraTungCau extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public KiemTraTungCau() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Connection c = DBConnect.getConnection();

		Integer SoCauHoi = (Integer) request.getServletContext().getAttribute("SoCauHoi");
		//
		ArrayList<Cauhoi> entries = new ArrayList<Cauhoi>(SoCauHoi);
		entries = (ArrayList<Cauhoi>) request.getServletContext().getAttribute("entries");
		//
		String Phut = request.getParameter("m");
		String Giay = request.getParameter("s");
		String Time = Phut + Giay;
		//
		int diem = 0;
		//
		for (int i = 0; i < SoCauHoi; i++) {
			String TraLoi = request.getParameter("c" + (i + 1));
			String Check = entries.get(i).getDapan();
			if (TraLoi != null && TraLoi.equals(Check)) {
				diem++;
			}
		}
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy ");
		LocalDateTime now = LocalDateTime.now();
		
		request.getServletContext().setAttribute("date", dtf.format(now));
		//
		
		request.getServletContext().setAttribute("Diem", diem);
		RequestDispatcher rd = request.getRequestDispatcher("/KetQuaThi.jsp");
		rd.forward(request, response);
	}

}
