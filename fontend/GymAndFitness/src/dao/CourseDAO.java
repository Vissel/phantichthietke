package dao;

import java.util.List;

import model.Course;

public interface CourseDAO {
List<Course> listCourse(); 
public Course getOneCourse(int courseID);

void addCourse(Course course);
void updateCourse(Course course,int courseID);
void deleteCourse(int courseID);
List<Course> filterCourse(int typeCourse);
}
