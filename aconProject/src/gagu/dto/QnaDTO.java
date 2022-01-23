package gagu.dto;

public class QnaDTO {
	
	int wichino;
	int productno;
	String userid;
	String cate;
	String writer;
	String wpasswd;
	String title;
	String content;
	String wdate;
	int vcount;
	
	
	
	public QnaDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QnaDTO(int wichino, int productno, String userid, String cate, String writer, String wpasswd, String title,
			String content, String wdate, int vcount) {
		super();
		this.wichino = wichino;
		this.productno = productno;
		this.userid = userid;
		this.cate = cate;
		this.writer = writer;
		this.wpasswd = wpasswd;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
		this.vcount = vcount;
	}
	@Override
	public String toString() {
		return "QnaDTO [wichino=" + wichino + ", productno=" + productno + ", userid=" + userid + ", cate=" + cate
				+ ", writer=" + writer + ", wpasswd=" + wpasswd + ", title=" + title + ", content=" + content
				+ ", wdate=" + wdate + ", vcount=" + vcount + "]";
	}
	public int getWichino() {
		return wichino;
	}
	public void setWichino(int wichino) {
		this.wichino = wichino;
	}
	public int getProductno() {
		return productno;
	}
	public void setProductno(int productno) {
		this.productno = productno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWpasswd() {
		return wpasswd;
	}
	public void setWpasswd(String wpasswd) {
		this.wpasswd = wpasswd;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public int getVcount() {
		return vcount;
	}
	public void setVcount(int vcount) {
		this.vcount = vcount;
	}
	
	
	
	
	
}
