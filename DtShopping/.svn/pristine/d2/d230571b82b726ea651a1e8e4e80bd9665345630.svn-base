package afteraction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.QueryGoodService;

@WebServlet("/queryGoodTypeServlet")
public class QueryGoodTypeServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		QueryGoodService QueryGoodService=new QueryGoodService();
		List list=null;
		try {
			list=QueryGoodService.quseyGoodType();
		} catch (Exception e) {
			// TODO: handle exception
		}
		request.setAttribute("product_type", list);
		request.getRequestDispatcher("AfterJsp/add_product.jsp").forward(request, response);
	}
}
