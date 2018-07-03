<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         import="com.admin.humen.model.User,com.admin.humen.model.UserHandler,java.util.*,javax.servlet.http.HttpSession"
%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%
    HttpSession session_ = request.getSession();
    User user = (User) session.getAttribute("user");
    boolean changesuccess=false;
    boolean repeterror=false;
    boolean pwdolderror=false;
    if("changepwdsuccess".equals(request.getParameter("changepwdsuccess"))){
        changesuccess=true;
    }
    if("repeterror".equals(request.getParameter("repeterror"))){
        repeterror=true;
    }
    if("pwdolderror".equals(request.getParameter("pwdolderror"))){
        pwdolderror=true;
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>修改密码</title>
    <link rel="stylesheet" type="text/css" href="css/css.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<div id="pageAll">
    <div class="pageTop">
        <div class="page">
            <img src="img/coin02.png"/>
            <span>
                <a href="#">首页</a>&nbsp;-&nbsp;
                <a href="#">系统管理</a>&nbsp;-</span>&nbsp;
            修改密码
        </div>
    </div>
    <div class="page ">
        <!-- 修改密码页面样式 -->
        <div class="bacen">
            <div class="bbD">
                &nbsp;&nbsp;&nbsp;&nbsp;管理员UID：&nbsp;&nbsp;&nbsp;&nbsp;<%=user.getUserUID()%>★
            </div>
            <div class="bbD">
                管理员用户名：&nbsp;&nbsp;&nbsp;&nbsp;<%=user.getUsername()%>★
            </div>
            <form method="post" action="ChangepwdServlet">
            <div class="bbD">
                &nbsp;&nbsp;&nbsp;&nbsp;输入旧密码：
                <input type="password" value="" class="input3" id="pwd1" name="pwdold"/>
                <img class="imga" src="img/ok.png"/>
                <img class="imgb" src="img/no.png"/>
            </div>
            <div class="bbD">
                &nbsp;&nbsp;&nbsp;&nbsp;输入新密码：
                <input type="password" value="" class="input3" id="pwd2" name="pwdnew"/>
                <img class="imga" src="img/ok.png"/>
                <img class="imgb" src="img/no.png"/>
            </div>
            <div class="bbD">
                再次确认密码：
                <input type="password" value="" class="input3" id="pwd3" name="pwdrept"/>
                <img class="imga" src="img/ok.png"/>
                <img class="imgb" src="img/no.png"/>
            </div>
            <div class="bbD">
                <p class="bbDP">
                    <button class="btn_ok btn_yes" type="submit">提交</button>
                    <a class="btn_ok btn_no" id="changepwdcancer">取消</a>
                </p>
            </div>
            </form>
        </div>

        <!-- 修改密码页面样式end -->
    </div>
</div>
<%
    if (pwdolderror) {
        out.println("<h3 style='text-alig:right;margin-right:30px;font-size:20px;color:red'>提示:旧密码错误</h3>");
        pwdolderror=false;
    }else if(repeterror){
        out.println("<h3 style='text-align:right;margin-right:30px;font-size:20px;color:red'>提示:新密码与重复密码不一致</h3>");
        repeterror=false;
    }else if(changesuccess){
        out.println("<h3 style='text-align:right;margin-right:30px;font-size:20px;color:red'>提示:密码修改成功</h3>");
        changesuccess=false;
    }
%>
<script>
    document.getElementById("changepwdcancer").onclick=function () {
        document.getElementById("pwd1").value="";
        document.getElementById("pwd2").value="";
        document.getElementById("pwd3").value="";
    }
</script>
</body>

</html>