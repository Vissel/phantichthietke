package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	public ConnectDB() {}
	public static Connection getConnection() {
		Connection connection =null;
		String driver =  "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://gymandfit.database.windows.net:1433;databaseName=gymandfit";
		String user = "gymandfit";
		String pass = "Ngothimylinh1998";
//		String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=PTTK-HTTT";
//		String user = "sa";
//		String pass = "thach";
	
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, pass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
	public static void main(String[] args) {
		if(getConnection() != null) System.out.println("connect successed");
		else System.out.println("connect failed");
	}

}
