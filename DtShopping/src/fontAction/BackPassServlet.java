package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import service.UserServiceImpl;

@WebServlet("/BackPassServlet")
public class BackPassServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String validatecode = request.getParameter("validate").toUpperCase();
	
		HttpSession session = request.getSession();
		String verify = (String) session.getAttribute("verifyCode");
		
		UserServiceImpl uImpl = new UserServiceImpl();
		Object[]obj={email};
		User user = uImpl.backpass(obj);
		
		if(user.getEmail().equals(email)&&validatecode.equals(verify)){
			session.setAttribute("email1", email);
			request.getRequestDispatcher("/FontJsp/backpass1.jsp").forward(request, response);
			
		}else {
			request.getRequestDispatcher("/FontJsp/backpass.jsp").forward(request, response);
		}
	}

}
