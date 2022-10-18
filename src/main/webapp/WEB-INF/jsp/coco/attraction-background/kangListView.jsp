<%@page import="org.springframework.context.annotation.Bean"%>
<%@page import="java.util.List"%>
<%@page import="tw.cocokang.attraction.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChiTou後台管理系統-景點總覽</title>
<%@ include file="/WEB-INF/includes/CSSAndJS.jsp"%>
<style>
    div.loadingdiv {
        height: 100%;
        width: 100%;
        /*100%覆蓋網頁內容, 避免user在loading時進行其他操作*/
        position: fixed;
        z-index: 99999;
        /*須大於網頁內容*/
        top: 0;
        left: 0;
        display: block;
        background: #000;
        opacity: 0.6;
        text-align: center;
    }


}
</style>
<script type="text/javascript">
$(function(){
	
	$("#receive").click(function(){
		$.ajax({
	          beforeSend: function () {
	             //將div顯示
	             $('#loading').css("display", "");
	          },
	          type: 'GET',
	          async: false,
	          url: 'coco/attraction/kangNEWInsertAttractionBackground',
	          success: function (data) {
	               //do something
	          },
	          complete: function () {
	              //再次隱藏
	              $('#loading').css("display", "none"); 
	              
	              //測試可利用setTimeout 讓loading效果明顯
	              //setTimeout(function () { $('#loading').css("display", "none"); }, 3000);
	              
	          }
	       
	      })
		
	})
	
	
});

	</script>
</head>

<body>
 <div class="loadingdiv" id="loading" style="display: none">
        <img src="/images/coco/loading/loading1.gif" />     
 </div>
	<%@ include file="/WEB-INF/includes/SuperTop.jsp"%>
<div class="card-description">
	<h4 class="card-title text-primary">&nbsp;景點總覽</h4>
	
		<a href="addAttraction">
			<button id="receive" type="button" class="btn btn-inverse-primary btn-fw"  style="float:right;">
				<i class="fa-solid fa-plus"></i>&nbsp;新增景點
			</button>
		</a>
	
			<form action="searchAttraction" method="post" enctype="multipart/form-data">
			<input type="text" name="search"  class="form-control-lg" style="border: 1px solid #CED4DA;">
			<input type="submit" name="searchno" value="搜尋" class="btn btn-inverse-primary btn-fw">
			
			</form>
</div>
			
	
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>景點圖片:</th>
					<th>景點編號:</th>
<!-- 					<th>方案編號:</th> -->
					<th>景點名稱:</th>
					<th>景點位置:</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;景點說明:</th>
<!-- 					<th>購票須知:</th> -->
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;方案內容:</th>
					<th>操作:</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="attraction" items="${listAttraction}">
					<tr>
						<form action="updateAttraction" method="get">
							<td class="py-1" ><img  src="/images/coco/attractionpicture/${attraction.photo} "></td>
							<td><c:out value="${attraction.attid}" /></td>
<%-- 							<td><c:out --%>
<%-- 									value="${attraction.hobbyclassification.preferid}" /></td> --%>
							<td><c:out value="${attraction.attName}" /></td>
							<td><c:out value="${attraction.attLocation}" /></td>
<%-- 							<td><c:out value="${attraction.attDescription.substring(5,6)}" /></td> --%>
<%-- 							<td><c:out value="${attraction.attNotice}" /></td> --%>
							<td>
							<a href="AttractionPage?attID=${attraction.attid}" >
								<button type="button" class="btn btn-link" >查看詳細內文
								</button>
							</a>
							</td>
							<td>
								<a href="showAttractionPlans?attractionid=${attraction.attid}" >
								<button type="button" class="btn btn-link" >詳細方案
								</button>
								</a>
								
							</td>

							<td>
<!-- 							<input type="hidden" name="photo" -->
<%-- 								value="${attraction.photo}"> --%>
							<input type="hidden" name="attid"
								value="${attraction.attid}"> 
								<input type="hidden"
								name="hobbyclassification"
								value="${attraction.hobbyclassification.preferid}">
								<input
								type="hidden" name="attName" value="${attraction.attName}">
								<input type="hidden" name="attLocation"
								value="${attraction.attLocation}"> 
								<input type="hidden"
								name="attDescription" value='${attraction.attDescription}'>
<!-- 								<input type="hidden" name="attNotice" -->
<%-- 								value="${attraction.attNotice}"> --%>

								<button type="submit" name="update"
									class="btn btn-inverse-success btn-icon">
								<i class="fa-regular fa-pen-to-square"></i>
								</button> &nbsp; &nbsp;
						</form>
						<!-- 刪除 -->
						<a href="deleteAttraction?attid=${attraction.attid}"><button
								class="btn btn-inverse-danger btn-icon" id="button6">
								<i class="fa-solid fa-trash-can"></i>
							</button></a>
						</td>
				</c:forEach>
			</tbody>
		</table>
		<%@ include file="/WEB-INF/includes/SuperBottom.jsp"%>
		<script src="/js/coco/bootstrap/jquery-3.4.1.min.js"></script>
			<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		
	
					
</body>
</html>