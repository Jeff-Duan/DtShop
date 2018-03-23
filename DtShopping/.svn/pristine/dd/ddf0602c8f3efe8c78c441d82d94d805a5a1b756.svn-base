package afteraction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.QueryGoodService;
import utils.PageModel;
/**
 * 
 * @author hjl
 *	time:2017/8/28
 *	disc:��ѯ��Ʒ
 */

@WebServlet("/queryGoodServlet")
public class QueryGoodServlet extends HttpServlet{
		@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String goodstype=request.getParameter("type");
			String page=request.getParameter("page");
			System.out.println("ss:"+page);
			String rows=request.getParameter("rows");
			System.out.println("rr:"+rows);
			Object []params={goodstype};
			PageModel pageModel=null;
			List list1=null;
			QueryGoodService QueryGoodService=new QueryGoodService();
			try {
				pageModel=QueryGoodService.quseyGood(params,page,rows);
				list1=QueryGoodService.quseyGoodType();
				HttpSession session =request.getSession();
				session.setAttribute("page", pageModel.getPage());
				session.setAttribute("rows", pageModel.getPageSize());
				request.setAttribute("PageModel",pageModel);
				request.setAttribute("product_type", list1);
				request.getRequestDispatcher("AfterJsp/product_list.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("失败");
			}
		}
}
