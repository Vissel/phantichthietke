package model;

import java.util.ArrayList;
import java.util.List;

import dao.ConfigureDAO;
import dao.ConfigureDAOImpl;

public class City {
private int cityID;
private String cityCode;
private String cityName;
List<Town> listTown;
public City() {listTown = new ArrayList<Town>();}

public String getNameCityTown(int cityID2, int townID) {
	ConfigureDAO city = new ConfigureDAOImpl();
	return city.getCityTown(cityID2, townID);
}

public int getCityID() {
	return cityID;
}
public void setCityID(int cityID) {
	this.cityID = cityID;
}
public String getCityCode() {
	return cityCode;
}
public void setCityCode(String cityCode) {
	this.cityCode = cityCode;
}
public String getCityName() {
	return cityName;
}
public void setCityName(String cityName) {
	this.cityName = cityName;
}
@Override
public String toString() {
	return "City [cityID=" + cityID + ", cityCode=" + cityCode + ", cityName=" + cityName + ", listTown=" + listTown
			+ "]";
}


}
