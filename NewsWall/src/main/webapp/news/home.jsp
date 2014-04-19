<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>my home page</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-inverse" role="navigation">
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav">
							<li ng-repeat="navigation in navigations"><a
								href="{{navigation.location}}" target="blank"
								ng-bind="navigation.name" class="navbar-brand"></a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><p class="navbar-text">
									欢迎回来 <span class="username" ng-bind="username">
								</p>
							</li>
							<li><button class="btn btn-info navbar-btn">注销</button>
							</li>
						</ul>
					</div>
				</nav>
</body>
</html>