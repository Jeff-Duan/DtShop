package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Manager;
import service.QueryUpdateService;
import service.UpdataManagerService;

@WebServlet("/updateManagerPasswordServlet")
public class UpdateManagerPasswordServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String oldpassword=request.getParameter("oldpassword");
		String newPassword=request.getParameter("newPassword");
		Object[] params={username,oldpassword};
		QueryUpdateService queryUpdateService=new QueryUpdateService();
		Manager manager=null;
		try {
			manager=queryUpdateService.QueryManager(params);
			if(manager!=null){
				params[0]=newPassword;
				params[1]=username;
				UpdataManagerService UpdataManagerService=new UpdataManagerService();
				int i=0;
				try {
					i=UpdataManagerService.updataMyPassword(params);
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
}
