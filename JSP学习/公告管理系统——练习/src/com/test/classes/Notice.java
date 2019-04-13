package com.test.classes;
/**
 * 公告列表类
 *
 * @author Grizzly
 * @create 2019-04-06 22:56
 */

public class Notice {
	private String id;
	private String title;
	private String content;

	public Notice (String id, String title, String content) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
	}

	public String getId () {
		return id;
	}

	public void setId (String id) {
		this.id = id;
	}

	public String getTitle () {
		return title;
	}

	public void setTitle (String title) {
		this.title = title;
	}

	public String getContent () {
		return content;
	}

	public void setContent (String content) {
		this.content = content;
	}
}
