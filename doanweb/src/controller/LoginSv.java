package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoginDAOSv;


@WebServlet("/LoginSv")
public class LoginSv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginSv() {
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
		   
		    
		   
		   
		   if(LoginDAOSv.validate(n, p)){  
		        RequestDispatcher rd=request.getRequestDispatcher("/Sinhvien.jsp");  
		        rd.forward(request,response);  
		    }  
		   else{  
			    
		        RequestDispatcher rd=request.getRequestDispatcher("/dangNhaploi.jsp");  
		        rd.include(request,response);  
		    }  
	}

}
