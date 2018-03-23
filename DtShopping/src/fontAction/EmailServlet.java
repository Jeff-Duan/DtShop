package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Messager;
import model.User;
import service.UserServiceImpl;
import utils.BeanJsonUtil;

@WebServlet("/EmailServlet")
public class EmailServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		UserServiceImpl uImpl = new UserServiceImpl();
		Object[] obj = { email };
		User user = null;
		user = uImpl.emailquery(obj);
		Messager messager = null;
		if (user==null) {
			messager = new Messager("200", "可以注册");

		} else {
			messager = new Messager("250", "此邮箱已被注册");
		}
		BeanJsonUtil.writeJson(response, messager);
		}
	}
	


