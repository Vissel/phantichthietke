package dao;

import java.util.ArrayList;

import model.Product;

public class Cart_DAO {
	public static ArrayList<Product> list = new Product_DAO().getList();
	public static ArrayList<Product> shopping_cart = new ArrayList<Product>();

	public static ArrayList<Product> getList() {
		return list;
	}

	public static void setList(ArrayList<Product> list) {
		Cart_DAO.list = list;
	}

	public ArrayList<Product> getShopping_cart() {
		return shopping_cart;
	}

	public static void setShopping_cart(ArrayList<Product> shopping_cart) {
		Cart_DAO.shopping_cart = shopping_cart;
	}

	public boolean addShoppingCart(int id) {
		boolean check = checkProductInShoppingCart(id);
		for (int i = 0; i < list.size(); i++) {

			if (list.get(i).getId() == id && check == false) {
				shopping_cart.add(list.get(i));

				return true;

			}
		}
		if (check == true) {
			int index = shopping_cart.size();
			for (int i = 0; i < index; i++) {

				if (shopping_cart.get(i).getId() == id) {
					shopping_cart.get(i).setQuantity(shopping_cart.get(i).getQuantity() + 1);
					
					index = i;
				}

			}
		}
		return false;

	}

	public boolean checkProductInShoppingCart(int id) {

		for (int i = 0; i < shopping_cart.size(); i++) {

			if (shopping_cart.get(i).getId() == id) {
				return true;
			}

		}
		return false;

	}

	public boolean deleteProduct(int id) {
		for (int i = 0; i < shopping_cart.size(); i++) {
			if (shopping_cart.get(i).getId() == id) {
				shopping_cart.remove(i);
				return true;
			}}
		return false;
		
	}

	public static void main(String[] args) {
		Cart_DAO cart = new Cart_DAO();
		// System.out.println(cart.addShoppingCart(1));

		System.out.println(cart.getShopping_cart());
	}
}
