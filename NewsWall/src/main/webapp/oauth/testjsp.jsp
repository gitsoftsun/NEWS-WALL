	<!-- jsp 指令 设置整个jsp页面的属性-->
	<!-- Attribute: page- 为容器提供当前页面的使用说明-->
<%@ page language="java" contentType="text/html; charset=utf-8" isThreadSafe="true"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test jsp grammer</title>
</head>
<body>
你好<br/>
	<% out.println("your ip address is :"+request.getRemoteAddr()); %>
<!-- 初始化变量 -->
	<%!
		private int initVar = 0;
		private int serviceVar = 0;
		private int destroyVar = 0;
	%>
	<%!
		public void jspInit(){
			initVar++;
			System.out.println("jspInit(): JSP被初始化了"+initVar+"次");
		}
		public void jspDestory(){
			destroyVar++;
			System.out.println("jspDestroy(): JSP被销毁了"+destroyVar+"次");
		}
	%>
	<%
		serviceVar++;
		System.out.println("_jspService(): JSP共响应了"+serviceVar+"次请求");
		String content1="初始化次数 : "+initVar;
		String content2="响应客户请求次数 : "+serviceVar;
		String content3="销毁次数 : "+destroyVar;
	%>
	
	<h1><%=content1 %></h1>
	<h1><%=content2 %></h1>
	<h1><%=content3 %></h1>
	<!-- excute add -->
	<%! 
		public int add(int a, int b){
		return a+b;
	}
	%>
	<%
		out.println("a+b = "+add(1,2));
	%>
	<%-- note --%>
	<p>Today is :<%= (new java.util.Date()).toLocaleString() %></p>
	

	
</body>
</html>