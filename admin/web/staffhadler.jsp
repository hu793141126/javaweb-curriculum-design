<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/14
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         import="com.admin.humen.model.StaffInfoHandler,com.admin.humen.model.Staff,com.admin.humen.model.StaffHandler,java.util.*,javax.servlet.http.HttpSession"
         language="java"
         pageEncoding="UTF-8"
%>
<%@ page import="com.admin.humen.model.StaffHandler" %>
<html>
<head>
    <title>员工信息处理界面</title>
    <!-- Bootstrap core CSS     -->
    <script src="js/jquery-1.10.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--  Light Bootstrap Dashboard core CSS    -->
    <link href="css/custom-styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/cssCharts.css">

    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/slide.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
</head>

<body>

<%
    StaffHandler staffHandler=new StaffHandler();
    StaffInfoHandler staffInfoHandler = new StaffInfoHandler();
    ArrayList<ArrayList> staffinfos = staffInfoHandler.getstaffinfos();
    boolean checksearch=false;
    boolean checksearchfaild=false;
    boolean isupdatecontenterror = false;
    boolean isupdatesuccess = false;
    boolean isupdatedepartmentwrong = false;
    boolean isdelete = false;
    boolean isdeleteerror = false;
    boolean isadd=false;
    boolean isaddcontenterror=false;
    String error = request.getParameter("error");
    String success = request.getParameter("success");
    String deletesuccess = request.getParameter("deletesuccess");
    String ischecksearch =request.getParameter("checksearch");
    if("yes".equals(ischecksearch)){
        checksearch=true;
        String type=request.getParameter("type");
        String content=request.getParameter("content");
        staffinfos=staffHandler.getsearchcontent(type,content);
    }
    if("no".equals(ischecksearch)){
        checksearchfaild=true;
    }
    if ("updatecontenterror".equals(error)) {
        isupdatecontenterror = true;
    }
    if ("addcontenterror".equals(error)) {
        isaddcontenterror = true;
    }
    if ("updatedepartmentwrong".equals(error)) {
        isupdatedepartmentwrong = true;
    }
    if ("updatesuccess".equals(success)) {
        isupdatesuccess = true;
    }
    if ("addsuccess".equals(success)) {
        isadd = true;
    }
    if ("deletesuccess".equals(deletesuccess)) {
        isdelete = true;
    }
%>
<!--员工管理模块-->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="header">
                        <h4 class="title">员工信息管理</h4>
                        <div>
                            <p class="category" style="display: block;float: left;">可增加，删除，更新，索引查寻员工信息</p>
                            <%
                                if (isupdatecontenterror) {
                                    isupdatecontenterror = false;
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge red" >更新错误内容错误</span></a>
                            <%
                            } else if (isupdatedepartmentwrong) {
                                isupdatedepartmentwrong = false;
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge red" >无相应部门</span></a>
                            <%
                            } else if (isupdatesuccess) {
                                isupdatesuccess = false;
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge green" >更新成功</span></a>
                            <%
                            } else if (isdelete) {
                                isdelete = false;
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge green" >删除成功</span></a>
                            <%
                            } else if (isdeleteerror) {
                                isdeleteerror = false;
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge red" >删除异常</span></a>
                            <%
                            } else if (isadd) {
                                isadd = false;
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge green" >添加成功</span></a>
                            <%
                            } else if (isaddcontenterror) {
                                isaddcontenterror = false;
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge red" >添加异常</span></a>
                            <%
                            } else if (checksearch) {
                                checksearch = false;
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge green" >查找成功</span></a>
                            <%
                            } else if (checksearchfaild) {
                                checksearchfaild = false;
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge red" >无指定用户</span></a>
                            <%
                            } else {
                            %>
                            <a class="collection-item" style="text-align: right;display:block;float: right;">操作状态：<span
                                    class="new badge red" >无操作</span></a>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div class="content table-responsive table-full-width">
                        <table class="table table-hover table-striped">
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
                                    out.println("<td><button id=\"button\" class=\"btn btn-success btn-xs\" data-toggle=\"modal\" data-target=\"#reviseUser\">修改</button><button id=\"buttondelete\" class=\"btn btn-danger btn-xs\" data-toggle=\"modal\" data-target=\"#deleteUser\">删除</button></td>");
                                    out.println("</tr>");
                                }
                            %>
                            </tbody>
                        </table>
                        <script>
                            $(function () {
                                $("#tab").on("click", "#button", function (event) {
                                    alert($(this).closest("tr").find("td").eq(2).text());
                                    $("#staffid").val($(this).closest("tr").find("td").eq(0).text())
                                    $("#staffname").val($(this).closest("tr").find("td").eq(2).text());
                                    $("#staffdepartment").val($(this).closest("tr").find("td").eq(1).text());
                                    $("#staffsex").val($(this).closest("tr").find("td").eq(3).text());
                                    $("#staffage").val($(this).closest("tr").find("td").eq(4).text());
                                    $("#staffphone").val($(this).closest("tr").find("td").eq(5).text());
                                    $("#staffsalary").val($(this).closest("tr").find("td").eq(6).text());
                                    $("#staffistrain").val($(this).closest("tr").find("td").eq(7).text());
                                    $("#staffname").attr({"readonly": "true"});
                                    $("#staffsex").attr({"readonly": "true"});
                                    $("#staffid").attr({"readonly": "true"});
                                });
                            });
                        </script>
                        <script>
                            $(function () {
                                $("#tab").on("click", "#buttondelete", function (event) {
                                    alert("删除按钮被按下");
                                    $("#deletestaffuid").val($(this).closest("tr").find("td").eq(0).text());
                                    $("#deletestaffuid").attr({"readonly": "true"});

                                });
                            });
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="check-div form-inline">
    <div class="col-xs-3">
        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser">添加用户</button>
    </div>
    <form action="SerachstaffServlet" method="post">
    <div class="col-lg-3 col-lg-offset-2 col-xs-4">
        <label>查找类别:&nbsp;</label>
        <select class=" form-control" name="selectclass">
            <option value="id">员工UID</option>
            <option value="staffname">员工姓名</option>
            <option value="staffsex">员工性别</option>
            <option value="departmentname">所属部门</option>
        </select>
    </div>
    <div class="col-xs-3">
        <input type="text" class="form-control input-sm" name="selectcontent" required="required" placeholder=" *输入文字搜索 ">
        <button type="submit" class="btn btn-white btn-xs ">查 询</button>
    </div>
    </form>
