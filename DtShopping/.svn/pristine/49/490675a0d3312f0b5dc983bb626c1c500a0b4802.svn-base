package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PhoPhoto;
import model.Pinglun;
import service.PhoService;

/**
 * 
 * @author wf
 *
 */
@WebServlet("/PhoListServlet")
public class PhoListServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id =request.getParameter("id");
		PhoService phoService = new PhoService();
		PhoPhoto phoPhoto = phoService.getPhoPhoto(id);
		request.setAttribute("pho", phoPhoto);
		
		Pinglun pinglun[] = phoService.getPinglun(id);
		
		if (pinglun!=null) {
			request.setAttribute("ping", pinglun);
			request.getRequestDispatcher("FontJsp/tdcar4.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("FontJsp/tdcar.jsp").forward(request, response);
		}
	
		
		
	}
}
