package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

//import dao.DBConnection.getConnection;

public class UserDao {
	
	public String insertUser(User user) throws SQLException {
		Connection connection = new DBConnection().getConnection();
		String res = "success";
		try {
			String query = "insert into users values(?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, user.getUserName());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.executeUpdate();
		}
		catch(SQLException e) {
//			System.out.println(e);
			res = e.getMessage();
		}
		return res;	
		
	}
	
	public String verifyUser(User user) {
		Connection connection = new DBConnection().getConnection();
		String res = "success";
		String email = user.getEmail();
//		System.out.println(email);
		String password = user.getPassword();
		String correctPassword = "";
		try {
			String query = "select password from users where email = ?;";
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, email);
			
			ResultSet rs = preparedStatement.executeQuery();
//			System.out.println(rs.getString("password"));
			rs.next();
//			System.out.println(rs.getString("password"));
			correctPassword = rs.getString("password");
		}
		catch(SQLException e) {
			res = e.getMessage();
			return res;
		}
		if(password.compareTo(correctPassword)!=0) {
//			System.out.println("given " + password);
//			System.out.println("correct " + correctPassword);
			return "failure";
		}
		else return "success";
	}
}
