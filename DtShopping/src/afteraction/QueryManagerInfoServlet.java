package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Manager;
import service.QueryManagerService;

@WebServlet("/queryManagerInfoServlet")
public class QueryManagerInfoServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String managerid=request.getParameter("managerid");
		String permission=request.getParameter("permission");   //取得点击修改个人信息的人的权限
		System.out.println("mm:"+managerid);
		System.out.println("pp:"+permission);
		Manager manager=null;
		QueryManagerService  queryManagerService=new QueryManagerService();
		try {
			manager=queryManagerService.queryManagerInfoService(managerid);
			request.setAttribute("Manager", manager);
			if(permission.isEmpty()){
				request.getRequestDispatcher("AfterJsp/edit_myinfo.jsp").forward(request, response);
			}else if(Integer.parseInt(permission)==1&&Integer.parseInt(manager.getPermission())!=1){
				request.setAttribute("permissin", permission);
				request.getRequestDispatcher("AfterJsp/edit_manager.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("AfterJsp/my_info.jsp").forward(request, response);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
