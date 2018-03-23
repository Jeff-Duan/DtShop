package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UpdataGoodService;

@WebServlet("/addGoodTypeServlet")
public class AddGoodTypeServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodstypename=request.getParameter("goodstypename");
		int i=0;
		UpdataGoodService updataGoodService=new UpdataGoodService();
		try {
			i=updataGoodService.addGoodType(goodstypename);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
}
