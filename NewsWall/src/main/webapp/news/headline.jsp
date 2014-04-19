<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="weibo.service.impl.*" %>
<%@ page language="java" import="java.util.*"%>
<%@ page language="java" import="weibo4j.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<% 
	NewsServiceImpl newsService = new NewsServiceImpl();
	List<Status> lists = newsService.obtainHeadLine();
%>
<link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
<link rel="stylesheet" href="css/style.css" media="screen">
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<nav class="navbar navbar-inverse" role="navigation">
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">首页</a></li>
	      			<li><a href="/NewsWall/sports/sport">体育</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div  class="row" style="margin-top:5px">
		<%  
		for (int i = 0; i < lists.size(); i++){
		%>
		<div class = "col-md-3">
			<div class="thumbnail">
				<img src=<%=lists.get(i).getBmiddlePic() %>>
				<div class="caption">
			        <p><%=lists.get(i).getText() %></p>
			        <p><%=lists.get(i).getCreatedAt() %></p>
			     </div>
		 	</div>
	    </div>
		<%} %>
	</div>
</body>
<!-- <script src="js/masonry.pkgd.min.js"></script>
<script type="text/javascript">
	var container = document.querySelector('#g-bd');
	var msnry = new Masonry( container, {
	  // options 
	  columnWidth: 220,
	  gutter : 20 ,
	  itemSelector: '.item'
	});
</script> -->
</html>