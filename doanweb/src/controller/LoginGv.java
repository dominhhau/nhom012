package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoginDAOgv;


@WebServlet("/LoginGv")
public class LoginGv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginGv() {
        super();


    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8"); 
		String n=request.getParameter("username");  
		String p=request.getParameter("password"); 
		if(LoginDAOgv.validate(n, p)){  
	        RequestDispatcher rd=request.getRequestDispatcher("/Giangvien.jsp");  
	        rd.forward(request,response);  
	    }  
	   else{  
		    
	        RequestDispatcher rd=request.getRequestDispatcher("/dangNhaploiGv.jsp");  
	        rd.include(request,response);  
	    }  
	}

}
