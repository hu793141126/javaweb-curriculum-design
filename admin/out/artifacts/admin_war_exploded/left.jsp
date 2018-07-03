<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 8:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>首页左侧导航</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
    <head></head>

<body id="bg">
<!-- 左边节点 -->
<div class="container">

    <div class="leftsidebar_box">
        <a href="main.jsp" target="main">
            <div class="line">
                <img src="img/coin01.png"/>&nbsp;&nbsp;<a class="cks" href="companyintroduction.html" target="main">首页</a>
            </div>
        </a>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="img/coin01.png"/>
                <img class="icon2" src="img/coin02.png"/>
                基本信息管理
                <img class="icon3" src="img/coin19.png"/>
                <img class="icon4" src="img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a class="cks" href="showstaffinfo.jsp" target="main">员工信息</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a class="cks" href="main.jsp" target="main">薪资统计</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a class="cks" href="main.jsp" target="main">财务报表</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a class="cks" href="main.jsp" target="main">反馈管理</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
        </dl>

        <dl class="system_log">
            <dt>
                <img class="icon1" src="img/coin15.png"/>
                <img class="icon2" src="img/coin16.png"/> 应聘培训管理
                <img class="icon3" src="img/coin19.png"/>
                <img class="icon4" src="img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="p1.jsp" target="main" class="cks">应聘信息管理</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="p1.jsp" target="main" class="cks">培训信息管理</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
        </dl>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="img/coin17.png"/>
                <img class="icon2" src="img/coin18.png"/> 薪资信息管理
                <img class="icon3" src="img/coin19.png"/>
                <img class="icon4" src="img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a class="cks">员工薪资管理</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
        </dl>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="img/coin07.png"/>
                <img class="icon2" src="img/coin08.png"/>
                部门管理
                <img class="icon3" src="img/coin19.png"/>
                <img class="icon4" src="img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="p1.jsp" target="main" class="cks">增加部门</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="p1.jsp" target="main" class="cks">删除部门</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="p1.jsp" target="main" class="cks">修改部门</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="p1.jsp" target="main" class="cks">检索部门</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
        </dl>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="img/coin10.png"/>
                <img class="icon2" src="img/coin09.png"/> 员工管理
                <img class="icon3" src="img/coin19.png"/>
                <img class="icon4" src="img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="staffhadler.jsp" target="main" class="cks">员工信息操作</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
        </dl>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="img/coin11.png"/>
                <img class="icon2" src="img/coin12.png"/> 奖惩管理
                <img class="icon3" src="img/coin19.png"/>
                <img class="icon4" src="img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="p1.jsp" target="main" class="cks">员工奖励信息</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="p1.jsp" target="main" class="cks">员工惩罚信息</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
        </dl>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="img/coinL1.png"/>
                <img class="icon2" src="img/coinL2.png"/> 系统管理
                <img class="icon3" src="img/coin19.png"/>
                <img class="icon4" src="img/coin20.png"/>
            </dt>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="changepwd.jsp" target="main" class="cks">修改密码</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
            <dd>
                <img class="coin11" src="img/coin111.png"/>
                <img class="coin22" src="img/coin222.png"/>
                <a href="index.jsp?clearsession=clear" target="_top" class="cks">安全退出</a>
                <img class="icon5" src="img/coin21.png"/>
            </dd>
        </dl>

    </div>

</div>
</body>
</html>