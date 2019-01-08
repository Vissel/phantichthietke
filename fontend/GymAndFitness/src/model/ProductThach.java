package model;

public class ProductThach {
	private int productID;
	private String productCode;
	private String productName;
	private double price;
	private String url;
	private String producer;
	private String description;
	private int quantity;
	private int status;
	private int type;
	public ProductThach() {}
	
	public ProductThach(String productCode, String productName, double price, String url, String producer,
			String description, int quantity, int type) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.price = price;
		this.url = url;
		this.producer = producer;
		this.description = description;
		this.quantity = quantity;
		this.type = type;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
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
		return "Product [productID=" + productID + ", productCode=" + productCode + ", productName=" + productName
				+ ", price=" + price + ", url=" + url + ", producer=" + producer + ", description=" + description
				+ ", quantity=" + quantity + ", status=" + status + ", type=" + type + "]";
	}
	
	
}
