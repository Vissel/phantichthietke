package model;

import java.util.Map.Entry;
import java.util.TreeMap;

import com.sun.javafx.collections.MappingChange.Map;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

public class Cart {
	TreeMap<Product, Integer> cart;
	int cartID;

	public Cart() {
		cart = new TreeMap<Product, Integer>();
		cartID = (int) System.currentTimeMillis(); // random id thoi
	}

	public Cart(TreeMap<Product, Integer> cart, int cartID) {
		super();
		this.cart = cart;
		this.cartID = cartID;

	}

	// theem product vao gio
	public boolean addToCart(Product product, int quantity) {
		boolean check = cart.containsKey(product);
		if (check == true) {

			int old_quantity = cart.get(product);
			quantity = old_quantity - quantity;
			if (quantity <= 0) {
				cart.remove(product);
				return true;
			} else {
				cart.remove(product);
				cart.put(product, quantity);
				return true;
			}
		}
		return false;
	}

	// delete product
	public void removeToCart(Product p) {
		boolean check= cart.containsKey(p);
		if(check)
			cart.remove(p);
	}
	//sum product now
	public int countProduct() {
		int count=0;
		for (Entry<Product, Integer> list: cart.entrySet()) {
			count+= list.getValue();
			
		}
		return count;
	}
	//sum money
	public double total() {
		int count=0;
		for (Entry<Product, Integer> list: cart.entrySet()) {
			count+=list.getValue()*list.getKey().getPrice();
		}
		return count;
	}
	public TreeMap<Product, Integer> getCart() {
		return cart;
	}

	public void setCart(TreeMap<Product, Integer> cart) {
		this.cart = cart;
	}

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}
public static void main(String[] args) {
	Cart c= new Cart();
	

}
}
