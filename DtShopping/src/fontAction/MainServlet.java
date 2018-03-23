package fontAction;

/*
 * @author xpl
 *time:2017/8/28
 * */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MainQuery;

@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MainQuery mainQuery = new MainQuery();
		// 查询手机 电话卡
		List list = mainQuery.eQuery();
		// 查询热门
		List list1 = mainQuery.hotQuery();
		// 查询华为专区
		List list2 = mainQuery.zhuanquQuery(1);
		// 查询小米专区
		List list3 = mainQuery.zhuanquQuery(4);
		// 查询苹果专区
		List list4 = mainQuery.zhuanquQuery(2);
		// 查询笔记本专区
		List list5 = mainQuery.zhuanquQuery(19);
		// 查询平板专区
		List list6 = mainQuery.zhuanquQuery(18);
		// 查询路由器专区
		List list7 = mainQuery.zhuanquQuery(20);
		// 查询移动电源专区
		List list8 = mainQuery.zhuanquQuery(21);
		// 查询智能硬件专区
		List list9 = mainQuery.zhuanquQuery(22);
		// 查询摄影摄像专区
		List list10 = mainQuery.zhuanquQuery(23);
		// 查询娱乐影音专区
		List list11 = mainQuery.zhuanquQuery(24);
		// 查询手机配件专区
		List list12 = mainQuery.zhuanquQuery(25);
		// 查询智能数码专区
		List list13 = mainQuery.zhuanquQuery(26);
		request.setAttribute("goodsdata", list);
		request.setAttribute("hotgoods", list1);
		request.setAttribute("huaweigoods", list2);
		request.setAttribute("xiaomigoods", list3);
		request.setAttribute("iphonegoods", list4);
		request.setAttribute("mac", list5);
		request.setAttribute("pad", list6);
		request.setAttribute("router", list7);
		request.setAttribute("portable", list8);
		request.setAttribute("hardware", list9);
		request.setAttribute("camera", list10);
		request.setAttribute("entertainment", list11);
		request.setAttribute("accessory", list12);
		request.setAttribute("digital", list13);
		request.getRequestDispatcher("FontJsp/main.jsp").forward(request, response);
	}
}
