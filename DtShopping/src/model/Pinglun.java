package model;

public class Pinglun {
	private String goodname;
	private String goodimg;
	private String content;
	private String goodtime;
	private String phoname;
	public String getGoodname() {
		return goodname;
	}
	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}
	public String getGoodimg() {
		return goodimg;
	}
	public void setGoodimg(String goodimg) {
		this.goodimg = goodimg;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getGoodtime() {
		return goodtime;
	}
	public void setGoodtime(String goodtime) {
		this.goodtime = goodtime;
	}
	public String getPhoname() {
		return phoname;
	}
	public void setPhoname(String phoname) {
		this.phoname = phoname;
	}
	public Pinglun(String goodname, String goodimg, String content,
			String goodtime) {
		super();
		this.goodname = goodname;
		this.goodimg = goodimg;
		this.content = content;
		this.goodtime = goodtime;
		
	}
	public Pinglun() {
		
	}
}
