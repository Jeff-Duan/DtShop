package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CarCar;
import model.Messager;
import model.SecUser;
import model.User;
import service.PhoService;
import utils.BeanJsonUtil;

@WebServlet("/SumbitOrderServlet")
public class SumbitOrderServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PhoService phoService = new PhoService();
		HttpSession session = request.getSession(false);
		User user=(User)session.getAttribute("user");
		String name = request.getParameter("name");
		String pho = request.getParameter("pho");
		String sheng = request.getParameter("sheng");
		String shi = request.getParameter("shi");
		String xian = request.getParameter("xian");
		String xiang = request.getParameter("xiang");
		
		
		String address=sheng+" "+shi+" "+xian+" "+xiang;
		SecUser secUser= new SecUser(name, pho, address);
		String idname=phoService.getString(user.getUser_id());
		String sum=phoService.getString1(user.getUser_id());
		
		int ressid = phoService.address(user.getUser_id(), secUser);
		
		String xString = phoService.getAddressid(user.getUser_id());
		
		int x =phoService.addorder(user.getUser_id(), xString, idname, sum);
		Messager messager = new Messager("200", "添加成功");
		if (x==0) {
			messager = new Messager("250", "添加失败");
		}
		BeanJsonUtil.writeJson(response, messager);
	}
}
