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
 * 验证验证码
 * @author 王飞 李帅威
 *
 */

@WebServlet("/CodeServlet")
public class CodeServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pho = request.getParameter("pho");
		String code = request.getParameter("code");
		UserServiceImpl uImpl = new UserServiceImpl();
		Object[] obj = { pho };
		User user = null;
		user = uImpl.phologin(obj);
		if (user != null && user.getState().equals("1")) {
			request.getSession().setAttribute("user", user);
		} else {
			System.out.println("没有该用户，请注册");
		}
		Messager m = null;
		try {
			if (SMSUtils.verifyCode(pho, code)) {
				m = new Messager("200", "验证正确");

			} else {
				m = new Messager("250", "验证码输入错误");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		BeanJsonUtil.writeJson(response, m);

	}

}
