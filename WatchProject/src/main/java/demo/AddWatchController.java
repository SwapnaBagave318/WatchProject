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

@WebServlet(name="AddWatchController",urlPatterns = {"/AddWatchController"})
public class AddWatchController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		Watch w=new Watch();
		w.setProductname(req.getParameter("addproduct"));
		w.setBrand(req.getParameter("brand"));
		w.setPrice(Float.parseFloat(req.getParameter("price")));
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://34.69.181.145:3306/db","root","root");
			PreparedStatement ps=con.prepareStatement("insert into watch (productname,brand,price) values(?,?,?)");
			ps.setString(1,w.getProductname());
			ps.setString(2,w.getBrand());
			ps.setFloat(3,w.getPrice());
			ps.executeUpdate();
			
			PrintWriter out=resp.getWriter();
			out.println("<script>"
					+ "alert('Product inserted successfully!!!!');"
							+ "window.location='Watch.jsp';"
					+ "</script>");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}

}
