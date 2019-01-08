package model;

public class Month {
private int monthID;
private int monthName;
public Month(int monthID, int monthName) {
	super();
	this.monthID = monthID;
	this.monthName = monthName;
}
public int getMonthID() {
	return monthID;
}
public void setMonthID(int monthID) {
	this.monthID = monthID;
}
public int getMonthName() {
	return monthName;
}
public void setMonthName(int monthName) {
	this.monthName = monthName;
}

}
