package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Course;

public class CourseDAOImpl implements CourseDAO{
	private static Connection connection;
	
	public static void main(String[] args) {
		CourseDAOImpl dao = new CourseDAOImpl();
//		List<Course> l = dao.listCourse();
//		for(Course c : l) System.out.println(c.toString());
//		dao.addCourse(new Course("DANCE001","DANCE","",2,new Date(2018, 01, 01),new Date(System.currentTimeMillis())
//				,6,"","",25,"JUNIOR",3200000,"TPHCM","THỦ ĐỨC","P201"));
//		System.out.println(dao.getOneCourse(2).toString());
		dao.updateCourse(new Course("DANCE001","DANCE","",2,new Date(2018, 01, 01),new Date(System.currentTimeMillis())
				,6,"","",25,"JUNIOR",3200000,1,5,"P201"), 7);
	}

	@Override
	public List<Course> listCourse() {
		List<Course> listCourse = new ArrayList<Course>();
		Course course ;
		connection = ConnectDB.getConnection();
		String sql = "SELECT c.COURSE_ID, c.COURSE_CODE, c.COURSE_NAME,c.COURSE_TYPE,c.START_DATE,c.END_DATE,c.TRAINER_ID,c.QUANLITY,c.FEE,u.USERS_NAME\r\n" + 
				"FROM COURSE c LEFT JOIN USERS u ON c.TRAINER_ID = u.USERS_ID";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				course = new Course();
				course.setCourseID(rs.getInt(1));
				course.setCourseCode(rs.getString(2));
				course.setCourseName(rs.getString(3));
				course.setCourseType(rs.getInt(4));
				course.setStartDate(rs.getDate(5));
				course.setEndDate(rs.getDate(6));
				course.setTrainerID(rs.getInt(7));
				course.setQuantity(rs.getLong(8));
				course.setFee(rs.getFloat(9));
				course.setTrainerName(rs.getString(10));
				listCourse.add(course);
			}
			rs.close();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listCourse;
	}

	@Override
	public void addCourse(Course course) {
		connection = ConnectDB.getConnection();
		
		String sql = "INSERT INTO COURSE(COURSE_CODE,COURSE_NAME,COURSE_DESCRIPTION,COURSE_TYPE,START_DATE,END_DATE,TRAINER_ID,QUANLITY,ACTOR,FEE,CITY,TOWN,ADDRESS)\r\n" + 
				"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, course.getCourseCode());
			prepared.setString(2, course.getCourseName());
			prepared.setString(3, course.getDescription());
			prepared.setInt(4, course.getCourseType());
			prepared.setDate(5, course.getStartDate());
			prepared.setDate(6, course.getEndDate());
			prepared.setInt(7, course.getTrainerID());
			prepared.setLong(8, course.getQuantity());
			prepared.setString(9, course.getActor());
			prepared.setFloat(10, course.getFee());
			prepared.setInt(11, course.getCity());
			prepared.setInt(12, course.getTown());
			prepared.setString(13, course.getAddress());
			prepared.executeUpdate();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public Course getOneCourse(int courseID) {
		Course course = new Course();
		connection = ConnectDB.getConnection();
		String sql = "SELECT * FROM COURSE\r\n" + 
				"WHERE COURSE_ID = ?";
		PreparedStatement prepared;
		try {
			prepared = connection.prepareStatement(sql);
			prepared.setInt(1, courseID);
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				course.setCourseID(rs.getInt(1));
				course.setCourseCode(rs.getString(2));
				course.setCourseName(rs.getString(3));
				course.setDescription(rs.getString(4));
				course.setCourseType(rs.getInt(5));
				course.setStartDate(rs.getDate(6));
				course.setEndDate(rs.getDate(7));
				course.setTrainerID(rs.getInt(8));
				course.setQuantity(rs.getLong(9));
				course.setActor(rs.getString(10));
				course.setFee(rs.getFloat(11));
				course.setCity(rs.getInt(12));
				course.setTown(rs.getInt(13));
				course.setAddress(rs.getString(14));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return course;
	}

	@Override
	public void updateCourse(Course course, int courseID) {
		connection = ConnectDB.getConnection();
		String sql = "UPDATE COURSE "
				+ "SET COURSE_CODE=?,COURSE_NAME=?,COURSE_DESCRIPTION=?,COURSE_TYPE=?,START_DATE=?,END_DATE=?,TRAINER_ID=?,QUANLITY=?,ACTOR=?,FEE=?,CITY=?,TOWN=?,ADDRESS=? "
				+ "WHERE COURSE_ID = ?";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, course.getCourseCode());
			prepared.setString(2, course.getCourseName());
			prepared.setString(3, course.getDescription());
			prepared.setInt(4, course.getCourseType());
			prepared.setDate(5, course.getStartDate());
			prepared.setDate(6, course.getEndDate());
			prepared.setInt(7, course.getTrainerID());
			prepared.setLong(8, course.getQuantity());
			prepared.setString(9, course.getActor());
			prepared.setFloat(10, course.getFee());
			prepared.setInt(11, course.getCity());
			prepared.setInt(12, course.getTown());
			prepared.setString(13, course.getAddress());
			prepared.setInt(14, courseID);
			prepared.executeUpdate();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void deleteCourse(int courseID) {
		connection= ConnectDB.getConnection();
		String sql = "DELETE FROM COURSE\r\n" + 
				"WHERE COURSE_ID = ?";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setInt(1, courseID);
			prepared.executeUpdate();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Course> filterCourse(int typeCourse) {
		List<Course> filter = new ArrayList<>();
		connection = ConnectDB.getConnection();
		String sql = "SELECT * FROM COURSE\r\n" + 
				"WHERE COURSE_TYPE = ?";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setInt(1, typeCourse);
			ResultSet rs = prepared.executeQuery();
			Course course;
			while(rs.next()) {
				course = new Course();
				course.setCourseID(rs.getInt(1));
				course.setCourseCode(rs.getString(2));
				course.setCourseName(rs.getString(3));
				course.setDescription(rs.getString(4));
				course.setCourseType(rs.getInt(5));
				course.setStartDate(rs.getDate(6));
				course.setEndDate(rs.getDate(7));
				course.setTrainerID(rs.getInt(8));
				course.setQuantity(rs.getLong(9));
				course.setActor(rs.getString(10));
				course.setFee(rs.getFloat(11));
				course.setCity(rs.getInt(12));
				course.setTown(rs.getInt(13));
				course.setAddress(rs.getString(14));
				filter.add(course);
			}
			prepared.close();
			rs.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return filter;
	}
	
}
