package gagu.dto;

public class CommDTO {
	int replyno;
	int wichino;
	String userid;
	String content;
	String cdate;
	public CommDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommDTO(int replyno, int wichino, String userid, String content, String cdate) {
		super();
		this.replyno = replyno;
		this.wichino = wichino;
		this.userid = userid;
		this.content = content;
		this.cdate = cdate;
	}
	@Override
	public String toString() {
		return "CommDTO [replyno=" + replyno + ", wichino=" + wichino + ", userid=" + userid + ", content=" + content
				+ ", cdate=" + cdate + "]";
	}
	public int getReplyno() {
		return replyno;
	}
	public void setReplyno(int replyno) {
		this.replyno = replyno;
	}
	public int getWichino() {
		return wichino;
	}
	public void setWichino(int wichino) {
		this.wichino = wichino;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	
	
}
