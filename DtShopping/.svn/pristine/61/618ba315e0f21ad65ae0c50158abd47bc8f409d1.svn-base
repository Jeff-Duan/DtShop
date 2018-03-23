package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Manager;
import service.UpdataManagerService;

@WebServlet("/updataManagerServlet")
public class UpdataManagerServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String managerid=request.getParameter("managerid");
		String permission=request.getParameter("pp");
		String status=request.getParameter("sta");
		System.out.println(managerid);
		System.out.println("pp:"+permission);
		System.out.println("ss:"+status);
		Manager manager=new Manager();
		int i=0;
/*		if(permission.isEmpty()){
			if(status.isEmpty()){
				//tianzhaun
			}else{
				manager.setManagerid(managerid);
				manager.setState(status);
			}
		}else if(status.isEmpty()){
			manager.setManagerid(managerid);
			manager.setPermission(permission);
		}else{
			manager.setManagerid(managerid);
			manager.setPermission(permission);
			manager.setState(status);
		}
		*/
		manager.setManagerid(managerid);
		manager.setPermission(permission);
		manager.setState(status);
		UpdataManagerService updataManagerService=new UpdataManagerService();
		try {
			i=updataManagerService.updataManager(manager);
			request.setAttribute("", "");
			/*request.getRequestDispatcher("AfterJsp/manager_list.jsp").forward(request, response);*/
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
