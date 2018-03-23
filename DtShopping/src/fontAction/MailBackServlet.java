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

@WebServlet("/MailBackServlet")
public class MailBackServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String registerID = request.getParameter("email");

		if (registerID == null) {
		
			request.getRequestDispatcher("/FontJsp/register.jsp").forward(request, response);
			return;
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("email2", registerID);
			request.getRequestDispatcher("/FontJsp/register1.jsp").forward(request, response);

		}
	}
}
