package afteraction;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Good;
import service.AddGoodService;

@WebServlet("/addGoodServlet")
public class AddGoodServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String goodsname=request.getParameter("goodsname");
		String goodsprice=request.getParameter("goodsprice");
		String goodtypeid=request.getParameter("goodstypeid");
		String goodsinfo=request.getParameter("desc");
		/*String gooddate=request.getParameter("gooddate");*/
		HttpSession session=request.getSession();
		String goodsmap=String.valueOf(session.getAttribute("imgurl"));
		String goodcount=request.getParameter("goodcount");
		String goodssail=request.getParameter("goodsail");
		String goodsdate=request.getParameter("gooddate");
			
		Good good=new Good();
		good.setGoodsname(goodsname);
		good.setGoodsprice(goodsprice);
		good.setGoodtypeid(goodtypeid);
		good.setGoodsinfo(goodsinfo);
		good.setGoodsmap(goodsmap);
		good.setGoodsimg(goodsmap);
		good.setGoodcount(goodcount);
		good.setGoodssail(goodssail);
		good.setGoodsdate(goodsdate);
		int i=0;
		AddGoodService addGoodService=new AddGoodService();
		try {
			i=addGoodService.addGood(good);
			String page=String.valueOf(session.getAttribute("page"));
			String rows=String.valueOf(session.getAttribute("rows"));
			request.getRequestDispatcher("/queryGoodServlet?page="+page+"&rows="+rows+"").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		

/*	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

	    try {

	        Date date = formatter.parse(goodsdate);
	        String gg=formatter.format(date);
	        System.out.println(gg);

	    } catch (ParseException e) {
	        e.printStackTrace();
	    }  */
		
/*	       try {  
	         SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");  
	         String time =  format.format(goodsdate);  
	         Date date = format.parse(time);  
	         System.out.println(date);  
	       } catch (Exception e) {  
	           e.printStackTrace();  
	       } */
	}
}
