<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/14
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         import="com.admin.humen.model.StaffInfoHandler,com.admin.humen.model.StaffInfoHandler,java.util.*,javax.servlet.http.HttpSession"
         language="java" %>
<html>
<head>
    <title>员工信息处理界面</title>
    <!-- Bootstrap core CSS     -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <script src="js/jquery-1.10.1.min.js"></script>
    <!--  Light Bootstrap Dashboard core CSS    -->
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/common.css" />
    <link rel="stylesheet" type="text/css" href="css/slide.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
</head>

<body>
<%
    StaffInfoHandler staffInfoHandler = new StaffInfoHandler();
    ArrayList<ArrayList> staffinfos = staffInfoHandler.getstaffinfos();
%>
<!--员工管理模块-->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="header">
                        <h4 class="title">员工信息管理</h4>
                        <p class="category">可增加，删除，更新，索引查寻员工信息</p>
                    </div>
                    <div class="content table-responsive table-full-width">
                        <table class="table table-hover table-striped" >
                            <thead>
                            <th>用户ID</th>
                            <th>所属部门</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>年龄</th>
                            <th>联系电话</th>
                            <th>月薪</th>
                            <th>是否培训</th>
                            <th>操作</th>
                            </thead>
                            <tbody id="tab">
                            <%
                                for (int i = 0; i < staffinfos.size(); i++) {
                                    ArrayList info = staffinfos.get(i);
                                    out.println("<tr>");
                                    out.println("<td>" + info.get(0) + "</td>");
                                    out.println("<td>" + info.get(1) + "</td>");
                                    out.println("<td>" + info.get(2) + "</td>");
                                    out.println("<td>" + info.get(3) + "</td>");
                                    out.println("<td>" + info.get(4) + "</td>");
                                    out.println("<td>" + info.get(5) + "</td>");
                                    out.println("<td>" + info.get(6) + "</td>");
                                    out.println("<td>" + info.get(7) + "</td>");
                                    out.println("<td><button id=\"button\" class=\"btn btn-success btn-xs\" data-toggle=\"modal\" data-target=\"#reviseUser\">修改</button></td>");
                                    out.println("</tr>");
                                }
                            %>
                            </tbody>
                        </table>
                        <script>
                            $(function () {
                                $("#tab").on("click", "#button", function (event) {
                                    alert($(this).closest("tr").find("td").eq(2).text());
                                });
                            });
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--弹出修改用户窗口-->
<div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form class="form-horizontal">
                        <div class="form-group ">
                            <label  class="col-xs-3 control-label">用户名：</label>
                            <div class="col-xs-8 ">
                                <input type="email" class="form-control input-sm duiqi"  placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-xs-3 control-label">部门名称：</label>
                            <div class="col-xs-8 ">
                                <input type="" class="form-control input-sm duiqi"  placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">性别：</label>
                            <div class="col-xs-8">
                                <input type="" class="form-control input-sm duiqi" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-xs-3 control-label">年龄：</label>
                            <div class="col-xs-8">
                                <input type="" class="form-control input-sm duiqi"  placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-xs-3 control-label">联系电话：</label>
                            <div class="col-xs-8">
                                <input type="" class="form-control input-sm duiqi"  placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-xs-3 control-label">月薪：</label>
                            <div class="col-xs-8">
                                <input type="" class="form-control input-sm duiqi"  placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-xs-3 control-label">是否培训：</label>
                            <div class="col-xs-8">
                                <select class=" form-control select-duiqi">
                                    <option value="">是</option>
                                    <option value="">否</option>
                                </select>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                <button type="button" class="btn btn-xs btn-green">保 存</button>
            </div>
        </div>
    </div>
</div>
        <!-- /.modal-content -->
</body>
</html>
