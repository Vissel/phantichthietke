package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Account;

public class LoginDAOImpl implements LoginDAO{
private static Connection connect;
	public static void main(String[] args) {
		LoginDAOImpl dao = new LoginDAOImpl();
		System.out.println(dao.checkLogin(new Account("admin", "admin")));
	}

	@Override
	public boolean checkLogin(Account account) {
		connect= ConnectDB.getConnection();
		String sql = "SELECT * FROM ACCOUNT\r\n" + 
				"WHERE USERNAME = ? AND PASSWORD = ?";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			prepared.setString(1, account.getUsername());
			prepared.setString(2, account.getPassword());
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
