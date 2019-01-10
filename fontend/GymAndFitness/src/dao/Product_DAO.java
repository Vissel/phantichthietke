package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Product;

public class Product_DAO {

	static ArrayList<Product> list = new ArrayList<>();
	ArrayList<Product> shopping_cart = new ArrayList<Product>();

	private static Connection connection;

	public Product_DAO() {

	}

	public ArrayList<Product> getList() {
		Connection connect= (Connection) ConnectDB.getConnection();
		String sql="select * from PRODUCT";
		try {
			PreparedStatement prepar= connect.prepareStatement(sql);
			ResultSet rs= prepar.executeQuery();
			
			while(rs.next()) {
				Product product= new Product();
				product.setId(Integer.parseInt(rs.getString("PRODUCT_ID")));
				product.setCode(rs.getString("PRODUCT_CODE"));
				product.setName(rs.getString("PRODUCT_NAME"));
				product.setPrice(Integer.parseInt(rs.getString("PRODUCT_PRICE")));
				product.setUrl(rs.getString("PRODUCT_URL"));
				product.setProducer(rs.getString("PRODUCT_PRODUCER"));
				product.setDescription(rs.getString("PRODUCT_DESCRIPTION"));
				product.setQuantity(Integer.parseInt(rs.getString("PRODUCT_Quantity")));
				product.setStatus(Integer.parseInt(rs.getString("PRODUCT_STATUS")));
				product.setType(Integer.parseInt(rs.getString("PRODUCT_Type")));
				
				list.add(product);
				
				
			}
			connect.close();
		} catch (Exception e) {
			System.out.println("Err");
			e.printStackTrace();
		}
		return list;
	}

	public void setList(ArrayList<Product> list) {
		this.list = list;
	}

	public ArrayList<Product> getShopping_cart() {
		return shopping_cart;
	}

	public void setShopping_cart(ArrayList<Product> shopping_cart) {
		this.shopping_cart = shopping_cart;
	}

	public ResultSet loadProduct() throws Exception {
		ConnectDB connect = new ConnectDB();
		connection = connect.getConnection();
		PreparedStatement prepared = connection.prepareStatement("select * from PRODUCT");
		ResultSet rs = prepared.executeQuery();
		return rs;
		
	}
	public ResultSet searchForId(String id) throws Exception {
		ConnectDB connect = new ConnectDB();
		connection = connect.getConnection();
		PreparedStatement prepared = connection.prepareStatement("select * from PRODUCT where PRODUCT_ID= ?");
		prepared.setInt(1, Integer.parseInt(id));
		ResultSet rs = prepared.executeQuery();
		return rs;
		
	}
	public Product getProduct(int id) {
		ConnectDB connect = new ConnectDB();
		connection = connect.getConnection();
		String sql = "SELECT * FROM PRODUCT WHERE PRODUCT_ID='"+ id +"'";
		
		Product product= new Product();
		try {
			PreparedStatement pre= connection.prepareStatement(sql);
			ResultSet rs= pre.executeQuery();
			while(rs.next()) {
				
				product.setId(Integer.parseInt(rs.getString("PRODUCT_ID")));
				product.setCode(rs.getString("PRODUCT_CODE"));
				product.setName(rs.getString("PRODUCT_NAME"));
				product.setPrice(Integer.parseInt(rs.getString("PRODUCT_PRICE")));
				product.setUrl(rs.getString("PRODUCT_URL"));
				product.setProducer(rs.getString("PRODUCT_PRODUCER"));
				product.setDescription(rs.getString("PRODUCT_DESCRIPTION"));
				product.setQuantity(Integer.parseInt(rs.getString("PRODUCT_Quantity")));
				product.setStatus(Integer.parseInt(rs.getString("PRODUCT_STATUS")));
				product.setType(Integer.parseInt(rs.getString("PRODUCT_Type")));
			}
			connection.close();
		} catch (Exception e) {
			System.out.println("Error");
			e.printStackTrace();
		}
		return product;
	}
	
	public boolean addShoppingCart(String id) throws Exception {
		boolean check= checkProductInShoppingCart(id);
		for (int i = 0; i < list.size(); i++) {
			String id1= list.get(i).getId()+"";
			System.out.println(id1);
			if(id1.equals(id)&&check==false) {
			shopping_cart.add(list.get(i));
			
			return true;
			
		}
		}
		if(check==true) {
			int index=shopping_cart.size();
			for (int i = 0; i < index; i++) {
				 String id1= shopping_cart.get(i).getId()+"";
			
				if(id1.equals(id)) {
					shopping_cart.get(i).setQuantity(shopping_cart.get(i).getQuantity()+1);
					shopping_cart.get(i).setPrice(shopping_cart.get(i).getPrice()+shopping_cart.get(i).getPrice());
					index=i;
				}
				
			}
		}
		return false;
		
	}

	 public boolean checkProductInShoppingCart(String id) {
	
	 for (int i = 0; i < shopping_cart.size(); i++) {
	 String id1= shopping_cart.get(i).getId()+"";
	 if(id1.equals(id)) {
	 return true;
	 }
	
	
	 }
	 return false;
	
	 }
	public static void main(String[] args) throws Exception {
		Product_DAO dao = new Product_DAO();
		System.out.println(dao.addShoppingCart("2"));
		
		
	}
}
