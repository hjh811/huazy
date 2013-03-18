<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="extend.phone.GetPhoneImages"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//String path = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String url ="http://10.23.97.247/androidserver/Image/";
	List<String> list = GetPhoneImages.getList(id);
	StringBuilder leftBuidler = new StringBuilder();
	StringBuilder rightBuidler = new StringBuilder();
	
	if (id != null) {
		//id = URLDecoder.decode(id, "UTF-8");
	}
	//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>附件浏览</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

</head>

<body>
	<img src="http://10.23.108.104/attachment/%E7%AB%A3%E5%B7%A5%E5%9B%BE/DHD06001121/ZD7A-JG-12.jpg"/>
</body>
</html>
