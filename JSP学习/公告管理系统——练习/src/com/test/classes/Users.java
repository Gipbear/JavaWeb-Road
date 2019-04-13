package com.test.classes;
/**
 * 用户类
 *
 * @author Grizzly
 * @create 2019-04-06 22:54
 */

public class Users {
	private String name;
	private String password;

	public Users (String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}

	public String getName () {
		return name;
	}

	public void setName (String name) {
		this.name = name;
	}

	public String getPassword () {
		return password;
	}

	public void setPassword (String password) {
		this.password = password;
	}
}
