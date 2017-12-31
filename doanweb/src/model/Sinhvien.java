package model;

public class Sinhvien {
	private int IDsv;
	private String fullname;
	private String username;
	private String password;
	
	public Sinhvien(int IDsv,String fullname, String username, String password) {
		super();
		this.IDsv=IDsv;
		this.fullname = fullname;
		this.username = username;
		this.password = password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getIDsv() {
		return IDsv;
	}

	public void setIDsv(int iDsv) {
		IDsv = iDsv;
	}
	
	
	
	

}
