package gagu.dto;

import java.sql.Date;

public class CartDTO {
	int cartno;
	String userid;
	int  productno;
	int amount;
	int delivery;
	String caddress;
	String pimage;
	String pname;
	String poption;
	String poption2;
	int price;
	String pcolor;
	int salesrate;
	
	
	
	
	
	public CartDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartDTO(int cartno, String userid, int productno, int amount, int delivery, String caddress, String pimage,
			String pname, String poption, String poption2, int price, String pcolor, int salesrate) {
		super();
		this.cartno = cartno;
		this.userid = userid;
		this.productno = productno;
		this.amount = amount;
		this.delivery = delivery;
		this.caddress = caddress;
		this.pimage = pimage;
		this.pname = pname;
		this.poption = poption;
		this.poption2 = poption2;
		this.price = price;
		this.pcolor = pcolor;
		this.salesrate = salesrate;
	}
	@Override
	public String toString() {
		return "CartDTO [cartno=" + cartno + ", userid=" + userid + ", productno=" + productno + ", amount=" + amount
				+ ", delivery=" + delivery + ", caddress=" + caddress + ", pimage=" + pimage + ", pname=" + pname
				+ ", poption=" + poption + ", poption2=" + poption2 + ", price=" + price + ", pcolor=" + pcolor
				+ ", salesrate=" + salesrate + "]";
	}
	public int getCartno() {
		return cartno;
	}
	public void setCartno(int cartno) {
		this.cartno = cartno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getProductno() {
		return productno;
	}
	public void setProductno(int productno) {
		this.productno = productno;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getDelivery() {
		return delivery;
	}
	public void setDelivery(int delivery) {
		this.delivery = delivery;
	}
	public String getCaddress() {
		return caddress;
	}
	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPoption() {
		return poption;
	}
	public void setPoption(String poption) {
		this.poption = poption;
	}
	public String getPoption2() {
		return poption2;
	}
	public void setPoption2(String poption2) {
		this.poption2 = poption2;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public int getSalesrate() {
		return salesrate;
	}
	public void setSalesrate(int salesrate) {
		this.salesrate = salesrate;
	}
		
}
