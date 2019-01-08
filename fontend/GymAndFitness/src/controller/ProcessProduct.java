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

import dao.Product_DAO;
import model.Cart;
import model.Product;

@WebServlet("/ProcessProduct")
public class ProcessProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Product_DAO product_DAO= new Product_DAO();
   
    public ProcessProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
	     
	     HttpSession session= request.getSession();
	     
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
