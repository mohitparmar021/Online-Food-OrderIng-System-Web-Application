package com.foody.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foody.dao.DBConnection;
import com.foody.dao.FoodyDao;
import com.foody.pojoclasses.AddOrder;

/**
 * Servlet implementation class ConfirmOrder
 */
@WebServlet("/confirmOrder")
public class ConfirmOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConfirmOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 
		String item = request.getParameter("orderName");
		String name = request.getParameter("userName");
		String email = request.getParameter("userEmail");
		String mobile = request.getParameter("mobile");
		String location = request.getParameter("location");
		String address = request.getParameter("userAddress");

		AddOrder addorder=new AddOrder();
		addorder.setUserName(name);
		addorder.setOrderName(item);
        addorder.setUserEmail(email);
        addorder.setMobile(mobile);
        addorder.setLocation(location);
        addorder.setUserAddress(address);
        
        FoodyDao foodydao=new FoodyDao();
      String check=null;
        try 
        {
		  check=foodydao.addOrderInf(addorder);
		  if(check.equals("inserted"))
		  {
			 request.getRequestDispatcher("order-confirm.jsp").forward(request, response);
		  }
		  else
		  {
			  request.getRequestDispatcher("error-page.jsp").forward(request, response);
		  }
		} catch (Exception e) 
        {
			System.out.println(e);
		}
        
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
