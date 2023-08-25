package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

import java.io.IOException;



import dao.UserDao;

/**
 * Servlet implementation class Login
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User user = new User("",email,password);
		String res = new UserDao().verifyUser(user);
//		System.out.println(res);
		if(res=="success") {
			HttpSession session = request.getSession(); // Retrieve or create a session
			session.setAttribute("userId", email);
			
//			RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
//			dispatcher.forward(request, response);
			
			response.sendRedirect("dashboard.jsp");
		}
		else {
//			RequestDispatcher dispatcher = request.getRequestDispatcher("failure.jsp");
			request.setAttribute("error", res);
//			dispatcher.forward(request, response);
			response.sendRedirect("failure.jsp");
		}
	}

}
