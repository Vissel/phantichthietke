package model;

import java.sql.Date;

import dao.NewsDAOImpl;

public class News {
private int newsID;
private String newsCode;
private String newsName;
private String description;
private String img;
private int newsType;
private int createrID;
private Date dateCreate;
private Date datePublish;
private int state;
public News() {}

public News(String newsCode, String newsName, String description, String img, int newsType, int createrID,
		Date dateCreate, Date datePublish) {
	super();
	this.newsCode = newsCode;
	this.newsName = newsName;
	this.description = description;
	this.img = img;
	this.newsType = newsType;
	this.createrID = createrID;
	this.dateCreate = dateCreate;
	this.datePublish = datePublish;
}
public String getCreaterName(int createrID2) {
	return  new NewsDAOImpl().getCreaterName(createrID2);
}
public int getNewsID() {
	return newsID;
}
public void setNewsID(int newsID) {
	this.newsID = newsID;
}
public String getNewsCode() {
	return newsCode;
}
public void setNewsCode(String newsCode) {
	this.newsCode = newsCode;
}
public String getNewsName() {
	return newsName;
}
public void setNewsName(String newsName) {
	this.newsName = newsName;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
public int getNewsType() {
	return newsType;
}
public void setNewsType(int newsType) {
	this.newsType = newsType;
}
public int getCreaterID() {
	return createrID;
}
public void setCreaterID(int createrID) {
	this.createrID = createrID;
}
public Date getDateCreate() {
	return dateCreate;
}
public void setDateCreate(Date dateCreate) {
	this.dateCreate = dateCreate;
}
public Date getDatePublish() {
	return datePublish;
}
public void setDatePublish(Date datePublish) {
	this.datePublish = datePublish;
}
public int getState() {
	return state;
}
public void setState(int state) {
	this.state = state;
}

@Override
public String toString() {
	return "News [newsID=" + newsID + ", newsCode=" + newsCode + ", newsName=" + newsName + ", description="
			+ description + ", img=" + img + ", newsType=" + newsType + ", createrID=" + createrID + ", dateCreate="
			+ dateCreate + ", datePublish=" + datePublish + ", state=" + state + "]";
}

}
