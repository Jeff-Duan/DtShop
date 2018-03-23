package fontAction;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import service.UserServiceImpl;

@WebServlet("/BackPassServlet1")
public class BackPassServlet1 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email1");
		User user = new User();
		user.setPassword(password2);
		user.setEmail(email);
		
		UserServiceImpl uServiceImpl = new UserServiceImpl();
		try {
			uServiceImpl.updatepass(user);
			if (password1.equals(password2)&&email.equals(user.getEmail())) {
				request.getRequestDispatcher("/FontJsp/login.jsp").forward(request, response);
				
			} else {
				request.getRequestDispatcher("/FontJsp/backpass1.jsp").forward(request, response);
				
			}
			
		} catch (Exception e) {
			
		}
		
	}

}
