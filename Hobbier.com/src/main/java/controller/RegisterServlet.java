package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

import java.io.IOException;
import java.sql.SQLException;

import dao.UserDao;

/**
 * Servlet implementation class RegisterServlet
 */
//@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User user = new User(username,email,password);
		String res;
		try {
			res = new UserDao().insertUser(user);
		} catch (SQLException e) {
			res = e.getMessage();
		}
		if(res!="success") {
			RequestDispatcher dispatcher = request.getRequestDispatcher("failure.jsp");
			request.setAttribute("error", res);
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			request.setAttribute("success", res);
			dispatcher.forward(request, response);
		}
//		doGet(request, response);
	}

}
