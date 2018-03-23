package message;

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import message.SMSUtils;;;

/**
 * 测试验证码类短信
 *
 * @author 李帅威
 */
@WebServlet("/CaptchaMsgServlet")
public class CaptchaMsgServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mobile =request.getParameter("pho");
		if(SMSUtils.isMobile(mobile)){
			try {
				SMSUtils.sendCode(mobile,"3090044");//发送验证码	
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		/*System.out.print("请输入您收到的短信验证码：");
		String code = new Scanner(System.in).next();*/
	/*	try {
			if(SMSUtils.verifyCode(mobile, code)){//校验验证码
				System.out.println("验证码正确...");
			}else{
				System.out.println("验证码错误...");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}*/
	
	}
}