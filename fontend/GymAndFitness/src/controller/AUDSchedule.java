package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ScheduleDAOImpl;

/**
 * Servlet implementation class AUDSchedule
 */
@WebServlet("/AUDSchedule")
public class AUDSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private static final ScheduleDAOImpl dao = new ScheduleDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AUDSchedule() {
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
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		
		String url="";
		
		switch (command) {
		case "cancel":
			url = "Fontend/schedule/schedule_detail.jsp?message=cancel";
			break;
		case "register":
			url = "Fontend/schedule/schedule_detail.jsp?message=register";
			break;
		case "filter":
			dao.getSchedule(Integer.parseInt(month),Integer.parseInt(year));
			request.setAttribute("message", "filter");
			request.setAttribute("month", month);
			request.setAttribute("year", year);
			url = "/Backend/ManageSchedule/listSchedule.jsp";
			break;
		default:
			url = "/Backend/error.jsp";
			break;
		}
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
