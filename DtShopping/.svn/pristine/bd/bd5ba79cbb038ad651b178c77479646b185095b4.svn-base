package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Good;
import service.QueryGoodService;

@WebServlet("/queryEchoServlet")
public class QueryEchoServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodsid=request.getParameter("goodsid");
		System.out.println(goodsid);
		Good good=null;
		QueryGoodService QueryGoodService=new QueryGoodService();
		try {
			good=QueryGoodService.queryEcho(goodsid);
			System.out.println(good.getGoodsname());
			request.setAttribute("Good", good);
			request.getRequestDispatcher("AfterJsp/edit_product.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
}
