<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>授权</title>
<style>
body {
	background:
		url("http://ww2.sinaimg.cn/large/6f4e9ca1jw1e6cqro21i4j20hs0p63zr.jpg")
		no-repeat;
}
</style>
<script
	src="http://tjs.sjs.sinajs.cn/t35/apps/opent/js/frames/client.js"
	language="JavaScript">
	
</script>
<script>
	//弹出授权弹层：
	function authLoad() {
		App.AuthDialog.show({
			client_id : '2631990172', //必选,自己修改为appkey
			redirect_uri : 'http://localhost:10086/NewsWall/index.jsp', //必选，授权后的回调地址，例 如：http://apps.weibo.com/giftabc
			height : 120, //可选，默认距顶端120px
			scope : 'friendships_groups_read, friendships_groups_write'//可选，授权页scope参数
		});
	}
</script>
</head>
<body onload="authLoad()">

</body>
</html>