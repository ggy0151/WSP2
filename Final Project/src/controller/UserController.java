package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.json.ParseException;

import dao.UserDao;
import model.User;

public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String INSERT_OR_EDIT = "/user.jsp";
	private static String LIST_USER = "/listUser.jsp";
	private UserDao dao;
	
	public UserController() {
		super();
		dao = new UserDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String forward = "";
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("delete")) {
			String userId = request.getParameter("userId");
			dao.deleteUser(userId);
			forward = LIST_USER;
			request.setAttribute("users", dao.getAllUsers());
		}else if (action.equalsIgnoreCase("edit")) {
			forward = INSERT_OR_EDIT;
			String userId = request.getParameter("userId");
			User user = dao.getUsersById(userId);
			request.setAttribute("user", user);
		}else if(action.equalsIgnoreCase("listUser")) {
			forward = LIST_USER;
			request.setAttribute("users", dao.getAllUsers());
		}else {
			forward = INSERT_OR_EDIT;
		}
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		User user = new User();
		String action = request.getParameter("action");
		
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		
		try {
			Date dob = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("dob"));
			user.setDob(dob);
		}catch(ParseException e) {
			e.printStackTrace();
		}
		user.setEmail(request.getParameter("email"));
		String userid = request.getParameter("userid");
		user.setUserid(request.getParameter("userid"));
		
		User user2 = dao.getUsersById(userid);
		
		if(user2.getUserid() == null) {
			System.out.println("null");
			dao.addUser(user);
		}else {
			user.setUserid(request.getParameter(userid));
			dao.updateUser(user2);
		}
		
		RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
		request.setAttribute("users", dao.getAllUsers());
		view.forward(request, response);
	}
}
