<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>新增文章</title>
<link href="https://img.onl/DOO7l" rel="icon" type="image/png" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript"></script>
<style type="text/css">
*{
font-size: 102%;
}
button, .btn {
	background-color: #FFFDD0;
	border-color: #FFFDD0;
	color: #265D7E;
	border-radius: 25px;
	font-size: 150%;
}
</style>

<%@ include file="/WEB-INF/includes/CSSAndJS.jsp"%>

</head>
<body>


<%@ include file="/WEB-INF/includes/SuperTop.jsp"%>

<br>
<form action="article.insert" method="post" enctype="multipart/form-data">
會員ID:  <BR><INPUT TYPE="TEXT" NAME="posterID" VALUE="" id="posterIDInput"><BR>
文章標題: <BR><INPUT TYPE="TEXT" NAME="title" VALUE="" id="titleInput" style="width: 100%;"><BR>
		<br> 選擇國家<select name="chooseCountry">
			<optgroup label="亞洲">
				<option value=101>台灣</option>
				<option value=102>日本</option>
				<option value=103>韓國</option>
				<option value=108>新加坡</option>
				<option value=109>印尼</option>
			</optgroup>
			<optgroup label="美洲">
				<option value=201>美國</option>
				<option value=202>加拿大</option>
			</optgroup>
			<optgroup label="歐洲">
				<option value=301>英國</option>
				<option value=302>法國</option>
				<option value=304>義大利</option>
				<option value=307>土耳其</option>
				<option value=308>聖托里尼</option>
				<option value=309>阿爾巴尼亞</option>
			</optgroup>
			<optgroup label="大洋洲">
				<option value=401>澳洲</option>
			</optgroup>
			<optgroup label="非洲">
				<option value=501>埃及</option>
			</optgroup>
		</select> 
			<br><br>
		選擇文章類型<select name="chooseType">
			<option value=91>遊記</option>
			<option value=92>食記</option>
			<option value=93>資訊</option>
			<option value=94>問題</option>
			<option value=95>攻略</option>
			</select> 
		<br><br>
<!--國家編號:  <BR><INPUT TYPE="TEXT" NAME="bigClassID" VALUE="" id="bigClassIDInput"><BR>-->
<!--文章類型編號:  <BR><INPUT TYPE="TEXT" NAME="articleClassID" VALUE="" id="articleClassIDInput"><BR>-->
<!-- 文章內文：<BR><INPUT TYPE="TEXT" NAME="content" VALUE="" id="contentInput"><BR> -->
文章內文：<BR><textarea id="contentInput" name="content"></textarea><BR>
<INPUT TYPE="SUBMIT" value="發表文章" name="sentarticle" class="btn btn-primary mr-2">
</form>
<button id="fastInput" class="btn btn-light">一鍵輸入</button>

<%@ include file="/WEB-INF/includes/SuperBottom.jsp"%>


<script>
$('#fastInput').click(function(){
	$('#posterIDInput').val('2222');
	$('#titleInput').val('中壢哪裡有好玩的地方?');
	$('#contentInput').val('求分享，求推薦');
})
</script>
<script src="/js/coco/ckeditor.js"></script>
<script>
ClassicEditor
.create(document.querySelector('#contentInput'),{
	    ckfinder: {
	        uploadUrl: '/ckUploadGeorgia'
	    },
	}).then(editor => {
 	  console.log("editor1 success");
});
</script>
</body>
</html>