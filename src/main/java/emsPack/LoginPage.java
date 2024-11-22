package emsPack;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/LoginPage")
public class LoginPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try(PrintWriter out=response.getWriter();){
			response.setContentType("text/html");
			
		    String user=request.getParameter("name");
		    String pwd=request.getParameter("pwd");
		    if(user.equals("admin") && pwd.equals("admin123")) {
			    out.println("<label><b>Welcome ADMIN<b></label>");
			    Cookie ck=new Cookie("name",user);
			    response.addCookie(ck);
			    RequestDispatcher rd=request.getRequestDispatcher("AdminPage.jsp");
			    rd.include(request, response);
		    }
		}
	}
}