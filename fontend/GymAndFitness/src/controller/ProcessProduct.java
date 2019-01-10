package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.smartcardio.Card;

import dao.Cart_DAO;
import dao.Product_DAO;
import model.Cart;
import model.Product;
import model.Users;

@WebServlet("/ProcessProduct")
public class ProcessProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Product_DAO product_DAO = new Product_DAO();

	public ProcessProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// taọ ra action là add và delete
		String command = request.getParameter("command");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("product_id"));

		HttpSession session = request.getSession();
		Users customer = (Users) session.getAttribute("customer");
		String url = "";
		// truoc tien lam cho la co customer,
		if (customer == null) {
			switch (command) {
			case "add":
				new Cart_DAO().addShoppingCart(id);
				url = "Fontend/product/cart.jsp?message=add";
				break;
			case "delete":
				new Cart_DAO().deleteProduct(id);
				url = "Fontend/product/cart.jsp?message=delete";
				break;
			default:
				url = "Backend/error.jsp";
				break;
			}

			response.sendRedirect(url);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
