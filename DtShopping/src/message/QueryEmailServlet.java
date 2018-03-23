package message;

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
/**
 * 检验邮箱
 * @author 李帅威
 *
 */

@WebServlet("/QueryEmailServlet")
public class QueryEmailServlet extends HttpServlet{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String email = request.getParameter("email");
	UserServiceImpl uImpl = new UserServiceImpl();
	Object[] obj = { email };
	User user = null;
	user = uImpl.emailquery(obj);
	Messager m = null;
	if (user!=null) {
		m = new Messager("200", "验证正确");

	} else {
		m = new Messager("250", "邮箱未注册");
	}
	BeanJsonUtil.writeJson(response, m);
	}
}
