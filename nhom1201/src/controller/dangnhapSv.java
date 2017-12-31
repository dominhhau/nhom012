package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.dangnhapSvDAO;




@WebServlet("/dangnhapSv")
public class dangnhapSv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public dangnhapSv() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8"); 
		String n=request.getParameter("user");  
		String p=request.getParameter("pass"); 
		   
		   if(dangnhapSvDAO.validate(n, p)){
			   	request.getServletContext().setAttribute("TK_Sinhvien", n);
		        RequestDispatcher rd=request.getRequestDispatcher("/Sinhvien.jsp");  
		        rd.forward(request,response);  
		    }  
		   else{  
			   request.getRequestDispatcher("/dangNhaploiSv.jsp").forward(request, response);
		        
		    }  
	}

}
