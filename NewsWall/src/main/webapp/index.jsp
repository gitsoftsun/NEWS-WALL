<%-- <%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="weibo4j.*"%>
<%@ page language="java" import="weibo4j.http.*"%>
<%@ page language="java" import="weibo4j.model.*"%>
<%@ page language="java" import="weibo4j.util.*"%>
<jsp:useBean id="oauth" scope="session" class="weibo4j.Oauth"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>index</title>


</head>
<body>
	<!-- 从post过来的signed_request中提取oauth2信息 -->
	<%
		String signed_request = request.getParameter("signed_request");
		System.out.println("signed request :" + signed_request);
		String token = oauth.parseSignedRequest(signed_request);
		if (token == null || token.equals("")) {
			response.sendRedirect("www.weibo.com");
		}
		request.getSession().setAttribute("access_token", token);
		System.out.println("token:" + token);
	%>
</body>
</html> --%>
<html>
	<head>start</head>
	<body>
		<h1>hello world</h1>
	</body>
</html>