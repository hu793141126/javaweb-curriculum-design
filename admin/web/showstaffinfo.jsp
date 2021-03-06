<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         import="com.admin.humen.model.StaffInfoHandler,java.util.*,javax.servlet.http.HttpSession"
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
<%
    StaffInfoHandler staffInfoHandler = new StaffInfoHandler();
    ArrayList<ArrayList> staffinfos = staffInfoHandler.getstaffinfos();
%>
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
                        <td colspan="10" class="info_boxA">公司各部门成员列表　　　日期：2017-11　　成员信息列表</td>
                    </tr>
                    <tr>
                        <th>员工编号</th>
                        <th>部门名称</th>
                        <th>员工姓名</th>
                        <th>性别</th>
                        <th>年龄</th>
                        <th>联系电话</th>
                        <th>月薪资</th>
                        <th>是否培训</th>
                        <th>备注</th>
                    </tr>
                    <%
                        for (int i = 0; i < staffinfos.size(); i++) {
                            ArrayList info = staffinfos.get(i);
                            out.println("<tr>");
                            out.println("<td>" + info.get(0) + "</td>");
                            out.println("<td>" + info.get(1) + "</td>");
                            out.println("<td>" + info.get(2) + "</td>");
                            out.println("<td class=\"money\">" + info.get(3) + "</td>");
                            out.println("<td class=\"money\">" + info.get(4) + "</td>");
                            out.println("<td class=\"f_cA\">" + info.get(5) + "</td>");
                            out.println("<td>" + info.get(6) + "</td>");
                            out.println("<td>" + info.get(7) + "</td>");
                            out.println("<td>&nbsp;</td>");
                            out.println("</tr>");
                        }
                    %>
                </table>
                <p class="msg">共找到<%=staffinfos.size()%>条年度预算记录.</p>
            </div>
        </div>
        <!-- /MainForm -->


        <!-- BtmMain -->
        <div id="BtmMain">
            <!-- btn_box -->
            <div class="btn_box floatR mag_l20"><input name="" type="button" value="招聘管理"
                                                       onMouseMove="this.className='input_move'"
                                                       onMouseOut="this.className='input_out'"
                                                       onclick='location.href=("tab.jsp")'
            ></div>
            <!-- /btn_box -->

            <!-- btn_box -->
            <div class="btn_box floatR mag_l20"><input name="" type="button" value="部门管理"
                                                       onMouseMove="this.className='input_move'"
                                                       onMouseOut="this.className='input_out'"
                                                       onclick='location.href=("tab.jsp")'
            ></div>
            <!-- /btn_box -->

            <!-- btn_box -->
            <div class="btn_box floatR mag_l20"><input name="" type="button" value="员工管理"
                                                       onMouseMove="this.className='input_move'"
                                                       onMouseOut="this.className='input_out'"
                                                       onclick='location.href=("staffhadler.jsp")'
            ></div>
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