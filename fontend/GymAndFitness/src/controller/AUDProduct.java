package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductThachDAOImpl;
import model.ProductThach;

/**
 * Servlet implementation class AUDProduct
 */
@WebServlet("/AUDProduct")
public class AUDProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final ProductThachDAOImpl dao = new ProductThachDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AUDProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String command = request.getParameter("command");
		String codeProduct = request.getParameter("codeProduct");
		String nameProduct = request.getParameter("nameProduct");
		String producer = request.getParameter("producer");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		String img = request.getParameter("img");
		String description = request.getParameter("description");
		String productID = request.getParameter("productID");
		
		String url = "";
		ProductThach product;
		switch (command) {
		case "add":
			product = new ProductThach();
			product.setProductCode(codeProduct);
			product.setProductName(nameProduct);
			product.setProducer(producer);
			product.setQuantity(Integer.parseInt(quantity));
			product.setPrice(Double.parseDouble(price));
			product.setUrl(img);
			product.setDescription(description);
			dao.addProduct(product);
			url = "Backend/ManageProduct/listProduct.jsp?message=add";
			break;
			
		case "update":
			product = new ProductThach();
			product.setProductCode(codeProduct);
			product.setProductName(nameProduct);
			product.setProducer(producer);
			product.setQuantity(Integer.parseInt(quantity));
			product.setPrice(Double.parseDouble(price));
			product.setUrl(img);
			product.setDescription(description);
			dao.editProduct(product,Integer.parseInt(productID));
			url = "Backend/ManageProduct/listProduct.jsp?message=update";
			break;
		case "delete":
			dao.deleteProduct(Integer.parseInt(productID));
			url = "Backend/ManageProduct/listProduct.jsp?message=delete";
		break;
		
		case "cancel":
			url = "Backend/ManageProduct/listProduct.jsp";
			break;
		default:
			url = "Backend/error.jsp";
			break;
		}
		response.sendRedirect(url);
	}

}
