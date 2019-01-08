package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDAOImpl;
import model.Account;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final LoginDAOImpl dao = new LoginDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
			if(checkLogin) {
				session.setAttribute("account", account);
				session.setMaxInactiveInterval(10);
				url = "Backend/backend.jsp";
			}else {
				url = "Login_v3/login.jsp";
			}
			break;

		case "logout":
			session.removeAttribute("account");
			session.getMaxInactiveInterval();
			url = "Login_v3/login.jsp";
			break;
		default:
			break;
		}
		response.sendRedirect(url);
	}

}