</div>


<!--弹出删除用户警告窗口-->
<div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">提示</h4>
            </div>
            <%request.setCharacterEncoding("UTF-8");%>
            <form method="post" action="DeletestaffServlet" accept-charset="UTF-8">
                <div class="modal-body">
                    <div class="container-fluid" id="deleteinfo">
                        <p>
                            <label style="font-size: 20px;vertical-align:center;">员工UID:</label>
                            <input id="deletestaffuid" name="uidstaff" style="border: none" value="员工UID值"/>
                        </p>
                        确定要删除该员工么？删除后不可恢复！
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                    <button type="submit" class="btn  btn-xs btn-danger">确 定</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!--弹出添加用户窗口-->
<div class="modal fade" id="addUser" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">添加用户</h4>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <%request.setCharacterEncoding("UTF-8");%>
                    <form method="post" action="AddstaffServlet" class="form-horizontal" accept-charset="UTF-8">
                        <div class="form-group ">
                            <label class="col-xs-3 control-label">员工姓名：</label>
                            <div class="col-xs-8 ">
                                <input type="text" class="form-control input-sm duiqi" name="staffname"
                                       placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">员工性别：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control input-sm duiqi" name="staffsex"
                                       placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">所属部门：</label>
                            <div class="col-xs-8 ">
                                <input type="text" class="form-control input-sm duiqi" name="staffdepartment"
                                       placeholder="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-xs-3 control-label">员工年龄：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control input-sm duiqi" name="staffage"
                                       placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">员工月薪：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control input-sm duiqi"
                                       name="staffsalary" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">联系电话：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control input-sm duiqi"
                                       name="staffphone" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">是否培训：</label>
                            <div class="col-xs-8">
                                <select class=" form-control select-duiqi" name="staffistrain">
                                    <option value="1">是</option>
                                    <option value="0">否</option>
                                </select>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                            <button type="submit" class="btn btn-xs btn-green">保 存</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.modal-content -->
<!--弹出修改用户窗口-->
<div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">修改用户</h4>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <%request.setCharacterEncoding("UTF-8");%>
                    <form method="post" action="UpdatestaffServlet" class="form-horizontal" accept-charset="UTF-8">
                        <div class="form-group ">
                            <label class="col-xs-3 control-label">员工UID：</label>
                            <div class="col-xs-8 ">
                                <input type="text" class="form-control input-sm duiqi" id="staffid" name="staffid1"
                                       placeholder="">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label class="col-xs-3 control-label">员工姓名：</label>
                            <div class="col-xs-8 ">
                                <input type="text" class="form-control input-sm duiqi" id="staffname" name="staffname1"
                                       placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">员工性别：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control input-sm duiqi" id="staffsex" name="staffsex1"
                                       placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">所属部门：</label>
                            <div class="col-xs-8 ">
                                <input type="text" class="form-control input-sm duiqi" id="staffdepartment"
                                       name="staffdepartment1" placeholder="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-xs-3 control-label">员工年龄：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control input-sm duiqi" id="staffage" name="staffage1"
                                       placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">员工月薪：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control input-sm duiqi" id="staffsalary"
                                       name="staffsalary1" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">联系电话：</label>
                            <div class="col-xs-8">
                                <input type="text" class="form-control input-sm duiqi" id="staffphone"
                                       name="staffphone1" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">是否培训：</label>
                            <div class="col-xs-8">
                                <select class=" form-control select-duiqi" id="staffistrain" name="staffistrain1">
                                    <option value="1">是</option>
                                    <option value="0">否</option>
                                </select>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                            <button type="submit" class="btn btn-xs btn-green">保 存</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.modal-content -->
</body>
</html>
