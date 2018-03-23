package fontAction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CarCar;
import model.User;
import service.PhoService;

@WebServlet("/CarCarServlet")
public class CarCarServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PhoService phoService = new PhoService();
		HttpSession session = request.getSession(false);
		User user=(User)session.getAttribute("user");
		if (user==null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print("<script language='javascript'>alert('请先登录');window.location.href='MainServlet'</script>");
		}else {
			CarCar car[]= phoService.getCarCar(user.getUser_id());
			
			if (car==null) {
				 response.sendRedirect("FontJsp/tdcar2.jsp");
			}else {
				String idname=phoService.getString(user.getUser_id());
				request.setAttribute("mon", idname);
				request.setAttribute("car", car);
				
				request.getRequestDispatcher("FontJsp/tdcar3.jsp").forward(request, response);
			}	
		}	
	}
}
