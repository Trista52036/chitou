<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>來Chitou訂機票</title>
<%@ include
	file="/WEB-INF/includes/coco/attraction/AttractionsDescriptionCSS.jsp"%>
</head>
<body>

	<%@ include file="/WEB-INF/includes/coco/attraction/Header.jsp"%>
	<!--標頭開始-->
	<h4 class="card-title text-primary">ChiTou預訂機票-預訂成功</h4>
	
	<!--form開始-->
	<form class="forms-sample" action="flightticket.mail"
		method="post" >
	<h4>訂購信已寄至您的訂購信箱,請確認！</h4>	
	</form>
</body>
</html>