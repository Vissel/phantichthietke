package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Schedule {
private int scheduleID;
private String scheduleCode;
private String scheduleName;
private String description;
private Date startDate;
private Date endDate;
private String scheduleEvalute;
private int status;
private List<ScheduleDetail> list;
private int count,sum = 24,dayOff;

public Schedule() {
	list = new ArrayList<ScheduleDetail>();
}

public Schedule(String scheduleCode, String scheduleName, String description, Date startDate, Date endDate,
		String scheduleEvalute) {
	super();
	this.scheduleCode = scheduleCode;
	this.scheduleName = scheduleName;
	this.description = description;
	this.startDate = startDate;
	this.endDate = endDate;
	this.scheduleEvalute = scheduleEvalute;
	list = new ArrayList<ScheduleDetail>();
}

public int getCount() { // gia tri tra ve, = so ngay da tap
	return count;
}
public void setCount(int count) {
	this.count = count;
}

public int getSum() {//tong so ngay tap
	return sum;
}

public void setSum(int sum) {
	this.sum = sum;
}

public int getDayOff() {
	return dayOff;
}

public void setDayOff(int dayOff) {
	this.dayOff = dayOff;
}

public int getScheduleID() {
	return scheduleID;
}
public void setScheduleID(int scheduleID) {
	this.scheduleID = scheduleID;
}
public String getScheduleCode() {
	return scheduleCode;
}
public void setScheduleCode(String scheduleCode) {
	this.scheduleCode = scheduleCode;
}
public String getScheduleName() {
	return scheduleName;
}
public void setScheduleName(String scheduleName) {
	this.scheduleName = scheduleName;
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
public String getScheduleEvalute() {
	return scheduleEvalute;
}
public void setScheduleEvalute(String scheduleEvalute) {
	this.scheduleEvalute = scheduleEvalute;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
@Override
public String toString() {
	return "sum= "+sum+"\tcount= "+count+"\tremain= "+ (sum-count);
}

}
