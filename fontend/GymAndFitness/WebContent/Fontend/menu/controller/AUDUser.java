package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAOImpl;
import model.Users;

/**
 * Servlet implementation class AUDUser
 */
@WebServlet("/AUDUser")
public class AUDUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private static final UserDAOImpl userDAO = new UserDAOImpl() ;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AUDUser() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String command = request.getParameter("command");
		String typeUser = request.getParameter("typeUser");
		String codeUser = request.getParameter("codeUser");
		String nameUser = request.getParameter("nameUser");
		String dob = request.getParameter("dob");
		String sex = request.getParameter("sex");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String town = request.getParameter("town");
		String address = request.getParameter("address");
		String bankAccount = request.getParameter("bankAccount");
		String bankName = request.getParameter("bankName");
		String courseCode = request.getParameter("courseCode");
		String courseName = request.getParameter("courseName");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String trainerCode = request.getParameter("trainerCode");
		String trainerName = request.getParameter("trainerName");
		String fee = request.getParameter("fee");
		String description = request.getParameter("description");
		
		String userID = request.getParameter("userID");
		
		String url ="";
		Users user;
		switch (command) {
		case "add":
			user = new Users();
			
			switch (typeUser) {
			case "Học viên":
				user.setRoleID(2);
				break;
			case "Huấn luyện viên":
				user.setRoleID(3);
				break;
			case "Nhân viên":
				user.setRoleID(4);
				break;
			default:user.setRoleID(0);
				break;
			}
			
			user.setUserCode(codeUser);
			user.setName(nameUser);
			user.setBob(Date.valueOf(dob)); // date type
			
			if(sex.equals("Nam")) user.setSex(1); else user.setSex(2); // sex under DB is int type
			
			user.setPhone(phone);
			user.setEmail(email);
			user.setAddress(address + town + city);
			
			switch (courseCode) { // course code
			case "GYM1AH":
				user.setCourseID(1);
				break;
			default:
				break;
			}
			user.setBankAccount(bankAccount);
			user.setBankName(bankName);
			user.setDescription(description);
			userDAO.addUser(user);
			
			url = "Backend/ManageUser/listUser.jsp?message=add";
			break;
			
		case "update":
			user = new Users();
			  
			
			switch (typeUser) {
			case "Học viên":
				user.setRoleID(2);
				break;
			case "Huấn luyện viên":
				user.setRoleID(3);
				break;
			case "Nhân viên":
				user.setRoleID(4);
				break;
			default:user.setRoleID(0);
				break;
			}
			
			user.setUserCode(codeUser);
			user.setName(nameUser);
			user.setBob(Date.valueOf(dob)); // date type
			
			if(sex.equals("Nam")) user.setSex(1); else user.setSex(2); // sex under DB is int type
			
			user.setPhone(phone);
			user.setEmail(email);
			user.setAddress(address + town + city);
			
			switch (courseCode) { // course code
			case "GYM1AH":
				user.setCourseID(1);
				break;
			default:
				break;
			}
			user.setBankAccount(bankAccount);
			user.setBankName(bankName);
			user.setDescription(description);
			userDAO.updateUser(user, Integer.parseInt(userID));
			
			url = "Backend/ManageUser/listUser.jsp?message=update";
			break;
			
		case "delete":
			userDAO.deleteUser(Integer.parseInt(userID));
			url = "Backend/ManageUser/listUser.jsp?message=delete";
			break;
			
		case "cancel":
			url = "Backend/ManageUser/listUser.jsp?message=cancel";
			break;
			
		case "filter":
			userDAO.filterUser(typeUser);
			url = "Backend/ManageUser/listUser.jsp?message=filter&type="+typeUser;
			break;
		default:
			url ="error.jsp";
			break;
		}
		
		response.sendRedirect(url);
		
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
