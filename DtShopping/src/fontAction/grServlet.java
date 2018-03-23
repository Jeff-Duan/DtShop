package fontAction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.orderQueryServlet;
import model.CarCar;
import model.User;
/*
 * author:xpl
 * time:10/08/30
 * */
@WebServlet("/grServlet")
public class grServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		User user=(User)session.getAttribute("user");
		if (user==null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print("<script language='javascript'>alert('请先登录');window.location.href='MainServlet'</script>");
		}else {
			orderQueryServlet oqs=new orderQueryServlet();
			int userid=Integer.parseInt(user.getUser_id());
			int num1=oqs.nopay(userid);
			int num2=oqs.nosend(userid);
			int num3=oqs.waitget(userid);
			request.setAttribute("user", user);
			request.setAttribute("nopaynum",num1 );
			request.setAttribute("nosendnum",num2 );
			request.setAttribute("waitget",num3 );
			request.getRequestDispatcher("FontJsp/personalInformation.jsp").forward(request, response);	
		}
	}

}
