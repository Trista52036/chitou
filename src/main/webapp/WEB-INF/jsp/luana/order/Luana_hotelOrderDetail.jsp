<%@page import="org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import= "tw.luana.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>

<title>訂單結果</title>
<link href="https://img.onl/DOO7l" rel="icon" type="image/png" />

<%@ include file="../Luana_include/head.jsp" %>
</head>
<body>

	<%@ include file="/WEB-INF/includes/Header.jsp"  %>

<%@ include file="../Luana_include/navbar.jsp" %>   

<div class="container">
		<div class="card-header my-3">
		訂單詳細資料
		</div>
	
		<table class="table table-light">
			<thead>
				<c:forEach var="order" items="${orderList}">
				<tr>
					<th scope="col">訂單編號：${order.orderid}</th>
					<th scope="col">訂單類別：${order.ordertype}</th>
					<th scope="col">下訂日：${order.orderdate}</th>
					<th scope="col">總金額${order.totalprice}</th>
					<th scope="col">狀態：${order.orderstatus}</th>

				</tr>
				</c:forEach>
			</thead>
			<tbody>
	<c:forEach var="hOrder" items="${hOrderDetail}">
				
					<tr>
						<td><a href="/hotelPage?hotelID=${hOrder.hotelID}">${hOrder.hotelName}</a></td>
						<td>${hOrder.roomName}</td>
						<td>入住日：${hOrder.checkInDate}</td>
						<td>退房日：${hOrder.checkOutDate}</td>
					</tr>
					<tr>
						<td>入住人數：${hOrder.numberOfPeople}</td>
						<td>是否加床：${hOrder.addBed}</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>訂購人：${hOrder.booker}</td>
						<td>聯絡信箱：${hOrder.email}</td>
						<td>聯絡電話：${hOrder.phone}</td>
						<td></td>
						<td></td>
					</tr>
			</c:forEach>
			</tbody>	
		</table>
	</div>


<%@ include file="../Luana_include/footer.jsp" %>

   
</body>
</html>