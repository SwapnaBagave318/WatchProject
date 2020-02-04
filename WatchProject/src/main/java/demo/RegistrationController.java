package demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegistrationController", urlPatterns = "/RegistrationController")
public class RegistrationController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		User u=new User();
		u.setUsername(req.getParameter("username"));
		u.setEmail(req.getParameter("email"));
		u.setPassword(req.getParameter("password"));
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://34.69.181.145:3306/db","root","root");
			PreparedStatement ps=con.prepareStatement("insert into users (username, email, password) values(?,?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.executeUpdate();
			resp.sendRedirect("Login.jsp");
			
			PrintWriter out=resp.getWriter();
			out.println("<script>"
					+ "alert('Registered successfully!!!');"
							+ "window.location='Login.jsp';"
					+ "</script>");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	
	}
}
