package model;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.StringTokenizer;

import dao.UserDAOImpl;

public class Course {
	private int courseID;
	private String courseCode;
	private String courseName;
	private String description;
	private int courseType;
	private Date startDate;
	private Date endDate;
	private int trainerID;
	private String trainerCode;
	private String trainerName;
	private long quantity;
	private String actor;
	private float fee;
	private int city;
	private int town;
	private String address;
	
	private int status;
	
	public Course(String courseCode, String courseName, String description, int courseType, Date startDate,
			Date endDate, int trainerID, String trainerCode, String trainerName, long quantity, String actor, float fee,
			int city, int town, String address) {
		super();
		this.courseCode = courseCode;
		this.courseName = courseName;
		this.description = description;
		this.courseType = courseType;
		this.startDate = startDate;
		this.endDate = endDate;
		this.trainerID = trainerID;
		this.trainerCode = trainerCode;
		this.trainerName = trainerName;
		this.quantity = quantity;
		this.actor = actor;
		this.fee = fee;
		this.city = city;
		this.town = town;
		this.address = address;
	}

	public Course() {}

	public int getCourseID() {
		return courseID;
	}
	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getTrainerCode() {
		return trainerCode;
	}
	public void setTrainerCode(String trainerCode) {
		this.trainerCode = trainerCode;
	}
	public String getTrainerName() {
		return trainerName;
	}
	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}
	
	
	@Override
	public String toString() {
		return "Course [courseID=" + courseID + ", courseCode=" + courseCode + ", courseName=" + courseName
				+ ", description=" + description + ", courseType=" + courseType + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", trainerID=" + trainerID + ", trainerCode=" + trainerCode
				+ ", trainerName=" + trainerName + ", quantity=" + quantity + ", actor=" + actor + ", fee=" + fee
				+ ", city=" + city + ", town=" + town + ", address=" + address + ", status=" + status + "]";
	}

	public int getCourseType() {
		return courseType;
	}

	public void setCourseType(int courseType) {
		this.courseType = courseType;
	}

	public int getTrainerID() {
		return trainerID;
	}
	public void setTrainerID(int id) {
		this.trainerID = id;
	}
	public long getQuantity() {
		return quantity;
	}

	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public float getFee() {
		return fee;
	}

	public void setFee(float fee) {
		this.fee = fee;
	}

	public int getCity() {
		return city;
	}

	public void setCity(int city) {
		this.city = city;
	}

	public int getTown() {
		return town;
	}

	public void setTown(int town) {
		this.town = town;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public static void main(String[] args) {
	}
}
