package model;

public class ScheduleDetail {
private int detailID;
private int scheduleID;
private int week;
private int day;
private int month;
private int year;
private String description;
private int status;

public ScheduleDetail() {}

public ScheduleDetail(int scheduleID, int week, int day, int month, int year, String description) {
	super();
	this.scheduleID = scheduleID;
	this.week = week;
	this.day = day;
	this.month = month;
	this.year = year;
	this.description = description;
}
public int getDetailID() {
	return detailID;
}
public void setDetailID(int detailID) {
	this.detailID = detailID;
}
public int getScheduleID() {
	return scheduleID;
}
public void setScheduleID(int scheduleID) {
	this.scheduleID = scheduleID;
}
public int getWeek() {
	return week;
}
public void setWeek(int week) {
	this.week = week;
}
public int getDay() {
	return day;
}
public void setDay(int day) {
	this.day = day;
}
public int getMonth() {
	return month;
}
public void setMonth(int month) {
	this.month = month;
}
public int getYear() {
	return year;
}
public void setYear(int year) {
	this.year = year;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}

}
