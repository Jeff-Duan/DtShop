package fontAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.GrChangeService;
import model.Messager;



import com.google.gson.Gson;

@WebServlet("/GrchangeServlet")
public class GrchangeServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int id=Integer.parseInt(request.getParameter("id"));
		String birthday=request.getParameter("birthday");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String realname=request.getParameter("realname");
		String phone=request.getParameter("phone");
		String sex=request.getParameter("sex");
		GrChangeService grChangeService=new GrChangeService();
		Messager messager=new Messager("成功", "200");
		 try {
			 	grChangeService.grchange(id, birthday, username, email, realname, phone, sex);
			} catch (Exception e) {
				e.printStackTrace();
				messager=new Messager("错误", "250");
			}

		    Gson gson = new Gson();
			String json=gson.toJson(messager);
			out.write(json);
			out.close();
	}
}
