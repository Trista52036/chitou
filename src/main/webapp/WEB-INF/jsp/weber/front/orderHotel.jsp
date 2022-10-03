<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂房</title>
<script src="/css/wei/js/jquery-3.4.1.min.js"></script>
<style>
        fieldset {
            width: 500px;
            border: 2px solid black;
            border-radius: 15px;
            margin: 15px;
        }

        legend {
            /* text-align: center; */
            margin-left: 50px;
        }

        .st1 {
            width: 450px;
            border-bottom: 3px dashed #ADADAD;
            margin: 20px;
            padding-bottom: 10px;
        }

        .sub {
            width: 450px;
            margin: 20px;
            text-align: center;
        }

        .t1 {
            width: 100px;
            float: left;
            /* border: 1px solid red; */
            text-align: right;
        }

        textarea {
            resize: none;
        }
    </style>
</head>
<body>
<div align="center">
	<form action="getECPay" id="form" method="post">
        <fieldset>
            <legend>基本資料</legend>
            <button type="button" id="accountProfile" style="float:right;">會員資料填入</button><br>
            <input type="hidden" name="memberID" value="${memberbasicinfo.memberid}">
            <div class="st1">
                <label for="account1" class="t1">姓名:</label>
                <input type="text" id="account1" name="booker" size="10" autofocus autocomplete="off"><br>
            請輸入旅客的英文姓名，必須與護照或其他身分證明文件相同。
            </div>
            <div class="st1">
                <label for="" class="t1">E-Mail</label>
                <input type="email" name="email">
            </div>
            <div class="st1">
                <label for="" class="t1">電話</label>
                <input type="text" name="phone">
            </div>
        </fieldset>
        <fieldset>
            <legend>客房資訊</legend>
            <div class="st1">
                <label for="" class="t1">飯店名稱</label>
                <label>${hotel.name}</label>
            </div>
            <div class="st1">
                <label for="" class="t1">地址</label>
                <label>${hotel.address}</label>
            </div>
            <div class="st1">
                <label for="" class="t1">房間</label>
                <input type="hidden" name="roomID" value="${style.styleID}">
                <label>${style.name}</label>
            </div>
            <div class="st1">
                <label for="" class="t1">人數</label>
                <label>${number}</label>
            </div>
            <div class="st1">
                <label for="" class="t1">入住時間</label>
                <label>${checkInDate}</label>
            </div>
            <div class="st1">
                <label for="" class="t1">退房時間</label>
                <label>${checkOutDate}</label>
            </div>
            <div class="st1">
                <label for="comment1" class="t1">有其他需求嗎?</label>
                <textarea name="comment" id="comment1" cols="40" rows="5"></textarea>
            </div>
            <div class="sub">
                <button type="button" id="toEC">送出</button>
                <input type="reset" value="清除" disabled>
            </div>
        </fieldset>
    </form>
</div>    
    <script type="text/javascript" src="/js/weber/ecPay.js"></script>
</body>
</html>