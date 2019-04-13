package com.grizzly.sax;

import com.grizzly.sax.Handler.GrizzlyHander;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.IOException;

/**
 * @author Grizzly
 * @create 2019-04-13 19:18
 */

public class SAXParse {
	public static void main (String[] args) throws ParserConfigurationException, SAXException, IOException {
		// 创建SAX解析器工厂
		SAXParserFactory factory = SAXParserFactory.newInstance();
		// 创建SAX解析器
		SAXParser parser = factory.newSAXParser();
		// 开始解析XML文档
		parser.parse("C://Users//Grizzly//Desktop//firstxml.xml",new GrizzlyHander());

	}
}





























