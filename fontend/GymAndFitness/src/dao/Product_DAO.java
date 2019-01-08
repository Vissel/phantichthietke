package dao;

import java.util.ArrayList;

import model.Product;

public class Product_DAO {
	
	ArrayList<Product> list= new ArrayList<>();

	public Product_DAO() {
		
	}

	public ArrayList<Product> getList() {
		list.removeAll(list);
		list.add(new Product(12, "Giày phụ kiện", "Siêu chất","" ,"Jappan", "800.000vnd"));
		list.add(new Product(12, "Giày phụ kiện", "Siêu chất", "","Jappan", "800.000vnd"));
		list.add(new Product(12, "Giày phụ kiện", "Siêu chất","", "Jappan", "800.000vnd"));
		list.add(new Product(12, "Giày phụ kiện", "Siêu chất","", "Jappan", "800.000vnd"));
		
		
		
		return list;
	}

	public void setList(ArrayList<Product> list) {
		this.list = list;
	}
	
}
