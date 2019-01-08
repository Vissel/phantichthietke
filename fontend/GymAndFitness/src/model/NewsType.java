package model;

public class NewsType {
	private int idType;
	private String nameNews;
	public NewsType(int idType, String nameNews) {
		super();
		this.idType = idType;
		this.nameNews = nameNews;
	}
	public NewsType() {}
	public int getIdType() {
		return idType;
	}
	public void setIdType(int idType) {
		this.idType = idType;
	}
	public String getNameNews() {
		return nameNews;
	}
	public void setNameNews(String nameNews) {
		this.nameNews = nameNews;
	}
	
}
