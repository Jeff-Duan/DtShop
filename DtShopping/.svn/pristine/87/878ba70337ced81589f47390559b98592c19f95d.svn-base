package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Good;
import service.UpdataGoodService;

@WebServlet("/updataGoodServlet")
public class UpdataGoodServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodsid=request.getParameter("goodsid");
		String goodsname=request.getParameter("goodsname");
		String goodsprice=request.getParameter("goodsprice");
		String goodtypeid=request.getParameter("goodstypeid");
		String goodsinfo=request.getParameter("desc");
		HttpSession session=request.getSession();
		String goodsmap=String.valueOf(session.getAttribute("imgurl"));
		System.out.println("update"+goodsmap);
		String goodcount=request.getParameter("goodcount");
		String goodssail=request.getParameter("goodsail");
		String goodsdate=request.getParameter("gooddate");
			
		Good good=new Good();
		good.setGoodsid(goodsid);
		good.setGoodsname(goodsname);
		good.setGoodsprice(goodsprice);
		good.setGoodtypeid(goodtypeid);
		good.setGoodsinfo(goodsinfo);
		good.setGoodsmap(goodsmap);
		good.setGoodsimg(goodsmap);
		good.setGoodcount(goodcount);
		good.setGoodssail(goodssail);
		good.setGoodsdate(goodsdate);
		
		UpdataGoodService updataGoodService=new UpdataGoodService();
		try {
			int i=updataGoodService.updataGood(good);
			String page=String.valueOf(session.getAttribute("page"));
			String rows=String.valueOf(session.getAttribute("rows"));
			request.getRequestDispatcher("/queryGoodServlet?page="+page+"&rows="+rows+"").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}
}
