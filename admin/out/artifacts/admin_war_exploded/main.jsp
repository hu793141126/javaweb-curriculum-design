<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 8:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         import="com.admin.humen.model.User,java.util.*,javax.servlet.http.HttpSession"
         language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title></title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="generator" content=""/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
    <link href="css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print"/>
    <link href="css/print.css" rel="stylesheet" type="text/css" media="print"/>
    <script src="js/jquery-1.10.1.min.js"></script>
    <script src="js/side.js" type="text/javascript"></script>

    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
</head>
<body>

<div class="picBox" onClick="switchSysBar()" id="switchPoint"></div>
<!-- wrap_right -->
<div class="wrap_right">
    <!-- Contents -->
    <div id="Contents">
        <script type="text/javascript">
            $(function () {
                $(".select").each(function () {
                    var s = $(this);
                    var z = parseInt(s.css("z-index"));
                    var dt = $(this).children("dt");
                    var dd = $(this).children("dd");
                    var _show = function () {
                        dd.slideDown(200);
                        dt.addClass("cur");
                        s.css("z-index", z + 1);
                    };
                    var _hide = function () {
                        dd.slideUp(200);
                        dt.removeClass("cur");
                        s.css("z-index", z);
                    };
                    dt.click(function () {
                        dd.is(":hidden") ? _show() : _hide();
                    });
                    dd.find("a").click(function () {
                        dt.html($(this).html());
                        _hide();
                    });
                    $("body").click(function (i) {
                        !$(i.target).parents(".select").first().is(s) ? _hide() : "";
                    });
                })
            })
        </script>

        <!-- MainForm -->
        <div id="MainForm">
            <div class="form_boxB">
                <h2>员工信息列表</h2>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="10" class="info_boxA">部门：人力资源部　　　　日期：2017-11　　成员信息列表</td>
                    </tr>
                    <tr>
                        <th>序号</th>
                        <th>部门名称</th>
                        <th>员工姓名</th>
                        <th>性别</th>
                        <th>年龄</th>
                        <th>联系电话</th>
                        <th>月薪资</th>
                        <th>是否培训/th>
                        <th>备注</th>
                        <th>操作</th>
                    </tr>
                    <%

                        out.println("<tr>");
                        out.println("<td>1</td>");
                        out.println("<td>张三</td>");
                        out.println("<td>市内交通费</td>");
                        out.println("<td class=\"money\">11000.00</td>");
                        out.println("<td class=\"money\">45150.00</td>");
                        out.println("<td class=\"f_cA\">通过</td>");
                        out.println("<td>管理1</td>");
                        out.println("<td>2017-11-11 09:58:45</td>");
                        out.println("<td>&nbsp;</td>");
                        out.println("<td class=\"last\"><a href=\"#\">驳回</a></td>");
                        out.println("</tr>");
                    %>
                </table>
                <p class="msg">共找到47条年度预算记录，当前显示从第1条至第10条</p>
            </div>
        </div>
        <!-- /MainForm -->


        <!-- BtmMain -->
        <div id="BtmMain">
            <!-- btn_box -->
            <div class="btn_box floatR mag_l20"><input name="" type="button" value="返回列表"
                                                       onMouseMove="this.className='input_move'"
                                                       onMouseOut="this.className='input_out'"></div>
            <!-- /btn_box -->

            <!-- btn_box -->
            <div class="btn_box floatR mag_l20"><input name="" type="button" value="驳回"
                                                       onMouseMove="this.className='input_move'"
                                                       onMouseOut="this.className='input_out'"></div>
            <!-- /btn_box -->

            <!-- btn_box -->
            <div class="btn_box floatR mag_l20"><input name="" type="button" value="通过"
                                                       onMouseMove="this.className='input_move'"
                                                       onMouseOut="this.className='input_out'"></div>
            <!-- /btn_box -->
        </div>
        <!-- /BtmMain -->
    </div>
    <!-- /Contents -->

    <!-- /footer -->
    <footer>
        <address>2018 javaweb课程设计</address>
    </footer>
    <!-- /footer -->

</div>
<!-- /wrap_right -->
</body>
</html>