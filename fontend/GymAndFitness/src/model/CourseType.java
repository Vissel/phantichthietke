package model;

public class CourseType {
private int idType;
private String nameCourse;
public CourseType(int idType, String nameCourse) {
	super();
	this.idType = idType;
	this.nameCourse = nameCourse;
}
public CourseType() {}
public int getIdType() {
	return idType;
}
public void setIdType(int idType) {
	this.idType = idType;
}
public String getNameCourse() {
	return nameCourse;
}
public void setNameCourse(String nameCourse) {
	this.nameCourse = nameCourse;
}
@Override
public String toString() {
	return "CourseType [idType=" + idType + ", nameCourse=" + nameCourse + "]";
}

}
