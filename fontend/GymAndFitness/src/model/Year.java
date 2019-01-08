package model;

public class Year {
private int yearID;
private int yearName;
public Year(int yearID, int yearName) {
	super();
	this.yearID = yearID;
	this.yearName = yearName;
}
public int getYearID() {
	return yearID;
}
public void setYearID(int yearID) {
	this.yearID = yearID;
}
public int getYearName() {
	return yearName;
}
public void setYearName(int yearName) {
	this.yearName = yearName;
}

}
