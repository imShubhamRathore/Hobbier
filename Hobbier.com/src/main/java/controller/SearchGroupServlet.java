package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.json.JSONObject;

/**
 * Servlet implementation class SearchGroupServlet
 */
public class SearchGroupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JSONObject jsonObject = new JSONObject();
        jsonObject.put("content", "SearchGroup");
        
        // Set response content type and write JSON data to response
//        System.out.println(jsonObject);
        response.setContentType("application/json");
        
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonObject.toString());
			
	}

	

}
