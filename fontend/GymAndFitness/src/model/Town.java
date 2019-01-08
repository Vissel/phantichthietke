package model;

public class Town {
private int townID;
private String townCode;
private String townName;
public Town() {}
public int getTownID() {
	return townID;
}
public void setTownID(int townID) {
	this.townID = townID;
}
public String getTownCode() {
	return townCode;
}
public void setTownCode(String townCode) {
	this.townCode = townCode;
}
public String getTownName() {
	return townName;
}
public void setTownName(String townName) {
	this.townName = townName;
}
@Override
public String toString() {
	return "Town [townID=" + townID + ", townCode=" + townCode + ", townName=" + townName + "]";
}

}
