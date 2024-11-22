package emsPack;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Servlet implementation class Insertpage
 */
@WebServlet("/Insertpage")
public class Insertpage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		try(PrintWriter ou=response.getWriter();){
			String Id=request.getParameter("Id");
			String name=request.getParameter("name");
			String roll=request.getParameter("roll");
			String num=request.getParameter("number");
			String date=request.getParameter("date");
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_table","root","L0v34ll@222");
			Statement stmt=con.createStatement();
			int val=stmt.executeUpdate("insert into employees(Id,Name,Roll,num,date_of_joining) values('"+Id+"','"+name+"','"+roll+"','"+num+"','"+date+"')");
			if(val == 1) {
				ou.println("Record Inserted");
				RequestDispatcher rd=request.getRequestDispatcher("AdminPage.jsp");
			    rd.include(request, response);
			}
		}catch(SQLException e){
			System.out.println(e);
		}catch(ClassNotFoundException e) {
			System.out.println(e);
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}