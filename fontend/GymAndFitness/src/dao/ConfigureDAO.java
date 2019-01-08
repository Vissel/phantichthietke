package dao;

import java.util.List;

import model.City;
import model.CourseType;
import model.Month;
import model.NewsType;
import model.Role;
import model.Town;
import model.Users;
import model.Year;

public interface ConfigureDAO {
	List<City> listCity();
	List<Town> listTown();
	String getCityTown(int cityID, int townID);
	
	List<Role> getAllRole();
	List<CourseType> getAllCourseType();
	
	List<Users> getAllTrainer();
	
	List<NewsType> listNewsType();
	
	List<Year> listYear();
	List<Month> listMonth();
}
