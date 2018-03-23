package model;

public class PhoPhoto {
	private String goodsimg1;
	private String goodsimg2;
	private String goodsimg3;
	private String goodsimg4;
	private String goodsname;
	private String goodprice;
	private String goodinfo;
	private String goodid;

	public PhoPhoto(String goodsimg1, String goodsimg2, String goodsimg3,
			String goodsimg4, String goodsname, String goodprice,
			String goodinfo, String goodid) {
		super();
		this.goodsimg1 = goodsimg1;
		this.goodsimg2 = goodsimg2;
		this.goodsimg3 = goodsimg3;
		this.goodsimg4 = goodsimg4;
		this.goodsname = goodsname;
		this.goodprice = goodprice;
		this.goodinfo = goodinfo;
		this.goodid = goodid;
	}
	public String getGoodid() {
		return goodid;
	}
	public void setGoodid(String goodid) {
		this.goodid = goodid;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public String getGoodprice() {
		return goodprice;
	}
	public void setGoodprice(String goodprice) {
		this.goodprice = goodprice;
	}
	public String getGoodinfo() {
		return goodinfo;
	}
	public void setGoodinfo(String goodinfo) {
		this.goodinfo = goodinfo;
	}
	public PhoPhoto() {
		
	}
	public String getGoodsimg1() {
		return goodsimg1;
	}
	public void setGoodsimg1(String goodsimg1) {
		this.goodsimg1 = goodsimg1;
	}
	public String getGoodsimg2() {
		return goodsimg2;
	}
	public void setGoodsimg2(String goodsimg2) {
		this.goodsimg2 = goodsimg2;
	}
	public String getGoodsimg3() {
		return goodsimg3;
	}
	public void setGoodsimg3(String goodsimg3) {
		this.goodsimg3 = goodsimg3;
	}
	public String getGoodsimg4() {
		return goodsimg4;
	}
	public void setGoodsimg4(String goodsimg4) {
		this.goodsimg4 = goodsimg4;
	}
	public PhoPhoto(String goodsimg1, String goodsimg2, String goodsimg3,
			String goodsimg4) {
		this.goodsimg1 = goodsimg1;
		this.goodsimg2 = goodsimg2;
		this.goodsimg3 = goodsimg3;
		this.goodsimg4 = goodsimg4;
	}
}
