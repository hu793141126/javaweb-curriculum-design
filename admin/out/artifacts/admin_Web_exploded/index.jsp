<%--
  Created by IntelliJ IDEA.
  User: huxiaohua
  Date: 2018/6/12
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         import="com.admin.humen.model.User,java.util.*,javax.servlet.http.HttpSession"
%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%
  HttpSession session_ = request.getSession();
  User user = (User) session.getAttribute("user");
  boolean isLoginerror = false;
  String error = request.getParameter("error");
  String clearsession=(String)session_.getAttribute("clearsession");
  if("wrong".equals(error))
  {
    isLoginerror = true;
    session_.setAttribute("user", null);
  }
  if("clear".equals(clearsession)){
      session_.invalidate();
  }
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
  <link rel="stylesheet" href="css/loginform.css">

  <title>绘制表格</title>
</head>
<body >
<%
  if (isLoginerror) {
%>
<script>
    window. alert("用户名或密码错误");
</script>
<div class="login">
  <h1>人事管理系统</h1>
  <form method="post" action="LoginServlet">

    <input type="text" name="username" placeholder="用户名" required="required" />
    <input type="password" name="userpass" placeholder="密码" required="required" />
    <button type="submit" class="btn btn-primary btn-block btn-large">登录</button>
  </form>
</div>
<canvas id="canvas" width=100% height=100%></canvas>
<script src="js/starcanvas.js"></script>
<%
}else {
%>
<div class="login">
  <h1>人事管理系统</h1>
  <form method="post" action="LoginServlet">
    <input type="text" name="username" placeholder="用户名" required="required" />
    <input type="password" name="userpass" placeholder="密码" required="required" />
    <button type="submit" class="btn btn-primary btn-block btn-large">登录</button>
  </form>
</div>
<canvas id="canvas" width=100% height=100%></canvas>
<script src="js/starcanvas.js"></script>
<%
  }
%>
</body>
</html>
