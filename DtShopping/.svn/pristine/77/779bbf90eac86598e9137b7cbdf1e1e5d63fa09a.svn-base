package afteraction;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.OrderGoodsAll;
import model.User;
import service.QueryUpdateService;

/**
 * @author dwb
 */
@WebServlet("/OrderBackServlet")
public class OrderBackServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		
		QueryUpdateService qus=new QueryUpdateService();
		OrderGoodsAll order=qus.QueryOrderBack(id);
		try {
			request.setAttribute("ordergoodall", order);
			request.getRequestDispatcher("/AfterJsp/edit_order.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("查询成功");
		}
		}

}
