package model;

public class Address {
	private String name;
	private String pho;
	private String address;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPho() {
		return pho;
	}
	public void setPho(String pho) {
		this.pho = pho;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Address(String name, String pho, String address) {
		super();
		this.name = name;
		this.pho = pho;
		this.address = address;
	}
	public Address() {
		
	}
}
