package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.City;
import model.CourseType;
import model.Month;
import model.NewsType;
import model.Role;
import model.Town;
import model.Users;
import model.Year;

public class ConfigureDAOImpl implements ConfigureDAO{
	private static Connection connect;
	public static void main(String[] args) {
		ConfigureDAOImpl configure = new ConfigureDAOImpl();
//		System.out.println(configure.getCityTown(1, 1));
		List<Users> list = configure.getAllTrainer();
		for(Users t : list) System.out.println(t.toString());
	}
	@Override
	public String getCityTown(int cityID, int townID) {
		String result = "";
		connect = ConnectDB.getConnection();
		String sql = "SELECT c.CITY_NAME,t.TOWN_NAME\r\n" + 
				"FROM (MAP_CITY_TOWN m INNER JOIN CITY c ON m.CITY_ID=c.CITY_ID) INNER JOIN TOWN t ON m.TOWN_ID=t.TOWN_ID\r\n" + 
				"WHERE m.CITY_ID=? AND m.TOWN_ID=?";
		try {
			PreparedStatement prepared=  connect.prepareStatement(sql);
			prepared.setInt(1, cityID);
			prepared.setInt(2, townID);
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				result = rs.getString(1) + "," + rs.getString(2);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	@Override
	public List<City> listCity() {
		List<City> listCity = new ArrayList<>();
		connect = ConnectDB.getConnection();
		String sql = "SELECT * FROM CITY";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			City city ;
			while(rs.next()) {
				city = new City();
				city.setCityID(rs.getInt(1));
				city.setCityCode(rs.getString(2));
				city.setCityName(rs.getString(3));
				listCity.add(city);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listCity;
	}
	@Override
	public List<Town> listTown() {
		List<Town> listTown = new ArrayList<>();
		connect = ConnectDB.getConnection();
		String sql = "SELECT * FROM TOWN";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			Town town ;
			while(rs.next()) {
				town = new Town();
				town.setTownID(rs.getInt(1));
				town.setTownCode(rs.getString(2));
				town.setTownName(rs.getString(3));
				listTown.add(town);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listTown;
	}
	//chua xai
	@Override
	public List<Role> getAllRole() {
		List<Role> listRole = new ArrayList<>();
		connect = ConnectDB.getConnection();
		String sql = "SELECT * FROM ROLE";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			Role role ;
			while(rs.next()) {
				role = new Role();
				role.setRoleID(rs.getInt(1));
				role.setRoleCode(rs.getString(2));
				role.setRoleName(rs.getString(3));
				role.setDescription(rs.getString(4));
				listRole.add(role);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listRole;
	}
	@Override
	public List<CourseType> getAllCourseType() {
		List<CourseType> listCourseType = new ArrayList<>();
		connect = ConnectDB.getConnection();
		String sql = "SELECT * FROM CONFIG_COURSE";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			CourseType type ;
			while(rs.next()) {
				type= new CourseType();
				type.setIdType(rs.getInt(1));
				type.setNameCourse(rs.getString(2));
				listCourseType.add(type);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listCourseType;
	}
	@Override
	public List<Users> getAllTrainer() {
		List<Users> listTrainer = new ArrayList<>();
		connect = ConnectDB.getConnection();
		String sql = "SELECT USERS_ID,USERS_CODE,USERS_NAME\r\n" + 
				"FROM USERS\r\n" + 
				"WHERE USERS_CODE LIKE 'HL%'";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			Users trainer ;
			while(rs.next()) {
				trainer = new Users();
				trainer.setUserID(rs.getInt(1));
				trainer.setUserCode(rs.getString(2));
				trainer.setName(rs.getString(3));
				listTrainer.add(trainer);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listTrainer;
	}
	@Override
	public List<NewsType> listNewsType() {
		List<NewsType> listType = new ArrayList<>();
		connect = ConnectDB.getConnection();
		String sql = "SELECT * FROM CONFIG_NEWS";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			NewsType type;
			while(rs.next()) {
				type = new NewsType();
				type.setIdType(rs.getInt(1));
				type.setNameNews(rs.getString(2));
				listType.add(type);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listType;
	}
	@Override
	public List<Year> listYear() {
		List<Year> listYear = new ArrayList<>();
		connect = ConnectDB.getConnection();
		try {
			PreparedStatement prepared = connect.prepareStatement("SELECT * FROM CONFIG_YEAR");
			Year year ;
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				year = new Year(rs.getInt(1), rs.getInt(2));
				listYear.add(year);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listYear;
	}
	@Override
	public List<Month> listMonth() {
		List<Month> listMonth = new ArrayList<>();
		connect = ConnectDB.getConnection();
		try {
			PreparedStatement prepared = connect.prepareStatement("SELECT * FROM CONFIG_MONTH");
			Month month ;
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				month = new Month(rs.getInt(1), rs.getInt(2));
				listMonth.add(month);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listMonth;
	}

	

}
