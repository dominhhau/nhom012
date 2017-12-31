package model;



public class Kythi {
	private int index;
	private String tenkythi;
	private String tongsocau;
	private String thoigianthi;
	private String thoigian_batdau;
	private String thoigian_ketthuc;
	
	
	public Kythi(int index, String tenkythi,String tongsocau, String thoigianthi, String thoigian_batdau, String thoigian_ketthuc) {
		this.index=index;
		this.tenkythi=tenkythi;
		this.tongsocau=tongsocau;
		this.thoigianthi=thoigianthi;
		this.thoigian_batdau=thoigian_batdau;
		this.thoigian_ketthuc=thoigian_ketthuc;
		
	}
	
	public int getIndex() {
		return index;
	}
	public String getTongsocau() {
		return tongsocau;
	}

	public void setTongsocau(String tongsocau) {
		this.tongsocau = tongsocau;
	}

	public String getThoigianthi() {
		return thoigianthi;
	}

	public void setThoigianthi(String thoigianthi) {
		this.thoigianthi = thoigianthi;
	}

	public void setIndex(int index) {
		this.index = index;
	}
	public String getTenkythi() {
		return tenkythi;
	}
	public void setTenkythi(String tenkythi) {
		this.tenkythi = tenkythi;
	}
	public String getThoigian_batdau() {
		return thoigian_batdau;
	}
	public void setThoigian_batdau(String thoigian_batdau) {
		this.thoigian_batdau = thoigian_batdau;
	}
	public String getThoigian_ketthuc() {
		return thoigian_ketthuc;
	}
	public void setThoigian_kethuc(String thoigian_ketthuc) {
		this.thoigian_ketthuc = thoigian_ketthuc;
	}

}
