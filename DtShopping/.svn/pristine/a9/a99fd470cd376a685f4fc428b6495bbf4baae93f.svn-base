package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.UpdataGoodService;

@WebServlet("/deleteGoodServlet")
public class DeleteGoodServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodsid=request.getParameter("goodsid");
		int i=0;
		UpdataGoodService UpdataGoodService=new UpdataGoodService();
		try {
			i=UpdataGoodService.deleteGood(goodsid);
			HttpSession session=request.getSession();
			String page=String.valueOf(session.getAttribute("page"));
			String rows=String.valueOf(session.getAttribute("rows"));
			request.getRequestDispatcher("/queryGoodServlet?page="+page+"&rows="+rows+"").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
