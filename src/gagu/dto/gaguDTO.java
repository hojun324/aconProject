package gagu.dto;

public class gaguDTO {
	
	int productno;
	String pname;
	int  price;
	String pimage;
	int delivery;
	int salesrate;
	int amount;
	String category;
	String brand;
	int vcount;
	String option1;
	String option2;
	int disper;
	public gaguDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public gaguDTO(int productno, String pname, int price, String pimage, int delivery, int salesrate, int amount,
			String category, String brand, int vcount, String option1, String option2, int disper) {
		super();
		this.productno = productno;
		this.pname = pname;
		this.price = price;
		this.pimage = pimage;
		this.delivery = delivery;
		this.salesrate = salesrate;
		this.amount = amount;
		this.category = category;
		this.brand = brand;
		this.vcount = vcount;
		this.option1 = option1;
		this.option2 = option2;
		this.disper = disper;
	}
	@Override
	public String toString() {
		return "gaguDTO [productno=" + productno + ", pname=" + pname + ", price=" + price + ", pimage=" + pimage
				+ ", delivery=" + delivery + ", salesrate=" + salesrate + ", amount=" + amount + ", category="
				+ category + ", brand=" + brand + ", vcount=" + vcount + ", option1=" + option1 + ", option2=" + option2
				+ ", disper=" + disper + "]";
	}
	public int getProductno() {
		return productno;
	}
	public void setProductno(int productno) {
		this.productno = productno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public int getDelivery() {
		return delivery;
	}
	public void setDelivery(int delivery) {
		this.delivery = delivery;
	}
	public int getSalesrate() {
		return salesrate;
	}
	public void setSalesrate(int salesrate) {
		this.salesrate = salesrate;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getVcount() {
		return vcount;
	}
	public void setVcount(int vcount) {
		this.vcount = vcount;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public int getDisper() {
		return disper;
	}
	public void setDisper(int disper) {
		this.disper = disper;
	}
	
	
	
	
	

}
