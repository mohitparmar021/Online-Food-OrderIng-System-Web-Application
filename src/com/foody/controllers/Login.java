package com.foody.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foody.dao.DBConnection;
import com.foody.dao.FoodyDao;
import com.foody.pojoclasses.LoginBean;

/**
 * Servlet implementation class Login
 */
@WebServlet("/loginform")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		LoginBean login=new LoginBean();
		login.setUsername(username);
		login.setPassword(password);
		String check=null;
		try
		{
			FoodyDao fd=new FoodyDao();
			check=fd.validateLogin(login);
		
			
			  if(check.equals("valid-user"))
			  {
				      HttpSession session=request.getSession();
					  session.setAttribute("username", username);
				      request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
			  }
			 else
			  {
				  request.getRequestDispatcher("error-page.jsp").forward(request, response);
			  }
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
