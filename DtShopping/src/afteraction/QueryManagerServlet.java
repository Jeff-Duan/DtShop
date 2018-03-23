package afteraction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.runtime.SystemProperties;

import service.QueryManagerService;
@WebServlet("/queryManagerServlet")
public class QueryManagerServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String manangeid=request.getParameter("manager_id");
		String permission=request.getParameter("permission");
		System.out.println("id:"+manangeid);
		System.out.println("pp:"+permission);
		List list=null;
		QueryManagerService QueryManagerService=new QueryManagerService();
		try {
			list=QueryManagerService.queryManagerService(manangeid,permission);
			System.out.println(list.size());
			request.setAttribute("managerlist", list);
			request.setAttribute("permission_level", permission);
			request.getRequestDispatcher("AfterJsp/manager_list.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("失败");
		}
		
	}
}
