package connect;

import java.sql.DriverManager;
import java.sql.SQLException;


import com.mysql.jdbc.Connection;

public class DBConnect {
	private final static String Driver = "com.mysql.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost/demoweb?verifyServerCertificate=false&useSSL=true";
	private final static String USERID = "root";
	private final static String PWD = "minhhau19081995";
	static Connection conn;
	public static String err; 
	
	public DBConnect() {
	
	}
	
	public static Connection getConnection() {
		conn = null;
		err = "";
		try {
			Class.forName(Driver);
		} catch (ClassNotFoundException e) {
			err = e.getMessage();
		}
		try {
			conn = (Connection) DriverManager.getConnection(URL, USERID, PWD);
		} catch (SQLException e) {
			err = e.getMessage();
		}
		
		return conn;
		}
	
	
	
	
	
}