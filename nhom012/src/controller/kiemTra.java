package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.kiemTraThoiGian;


@WebServlet("/kiemTra")
public class kiemTra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public kiemTra() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(kiemTraThoiGian.validate()) {
			System.out.println("dung");
		}
		else {
			System.out.println("sai");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);	
	}

}
