package com.test.Data;

import com.test.classes.Notice;
import com.test.classes.Users;

import java.util.HashMap;
import java.util.Map;

/**
 * 数据map
 *
 * @author Grizzly
 * @create 2019-04-06 22:55
 */

public class Data {

	public static Map<String, Notice> map1 = new HashMap<String, Notice>();

	public static Map<String, Users> map2 = new HashMap<String, Users>();

	static {
		map1.put("101", new Notice("101","开学","请同学们于9月1号之前前来报道！"));
		map1.put("102", new Notice("102","选课","开始选课啦~"));
		map1.put("103", new Notice("103","竞选班委","将于近期竞选班委！"));
		map1.put("104", new Notice("104","评选奖学金","评选奖学金啦~"));

		map2.put("1", new Users("A1", "AAA"));
		map2.put("2", new Users("B1", "BBB"));
		map2.put("3", new Users("C1", "CCC"));
		map2.put("4", new Users("D1", "DDD"));
	}

	public static Notice checkNotice(String id) {
		for (String key : map1.keySet()) {
			Notice n = map1.get(key);
			if (n.getId().equals(id)) {
				return n;
			}
		}
		return null;
	}

	public static boolean checkUser(Users user) {
		boolean flag = false;
		for (String key : map2.keySet()) {
			Users u = map2.get(key);
			if (u.getName().equals(user.getName())
					&& u.getPassword().equals(user.getPassword())) {
				flag = true;
				break;
			}
		}
		return flag;
	}

}
