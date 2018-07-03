<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 8:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         import="com.admin.humen.model.User,java.util.*,javax.servlet.http.HttpSession"
%>
<%
    HttpSession session_ = request.getSession();
    User user = (User) session.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>头部</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
</head>

<body style="overflow:hidden;background-color: rgba(14, 13, 14, 0.65);">
<!-- 头部 -->
<div class="head">
    <div class="headL">
        <img class="headLogo" src="img/logLOGO.png"/>
    </div>
    <div class="headR">
        <p style="color:rgba(41,41,41,0.87);font-size: 25px;padding-top: 65px">欢迎：<%=user.getUsername()%></p>
    </div>
</div>

</body>
</html>