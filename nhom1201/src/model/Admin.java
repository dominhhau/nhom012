package model;

public class Admin {
	
	private int IDad;
	private String username;
	private String password;
	
	public Admin(int iDad, String username, String password) {
		super();
		IDad = iDad;
		this.username = username;
		this.password = password;
	}

	public int getIDad() {
		return IDad;
	}

	public void setIDad(int iDad) {
		IDad = iDad;
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
	
	

}
