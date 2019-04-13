package sax.grizzly.com.sax;

import org.xml.sax.helpers.AttributesImpl;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.sax.SAXTransformerFactory;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stream.StreamResult;

/**
 * 从SAX创建XML
 *
 * @author Grizzly
 * @create 2019-04-13 20:02
 */

public class BuildXMLMain {

	public static void main (String[] args) throws Exception {

		// 创建保存XML的结果流对象
		Result resultXML = new StreamResult("C://Users//Grizzly//Desktop//secondxml.xml");

		// 获取SAX生成工厂实例
		SAXTransformerFactory saxTransformerFactory = (SAXTransformerFactory) SAXTransformerFactory.newInstance();

		// 获取SAX生成处理者对象实例
		TransformerHandler transferHandler = saxTransformerFactory.newTransformerHandler();
		transferHandler.setResult(resultXML);
		// 获取SAX生成器
		Transformer transformer = transferHandler.getTransformer();
		// 此处OutputKeys.INDENT代表是否可以生成额外的空格，yes表示可以
		transformer.setOutputProperty(OutputKeys.INDENT,"yes");
		// 生成文档的开始
		transferHandler.startDocument();
		AttributesImpl attributes = new AttributesImpl();
//		attributes.addAttribute();
		transferHandler.startElement("", "", "书籍列表", attributes);

		transferHandler.startElement("", "", "计算机书籍", attributes);

		transferHandler.startElement("", "", "书名", attributes);
		transferHandler.characters("Java思想".toCharArray(), 0, "Java思想".length());
		transferHandler.endElement("", "", "书名");

		transferHandler.startElement("", "", "作者", attributes);
		transferHandler.characters("小王".toCharArray(), 0, "小王".length());
		transferHandler.endElement("", "", "作者");

		transferHandler.startElement("", "", "价格", attributes);
		transferHandler.characters("79.00".toCharArray(), 0, "79.00".length());
		transferHandler.endElement("", "", "价格");

		transferHandler.endElement("", "", "计算机书籍");

		// 第二本书
		transferHandler.startElement("", "", "计算机书籍", attributes);

		transferHandler.startElement("", "", "书名", attributes);
		transferHandler.characters("Spring指南".toCharArray(), 0, "Spring指南".length());
		transferHandler.endElement("", "", "书名");

		transferHandler.startElement("", "", "作者", attributes);
		transferHandler.characters("小李".toCharArray(), 0, "小李".length());
		transferHandler.endElement("", "", "作者");

		transferHandler.startElement("", "", "价格", attributes);
		transferHandler.characters("89.00".toCharArray(), 0, "89.00".length());
		transferHandler.endElement("", "", "价格");

		transferHandler.endElement("", "", "计算机书籍");

		transferHandler.endElement("", "", "书籍列表");

		// 告诉handler文档生成已结束
		transferHandler.endDocument();

		System.out.println("XML文档已经生成！");
	}

}





















