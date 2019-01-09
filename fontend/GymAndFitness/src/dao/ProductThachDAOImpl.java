package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.ProductThach;

public class ProductThachDAOImpl implements ProductThachDAO{
private static Connection connect ;
	public static void main(String[] args) {
		ProductThachDAOImpl dao = new ProductThachDAOImpl();
//		dao.deleteProduct(15);
	}

	@Override
	public List<ProductThach> listProduct() {
		List<ProductThach> listProduct = new ArrayList<>();
		connect = ConnectDB.getConnection();
		String sql = "SELECT * FROM PRODUCT WHERE PRODUCT_STATUS = 1";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			ProductThach product ;
			while(rs.next()) {
				product = new ProductThach();
				product.setProductID(rs.getInt(1));
				product.setProductCode(rs.getString(2));
				product.setProductName(rs.getString(3));
				product.setPrice(rs.getDouble(4));
				product.setUrl(rs.getString(5));
				product.setProducer(rs.getString(6));
				product.setDescription(rs.getString(7));
				product.setQuantity(rs.getInt(8));
				listProduct.add(product);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listProduct;
	}

	@Override
	public void addProduct(ProductThach product) {
		connect = ConnectDB.getConnection();
		String sql = "INSERT INTO PRODUCT(PRODUCT_CODE,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_URL,PRODUCT_PRODUCER,PRODUCT_DESCRIPTION,PRODUCT_QUANTITY)\r\n" + 
				"VALUES (?,?,?,?,?,?,?)";
		PreparedStatement prepared;
		try {
			prepared = connect.prepareStatement(sql);
			prepared.setString(1, product.getProductCode());
			prepared.setString(2, product.getProductName());
			prepared.setDouble(3, product.getPrice());
			prepared.setString(4, product.getUrl());
			prepared.setString(5, product.getProducer());
			prepared.setString(6, product.getDescription());
			prepared.setInt(7, product.getQuantity());
			
			prepared.executeUpdate();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public ProductThach getOneProduct(int productID) {
		ProductThach product = new ProductThach();
		connect = ConnectDB.getConnection();
		String sql = "SELECT * FROM PRODUCT WHERE PRODUCT_ID = ? AND PRODUCT_STATUS = 1";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			prepared.setInt(1, productID);
			ResultSet rs = prepared.executeQuery();
			
			while(rs.next()) {
				product.setProductID(rs.getInt(1));
				product.setProductCode(rs.getString(2));
				product.setProductName(rs.getString(3));
				product.setPrice(rs.getDouble(4));
				product.setUrl(rs.getString(5));
				product.setProducer(rs.getString(6));
				product.setDescription(rs.getString(7));
				product.setQuantity(rs.getInt(8));
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product;
	}

	@Override
	public void editProduct(ProductThach product, int productID) {
		connect = ConnectDB.getConnection();
		String sql = "UPDATE PRODUCT\r\n" + 
				"SET PRODUCT_CODE =?,PRODUCT_NAME = ?, PRODUCT_PRICE=?, PRODUCT_URL=?, PRODUCT_PRODUCER=?, PRODUCT_DESCRIPTION=?, PRODUCT_QUANTITY=? \r\n" + 
				"WHERE PRODUCT_ID = ?";
		PreparedStatement prepared;
		try {
			prepared = connect.prepareStatement(sql);
			prepared.setString(1, product.getProductCode());
			prepared.setString(2, product.getProductName());
			prepared.setDouble(3, product.getPrice());
			prepared.setString(4, product.getUrl());
			prepared.setString(5, product.getProducer());
			prepared.setString(6, product.getDescription());
			prepared.setInt(7, product.getQuantity());
			prepared.setInt(8, productID);
			
			prepared.executeUpdate();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteProduct(int productID) {
		connect = ConnectDB.getConnection();
		String sql = "UPDATE PRODUCT\r\n" + 
				"SET PRODUCT_STATUS = 0\r\n" + 
				"WHERE PRODUCT_ID = ?";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			prepared.setInt(1, productID);
			
			prepared.executeUpdate();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
