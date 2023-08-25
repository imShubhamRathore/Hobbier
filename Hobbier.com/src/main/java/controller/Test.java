package controller;

import java.sql.SQLException;
import org.json.JSONObject;

import dao.UserDao;
import model.User;

public class Test {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
//		String name = "shubham";
//		String email = "shubham@gmail.com";
//		String password = "12345";
//		
//		User user = new User(name,email,password);
//		
//		String s = new UserDao().insertUser(user);
		
		JSONObject jsonObject = new JSONObject();
        jsonObject.put("content", "SearchGroup");
		
	    System.out.println(jsonObject.toString());

	}

}
