<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>添加用户</title>
    <link rel="stylesheet" type="text/css" href="css/css.css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<div id="pageAll">
    <div class="pageTop">
        <div class="page">
            <img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
                href="#">公共管理</a>&nbsp;-</span>&nbsp;意见管理
        </div>
    </div>
    <div class="page ">
        <!-- 会员注册页面样式 -->
        <div class="banneradd bor">
            <div class="baTopNo">
                <span>会员注册</span>
            </div>
            <div class="baBody">
                <div class="bbD">
                    &nbsp;&nbsp;&nbsp;用户名：<input type="text" class="input3" />
                </div>
                <div class="bbD">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：<input type="password"
                                                                  class="input3" />
                </div>
                <div class="bbD">
                    用户等级：<input type="password" class="input3" />
                </div>
                <div class="bbD">
                    <p class="bbDP">
                        <button class="btn_ok btn_yes" href="#">提交</button>
                        <a class="btn_ok btn_no" href="#">取消</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>