package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UpdataGoodService;

@WebServlet("/recoverGoodServlet")
public class RecoverGoodServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodsid=request.getParameter("goodsid");
		int i=0;
		UpdataGoodService UpdataGoodService=new UpdataGoodService();
		try {
			i=UpdataGoodService.recoverGood(goodsid);
			System.out.println(i);
			request.getRequestDispatcher("/queryRecoverGoodServlet").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
