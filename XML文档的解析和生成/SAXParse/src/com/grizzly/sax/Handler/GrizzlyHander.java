package com.grizzly.sax.Handler;


import org.xml.sax.AttributeList;
import org.xml.sax.HandlerBase;
import org.xml.sax.SAXException;

/**
 * @author Grizzly
 * @create 2019-04-13 19:32
 */

public class GrizzlyHander extends HandlerBase {
	// 定义一共变量来保存当前正在处理的tag
	private String currentTag;

	// 每当梳理文本数据时将触发该方法
	@Override
	public void characters (char[] ch, int start, int length) throws SAXException {
		super.characters(ch, start, length);
		String content = new String(ch, start, length);
		if (content.trim().length()>0) {
			System.out.println("<" + currentTag + ">元素的值是" + content.trim());
		}
	}

	// 解析文档结束时触发该方法
	@Override
	public void endDocument () throws SAXException {
		super.endDocument();
		System.out.println("解析文档结束");
	}

	// 解析元素结束时触发该方法
	@Override
	public void endElement (String name) throws SAXException {
		super.endElement(name);
		System.out.println("处理" + name + "元素结束");
	}

	// 开始解析文档时触发该方法
	@Override
	public void startDocument () throws SAXException {
		super.startDocument();
		System.out.println("开始解析文档");
	}

	// 开始解析元素时触发方法
	@Override
	public void startElement (String name, AttributeList attributes) throws SAXException {
		super.startElement(name, attributes);
		System.out.println("开始处理元素" + name);
		currentTag = name;
		if (attributes.getLength()>0) {
			System.out.println("<" + currentTag + ">元素的属性如下");
			for (int i = 0; i < attributes.getLength(); i++) {
				System.out.println(attributes.getName(i) + "---->"+ attributes.getValue(i));
			}
		}
	}

}


















