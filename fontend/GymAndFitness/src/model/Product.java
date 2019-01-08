package model;

public class Product {
	private int id;
	private String name;
	private String description;
	private String url;
	private String producer;
	private String price;
	public Product() {
		super();
	}
	public Product(int id, String name, String description, String url, String producer, String price) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.url = url;
		this.producer = producer;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", url=" + url + ", producer="
				+ producer + ", price=" + price + "]";
	}

	
}