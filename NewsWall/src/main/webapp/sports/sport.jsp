<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="weibo.service.impl.*"%>
<%@ page language="java" import="java.util.*"%>
<%@ page language="java" import="weibo4j.model.*"%>
<%@ page language="java" import="weibo4j.org.json.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
<link rel="stylesheet" href="css/style.css" media="screen">
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 	<div id="g-hd" class="row">
		<div class="navbar navbar-fixed-top navbar-inverse">
  			 <div class="navbar-inner">
			    <a class="brand" href="#">即时新闻</a>
			    <ul class="nav">
			      	<li class="active"><a href="#">首页</a></li>
			      	<li><a href="#">Link</a></li>
			     	<li class="dropdown">
					    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
					      Account
					      <b class="caret"></b>
					    </a>
					    <ul class="dropdown-menu">
					     	<li><a href="#">Link</a></li>
					     	<li><a href="#">Link</a></li>
					    </ul>
				  	</li>
			    </ul>
			  </div>
		</div>
	</div> -->
	<form action="sports/sport" method="get">
		<%
			JSONArray jsons = (JSONArray) request.getAttribute("jsonArray");
			if (jsons == null) {
				/* out.println("jsons is null"); */
			} else {
		%>
		<div id="g-bd">
			<%
				for (int i = 0; i < jsons.length(); i++) {
						JSONObject json = null;
						JSONObject newJson = null;
						Status status = null;

						Object ji = jsons.get(i);

						if (ji != null && ji instanceof JSONObject) {
							json = (JSONObject) ji;
							newJson = json.getJSONObject("status");

							if (newJson != null) {
								status = new Status(newJson);
			%>
			<div class="item">
				<div class="thumbnail">
					<p><%=status.getText()%></p>
					<div><%=status.getCreatedAt()%></div>
				</div>
			</div>
				<%
					}
						}
				}
			}
				%>

			
	</form>
</body>
<script src="js/masonry.pkgd.min.js"></script>
<script type="text/javascript">
	var container = document.querySelector('#g-bd');
	var msnry = new Masonry(container, {
		// options 
		columnWidth : 220,
		gutter : 20,
		itemSelector : '.item'
	});
</script>
</html>