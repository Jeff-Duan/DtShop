package fontAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MainQuery;
import service.PageQueryService;
import service.typeQueryService;
import utils.BeanJsonUtil;
import utils.EasyPage;
import utils.PageModel;
import model.Messager;

import com.google.gson.Gson;

import dao.typeidQueryImpl;

@WebServlet("/searchServlet")
public class searchServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String rows="12";
		String a=request.getParameter("a");
		String szhi=request.getParameter("mohuzhi");
		System.out.println(szhi);
		//查询热门
		MainQuery mainQuery=new MainQuery();
		List list1=mainQuery.hotQuery();
		
		request.setAttribute("hotgoods", list1);
		request.setAttribute("zhi", szhi);
		
		
		String page =request.getParameter("page");
		if (page==null) {
			page="1";
		}
		else {
			if (a.equals("0")) {
				int p=Integer.parseInt(page)+1;
				page=String.valueOf(p);
			}else {
				int p=Integer.parseInt(page)-1;
				page=String.valueOf(p);
			}
			
		}
		System.out.println("page的值="+page);
		
		PageQueryService  pageQueryService=new PageQueryService();
		//返回的分页模型对象
		PageModel  model = pageQueryService.queryPageList(page,rows,szhi);
		System.out.println(model.getList());
		System.out.println(model.getTotal());
		
		
		
		if (model.getTotal()==0){
			System.out.println("没有这个值的模糊搜索");
			request.getRequestDispatcher("FontJsp/searchno.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("pageModel",model);
			
			System.out.println("查出来了");
			
			request.getRequestDispatcher("FontJsp/searchgoods.jsp").forward(request, response);
		}
		
	}
}
