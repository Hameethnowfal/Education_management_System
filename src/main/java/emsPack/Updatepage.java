package emsPack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Updatepage")
public class Updatepage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int flag = 0;
		response.setContentType("text/html");
		try (PrintWriter ou = response.getWriter();) {
			String Id = request.getParameter("Id");
			String name = request.getParameter("name");
			String roll = request.getParameter("roll");
			String num = request.getParameter("number");
			String date = request.getParameter("date");

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_table", "root",
					"L0v34ll@222");
			Statement stmt = con.createStatement();
			int val = stmt.executeUpdate("update employees SET Name='" + name + "' where Id='" + Id + "'");
			int val1 = stmt.executeUpdate("update employees SET Roll='" + roll + "' where Id='" + Id + "'");
			int val2 = stmt.executeUpdate("update employees SET num='" + num + "' where Id='" + Id + "'");
			int val3 = stmt.executeUpdate("update employees SET date_of_joining='" + date + "' where Id='" + Id + "'");
			int val4 = stmt.executeUpdate("update employees SET Id='" + Id + "' where Id='" + Id + "'");

			if (val >= 1 && val1 >= 1 && val2 >= 1 && val3 >= 1 && val4 >= 1) {
				ou.println("Record updated");
				RequestDispatcher rd = request.getRequestDispatcher("AdminPage.jsp");
				rd.include(request, response);
			}
		} catch (SQLException e) {
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
}
