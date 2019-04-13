package com.immoc.db;

import com.immoc.emp.Emp;

import java.util.HashMap;
import java.util.Map;

/**
 * 数据管理
 *
 * @author Grizzly
 * @create 2019-03-30 12:51
 */

public class DBUtil {
	public static Map<String, Emp> map = new HashMap<String, Emp>();
	static {
		map.put("101", new Emp("101", "AA", "123456", "AA@163.com"));
		map.put("102", new Emp("102", "BB", "123456", "BB@163.com"));
		map.put("103", new Emp("103", "CC", "123456", "CC@163.com"));
		map.put("104", new Emp("104", "DD", "123456", "DD@163.com"));
	}

	// 判断用户名和密码是否正确

	public static boolean selectEmpByAccountAndPassword(Emp emp) {
		boolean flag = false;
		for (String key : map.keySet()) {
			Emp e = map.get(key);
			if (emp.getAccount().equals(e.getAccount())
			&& emp.getPassword().equals(e.getPassword())) {
				flag = true;
				break;
			}
		}
		return flag;
	}
}




















