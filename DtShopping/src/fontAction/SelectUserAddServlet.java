package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Address;
import model.User;
import service.PhoService;
import utils.BeanJsonUtil;

@WebServlet("/SelectUserAddServlet")
public class SelectUserAddServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PhoService phoService = new PhoService();
		HttpSession session = request.getSession(false);
		User user=(User)session.getAttribute("user");
		Address address= phoService.getAddress(user.getUser_id());
		BeanJsonUtil.writeJson(response, address);	
	}
}
