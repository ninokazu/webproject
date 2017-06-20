package brd;

import java.util.Date;

public class Board {
	
	private int num;
	private String id;
	private String title;
	private Date regdate;
	private String content;
	private int hit;

	
	@Override
	public String toString() {
		return "Board [num=" + num + ", id=" + id + ", title=" + title + ", regdate=" + regdate + ", content=" + content
				+ ", hit=" + hit + "]";
	}
	
	public void setNum(int num) {
		this.num = num;
	}

	public int getNum() {
		return num;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}

	
}