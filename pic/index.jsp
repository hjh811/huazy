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
		System.out.println(id);
		for (int i = 0; i < list.size(); i++) {
			leftBuidler.append("<li><a href='#pic" + (i + 1)
					+ "'><img src='" + url + id +"/"+ list.get(i) + "'/></a></li>");
			rightBuidler.append("<div id='pic" + (i + 1)
					+ "'><img src='" + url + id +"/"+ list.get(i) + "'/></div>");
		}
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
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#gallery {
	width: 900px;
	height:700px;
	margin: 0 auto;
	position: relative;
	font-family: verdana, arial, sans-serif;
	background: #fff;
}

#gallery #slides {
	position: absolute;
	left: 65px;
	top: 0;
	height: 700px;
	width: 92px;
	overflow: hidden;
	text-align: center;
	z-index: 500;
}

#gallery #slides div {
	width: 92px;
	height: 700px;
	position: relative;
}

#gallery #slides div ul {
	padding: 0;
	margin: 0;
	list-style: none;
	width: 80px;
	height: 600px
}

#gallery #slides div ul li {
	float: left;
	padding: 1px 0;
	width: 75px;
	height: 100px;
}

#gallery #slides div ul li a {
	display: block;
	width: 75px;
	height: 100px;
	float: left;
}

#gallery #slides div ul li a b {
	display: none;
}

#gallery #slides div ul li a.previous {
	background: url(double-click/up.png) no-repeat center center;
}

#gallery #slides div ul li a.next {
	background: url(double-click/down.png) no-repeat center center;
}

#gallery #slides div ul li a img {
	display: block;
	width: 75px;
	height: 100px;
	border: 0;
}

#gallery #slides div ul li img.blank {
	margin: 0 auto;
	padding-top: 5px;
}

#gallery #slides div ul li a:focus {
	outline: 0;
}

#gallery #fullsize {
	position: absolute;
	left: 0;
	top: 0;
	height: 700px;
	width: 900px;
	overflow: hidden;
	z-index: 200;
	text-align: center;
}

#gallery #fullsize div {
	width: 900px;
	height: 700px;
	padding-top: 3px;
	padding-left: 35px;
	position: relative;
}

#gallery #fullsize div img {
	clear: both;
	display: block;
	margin: 0 auto;
	border: 1px solid #eee;
	width: 499px;
	height: 650px;
	position: relative;
	background: #fff;
	padding: 10px;
}


</style>
</head>

<body>
	<div id="gallery">
		<div id="slides">
			<div id="slide1">
				<ul>
					<li></li>
					<%=leftBuidler.toString()%>
				</ul>
			</div>
		</div>
		<div id="fullsize">
			<%=rightBuidler.toString()%>
		</div>
	</div>
	</div>
</body>
</html>
