package com.foody.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foody.dao.FoodyDao;
import com.foody.pojoclasses.AddMenuBean;

/**
 * Servlet implementation class AddDinnermenu
 */
@WebServlet("/addDinnerMenu")
public class AddDinnermenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDinnermenu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String item=request.getParameter("itemName");
		String price=request.getParameter("price");
		String time=request.getParameter("time");
		
		AddMenuBean addmenu=new AddMenuBean();
		addmenu.setItemName(item);
		addmenu.setPrice(price);
		addmenu.setTime(time);
		
		String check=null;
		FoodyDao fd=new FoodyDao();
	
			   try 
		        {
				  check=fd.addDinnerMenu(addmenu);
				  if(check.equals("inserted"))
				  {
					 request.getRequestDispatcher("menu-added.jsp").forward(request, response);
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
