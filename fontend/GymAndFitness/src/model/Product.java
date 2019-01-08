package model;

public class Product {
	private int id;
	private String code;
	private String name;
	private int price;

	private String url;
	private String producer;
	private String description;

	private int quantity;
	private int status;
	private int type;
	

	public Product() {
		super();
	}


	public Product(int id, String code, String name, int price, String url, String producer, String description,
			int quantity, int status, int type) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.price = price;
		this.url = url;
		this.producer = producer;
		this.description = description;
		this.quantity = quantity;
		this.status = status;
		this.type = type;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
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


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public int getStatus() {
		return status;
	}


	public void setStatus(int status) {
		this.status = status;
	}


	public int getType() {
		return type;
	}


	public void setType(int type) {
		this.type = type;
	}


	@Override
	public String toString() {
		return "Product [id=" + id + ", code=" + code + ", name=" + name + ", price=" + price + ", url=" + url
				+ ", producer=" + producer + ", description=" + description + ", quantity=" + quantity + ", status="
				+ status + ", type=" + type + "]";
	}

	
}