package afteraction;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.OrderGoodsAll;
import service.QueryUpdateService;

/**
 * Servlet implementation class UpDateOrderStateServlet
 */
@WebServlet("/UpDateOrderStateServlet")
public class UpDateOrderStateServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String state="1";
		Object []obj={state,id};
		QueryUpdateService qus=new QueryUpdateService();
		int r=qus.UpdateOrderState(obj);
		try {
			
			response.sendRedirect("/DtShopping/QueryOrderServlet");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("查询成功");
		}
		}

}
