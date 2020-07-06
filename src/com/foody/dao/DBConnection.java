package com.foody.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getMyConnection() throws ClassNotFoundException, SQLException {

		Connection con = null;
		String url ="jdbc:mysql://localhost:3306/foody";
		String username = "root";
		String password = "mohit";

		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, username, password);
		return con;
	}
}
