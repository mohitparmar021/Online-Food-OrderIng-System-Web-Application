package com.foody.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.foody.pojoclasses.AddMenuBean;
import com.foody.pojoclasses.AddOrder;
import com.foody.pojoclasses.LoginBean;
import com.foody.pojoclasses.UpdateMenuBean;

public class FoodyDao {

	public String addOrderInf(AddOrder addorder) throws ClassNotFoundException, SQLException {
		Connection con = DBConnection.getMyConnection();
		PreparedStatement ps = null;
		String query = "insert into order_info(username,item_name,email,mobile,location,address) values(?,?,?,?,?,?)";
		ps = con.prepareStatement(query);

		ps.setString(1, addorder.getUserName());
		ps.setString(2, addorder.getOrderName());
		ps.setString(3, addorder.getUserEmail());
		ps.setString(4, addorder.getMobile());
		ps.setString(5, addorder.getLocation());
		ps.setString(6, addorder.getUserAddress());

		int p = ps.executeUpdate();
		if (p > 0) {
			return "inserted";
		}

		return "not-inserted";
	}

	public String validateLogin(LoginBean loginbean) throws ClassNotFoundException, SQLException {

		String username = loginbean.getUsername();
		String password = loginbean.getPassword();

		String dbusername = "";
		String dbpassword = "";

		Connection con = DBConnection.getMyConnection();
		Statement stmt = con.createStatement();
		String query = "select * from admin_login_info where username='" + username + "';";
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()) {
			dbusername = rs.getString(2);
			dbpassword = rs.getString(3);

			if (username.equals(dbusername) && password.equals(dbpassword)) {

				return "valid-user";
			}

		}

		return "not-valid-user";
	}
	
	public String addBreakFastMenu(AddMenuBean addmenu ) throws ClassNotFoundException, SQLException {
		Connection con = DBConnection.getMyConnection();
		PreparedStatement ps = null;
		String query = "insert into breakfastmenu(item_name,price,time) values(?,?,?)";
		ps = con.prepareStatement(query);

		ps.setString(1, addmenu.getItemName());
		ps.setString(2, addmenu.getPrice());
		ps.setString(3, addmenu.getTime());
	

		int p = ps.executeUpdate();
		if (p > 0) {
			return "inserted";
		}

		return "not-inserted";
	}
	public String addLunchMenu(AddMenuBean addmenu ) throws ClassNotFoundException, SQLException {
		Connection con = DBConnection.getMyConnection();
		PreparedStatement ps = null;
		String query = "insert into lunchmenu(item_name,price,time) values(?,?,?)";
		ps = con.prepareStatement(query);

		ps.setString(1, addmenu.getItemName());
		ps.setString(2, addmenu.getPrice());
		ps.setString(3, addmenu.getTime());
	

		int p = ps.executeUpdate();
		if (p > 0) {
			return "inserted";
		}

		return "not-inserted";
	}
	public String addDinnerMenu(AddMenuBean addmenu ) throws ClassNotFoundException, SQLException {
		Connection con = DBConnection.getMyConnection();
		PreparedStatement ps = null;
		String query = "insert into dinnermenu(item_name,price,time) values(?,?,?)";
		ps = con.prepareStatement(query);

		ps.setString(1, addmenu.getItemName());
		ps.setString(2, addmenu.getPrice());
		ps.setString(3, addmenu.getTime());
	

		int p = ps.executeUpdate();
		if (p > 0) {
			return "inserted";
		}

		return "not-inserted";
	}
	
	public String updateBreakFastMenu(UpdateMenuBean addmenu ) throws ClassNotFoundException, SQLException {
	
		int id=addmenu.getItemId();
		String name=addmenu.getItemName();
		String price=addmenu.getPrice();
		String time=addmenu.getTime();
		
		Connection con = DBConnection.getMyConnection();
		Statement ps=con.createStatement();
		String query="update breakfastmenu set item_name='"+name+"', price='"+price+"',time='"+time+"' where srno='"+id+"' ;";
        int rs=ps.executeUpdate(query);
    
        if(rs>0)
		   {
			   return "updated";
		   }
		   else
		   {
			   return "not-updated";
		   }
	}
	public String updateLunchMenu(UpdateMenuBean addmenu ) throws ClassNotFoundException, SQLException {
		
		int id=addmenu.getItemId();
		String name=addmenu.getItemName();
		String price=addmenu.getPrice();
		String time=addmenu.getTime();
		
		Connection con = DBConnection.getMyConnection();
		Statement ps=con.createStatement();
		String query="update lunchmenu set item_name='"+name+"', price='"+price+"',time='"+time+"' where srno='"+id+"' ;";
        int rs=ps.executeUpdate(query);
    
        if(rs>0)
		   {
			   return "updated";
		   }
		   else
		   {
			   return "not-updated";
		   }
	}
	public String updateDinnerMenu(UpdateMenuBean addmenu ) throws ClassNotFoundException, SQLException {
		
		int id=addmenu.getItemId();
		String name=addmenu.getItemName();
		String price=addmenu.getPrice();
		String time=addmenu.getTime();
		
		Connection con = DBConnection.getMyConnection();
		Statement ps=con.createStatement();
		String query="update dinnermenu set item_name='"+name+"', price='"+price+"',time='"+time+"' where srno='"+id+"' ;";
        int rs=ps.executeUpdate(query);
    
        if(rs>0)
		   {
			   return "updated";
		   }
		   else
		   {
			   return "not-updated";
		   }
	}
	

}
