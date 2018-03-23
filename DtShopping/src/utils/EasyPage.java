package utils;

import java.util.List;

public class EasyPage {
	private  List  rows;
	private Integer total;

	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List getRows() {
		return rows;
	}
	public void setRows(List rows) {
		this.rows = rows;
	}
	
	public EasyPage(Integer total, List rows) {
		
		this.total = total;
		this.rows = rows;
	}
	
}
