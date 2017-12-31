package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.themCauHoiDAO;


@WebServlet("/themCauHoi")
public class themCauHoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public themCauHoi() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8"); 
		RequestDispatcher rd=request.getRequestDispatcher("/themCauHoi.jsp");  
        rd.include(request,response); 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8"); 

		String nhom=request.getParameter("nhom");
		String noidung=request.getParameter("noidung");
		String QA=request.getParameter("QA");
		String QB=request.getParameter("QB");
		String QC=request.getParameter("QC");
		String QD=request.getParameter("QD");
		String dapan=request.getParameter("dapan");
		
		if(themCauHoiDAO.ThemCauHoi(nhom, noidung, QA, QB, QC, QD, dapan))
		{
			request.getRequestDispatcher("DSCauhoiDAO").forward(request, response);
		}
		 
			
	}

}
