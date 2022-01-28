package gagu.dto;

public class cuCenterDTO {
	
	private String num;
	private String title;
	private String content;
	private String category;
	public cuCenterDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public cuCenterDTO(String num, String title, String content, String category) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.category = category;
	}
	@Override
	public String toString() {
		return "cuCenterDTO [num=" + num + ", title=" + title + ", content=" + content + ", category=" + category + "]";
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}
