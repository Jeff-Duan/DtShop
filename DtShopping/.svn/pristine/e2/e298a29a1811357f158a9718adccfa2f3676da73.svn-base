package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.CarCar;
import model.Messager;
import model.PhoPhoto;
import model.ShowList;
import model.User;
import service.PhoService;
import utils.BeanJsonUtil;

/**
 * 
 * @author wf
 *
 */

@WebServlet("/CarListServlet")
public class CarListServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id1= request.getParameter("id");
		String shu =request.getParameter("shuzi");
		int  x = Integer.parseInt(shu);
		
		PhoService phoService = new PhoService();
		PhoPhoto phoPhoto = phoService.getPhoPhoto(id1);	
		String goodsname=phoPhoto.getGoodsname();
		String goodprice= phoPhoto.getGoodprice();
		int y = Integer.parseInt(goodprice);
		String goodimage=phoPhoto.getGoodsimg1();	
		ShowList showList = new ShowList(goodsname, goodprice, shu, goodimage);
		int z = x*y;
		String money=String.valueOf(z);
		
		HttpSession session = request.getSession(false);
		User user=(User)session.getAttribute("user");
		
		String id[]={id1,user.getUser_id()};
		CarCar car = new CarCar(user.getUser_id(), id1, shu,money,phoPhoto.getGoodsname(),phoPhoto.getGoodprice(),phoPhoto.getGoodsimg1());
		String isHave[] = phoService.selPho(id);
		
		int m =0;
		
		if(isHave[1]==null) {
			m = phoService.addCar(car);
		}else{
			int zz= Integer.parseInt(isHave[0]);
			int mm=Integer.parseInt(shu);
			int sum =zz+mm;
			int momo=sum*y;
			String endsum= String.valueOf(sum);
			String momon= String.valueOf(momo);
			car = new CarCar(user.getUser_id(), id1, endsum,momon,phoPhoto.getGoodsname(),phoPhoto.getGoodprice(),phoPhoto.getGoodsimg1());
			m = phoService.updateCar(car);
		}
		Messager messager = new Messager("200", "添加成功");
		if (m==0) {
			messager = new Messager("250", "添加失败");
		}
		BeanJsonUtil.writeJson(response, messager);
	}
}
