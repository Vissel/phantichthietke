package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDAOImpl;
import model.Account;

/**
 * Servlet implementation class LoginforShop
 */
@WebServlet("/LoginforShop")
public class LoginforShop extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final LoginDAOImpl dao = new LoginDAOImpl();
    
    public LoginforShop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String username = request.getParameter("username");
		String pass = request.getParameter("pass");
		Account account = new Account();
		account.setUsername(username);
		account.setPassword(pass);
		HttpSession session = request.getSession();

		String url = "";
		switch (command) {
		case "login":
			boolean checkLogin = dao.checkLogin(account);
			if (checkLogin) {
				if (account.getUsername().equals("admin") && account.getPassword().equals("admin")) {
					session.setAttribute("account", account);
					session.setMaxInactiveInterval(500);
					url = "Fontend/product/checkout.jsp";
				} else  {
					session.setAttribute("account", account);
					session.setMaxInactiveInterval(500);
					url = "index.jsp";
				}
				
			} else {
				url = "Fontend/login/login.jsp";
			}
			break;

		case "logout":
			session.removeAttribute("account");
			session.getMaxInactiveInterval();
			url = "Fontend/login/login.jsp";
			break;
		default:
			break;
		}
		response.sendRedirect(url);
	}
	}


