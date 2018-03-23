package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Messager;
import service.PhoService;
import utils.BeanJsonUtil;

@WebServlet("/DelServlet")
public class DelServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String carid=request.getParameter("id");
		
		PhoService phoService = new PhoService();
		int i =phoService.delCar(carid);
		Messager messager = new Messager("200", "删除成功");
		if (i==0) {
			messager = new Messager("250", "删除失败");
		}
		BeanJsonUtil.writeJson(response, messager);
	}
}
