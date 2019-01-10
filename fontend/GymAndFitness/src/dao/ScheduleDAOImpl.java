package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Product;
import model.Schedule;
import model.Users;

public class ScheduleDAOImpl implements ScheduleDAO{
private static Connection connect;
	public static void main(String[] args) {
		int month = 1; int year = 2018;
		ScheduleDAOImpl dao = new ScheduleDAOImpl();
		List<Users> list = dao.getSchedule(month, year);
		for(Users u : list) System.out.println(u.toString());

	}

	@Override
	public List<Users> getSchedule(int month, int year) {
		List<Users> list = new ArrayList<>();
		connect = ConnectDB.getConnection();
		String sql = "SELECT u.USERS_ID, u.USERS_CODE, u.USERS_NAME, COUNT(u.USERS_ID)\r\n" + 
				"FROM (USERS u INNER JOIN SCHEDULE s ON u.SCHEDULE_ID=s.SCHEDULE_ID) INNER JOIN DETAIL_SCHEDULE d ON s.SCHEDULE_ID=d.SCHEDULE_ID\r\n" + 
				"WHERE d.MONTH = ? AND d.YEAR=?\r\n" + 
				"GROUP BY u.USERS_ID, u.USERS_CODE, u.USERS_NAME";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			prepared.setInt(1, month);
			prepared.setInt(2, year);
			ResultSet rs = prepared.executeQuery();
			Users u ;
			while(rs.next()) {
				u = new Users();
				u.setUserID(rs.getInt(1));
				u.setUserCode(rs.getString(2));
				u.setName(rs.getString(3));
				u.getSchedule().setCount(rs.getInt(4));
				u.getSchedule().setDayOff(this.dayOff(month, year,rs.getInt(1))); // tinh so ngay nghi
				list.add(u);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	//tinh so ngay nghi
	@Override
	public int dayOff(int month, int year, int userID) {
		int result = 0;
		connect = ConnectDB.getConnection();
		String sql = "SELECT u.USERS_ID, u.USERS_CODE, u.USERS_NAME, d.STATUS,COUNT(d.STATUS)\r\n" + 
				"				FROM (USERS u INNER JOIN SCHEDULE s ON u.SCHEDULE_ID=s.SCHEDULE_ID) INNER JOIN DETAIL_SCHEDULE d ON s.SCHEDULE_ID=d.SCHEDULE_ID\r\n" + 
				"				WHERE d.MONTH = ? AND d.YEAR= ?\r\n" + 
				"				GROUP BY u.USERS_ID, u.USERS_CODE, u.USERS_NAME, d.STATUS\r\n" + 
				"				HAVING d.STATUS = 0 AND u.USERS_ID = ?";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			prepared.setInt(1, month);
			prepared.setInt(2, year);
			prepared.setInt(3, userID);
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				result = rs.getInt(5); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	

}
