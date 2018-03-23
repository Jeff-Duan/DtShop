package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ping;
import model.User;
import service.PhoService;

@WebServlet("/SelectPingServlet")
public class SelectPingServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PhoService phoService = new PhoService();
		HttpSession session = request.getSession(false);
		User user=(User)session.getAttribute("user");
		Ping[] ping= phoService.getPings(user.getUser_id());
		   if (ping!=null) {
			   request.setAttribute("car", ping);
				request.getRequestDispatcher("FontJsp/myorder.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("FontJsp/tdcar5.jsp").forward(request, response);
		}
			
		}	
	
}
