package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoginDAOSv;


@WebServlet("/LoginAd")
public class LoginAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginAd() {
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
		if(LoginDAOSv.validate(n, p)){  
	        RequestDispatcher rd=request.getRequestDispatcher("/Admin.jsp");  
	        rd.forward(request,response);  
	    }  
	   else{  
		    
	        RequestDispatcher rd=request.getRequestDispatcher("/dangNhaploiAd.jsp");  
	        rd.include(request,response);  
	    }  
	}

}
