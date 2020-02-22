
<%--
  Created by IntelliJ IDEA.
  User: someone
  Date: 2019/11/27
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>安徽省空手道后台管理系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="css/register.css">-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--		导入jquery-->
    <%--&lt;%&ndash; <script src="js/jquery-3.3.1.js"></script>&ndash;%&gt;
     <script src="js/bootstrap.js" rel="stylesheet"></script>--%>

</head>
<style>
    ul li p{
        font-size: 15px;
    }
</style>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Home</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Contact</a>
            </li>
        </ul>
        <!-- Right navbar links -->
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="" class="brand-link">
            <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">安徽空手道协会</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar" style="width: 250px">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block"><div id="adminname"></div></a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav  nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open" style="background-color:#343a40;">
                        <a href="#" class="nav-link active">
                            <p>
                                比赛信息
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="competitionInfo.html" class="nav-link">
                                    &ensp;&ensp;<p>赛事信息</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="playerInformation.html" class="nav-link">
                                    &ensp;&ensp;<p>报名选手</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="juryPanel.html" class="nav-link">
                                    &ensp;&ensp;<p>裁判小组</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="RefereeScore.html" class="nav-link">
                                    &ensp;&ensp;<p>裁判评分</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="groupInformation.html" class="nav-link">
                                    &ensp;&ensp;<p> 分组信息</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open" style="background-color:#343a40;">
                        <a href="#" class="nav-link active">
                            <p>
                                文件和图片管理
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="pictureUpload.jsp" class="nav-link">
                                    &ensp;&ensp;<p>图片上传</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="fileUpload.jsp" class="nav-link">
                                    &ensp;&ensp;<p>文件上传</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open" style="background-color:#343a40;">
                        <a href="#" class="nav-link active">
                            <p>
                                新闻中心
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="newsUpload.jsp" class="nav-link">
                                    &ensp;&ensp;<p>新闻上传</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="associationNewsUpload.jsp" class="nav-link">
                                    &ensp;&ensp;<p>协会动态信息</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open" style="background-color:#343a40;">
                        <a href="#" class="nav-link active">
                            <p>
                                通知公告
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="matchNewsUpload.jsp" class="nav-link">
                                    &ensp;&ensp;<p>比赛通知</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="trainNewsUpload.jsp" class="nav-link">
                                    &ensp;&ensp;<p>培训通知</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open" style="background-color:#343a40;">
                        <a href="#" class="nav-link active">
                            <p>
                                视频管理
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="videoUpload.jsp" class="nav-link">
                                    &ensp;&ensp;<p>视频上传</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open" style="background-color:#343a40;">
                        <a href="#" class="nav-link active">
                            <p>
                                图片管理
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="matchPictureUpload.jsp" class="nav-link">
                                    &ensp;&ensp;<p>赛事图片上传</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="activityPictureUpload.jsp" class="nav-link">
                                    &ensp;&ensp;<p>活动图片上传</p>
                                </a>
                            </li>
                        </ul>

                    </li>
                </ul>
                <ul class="nav  nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <li class="nav-item">
                        <a href="communityInfo.html" class="nav-link">
                            <p>
                                社团信息
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="adminSetting.html" class="nav-link">
                            <p>
                                管理员设置
                            </p>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>
</div>
<%--主体内容--%>
<div class="content-wrapper" >
    <div class="container-fluid">
        <font color="red">${msg}</font>
        <div class="row">
            <form action="AssociationNewsServlet" enctype="multipart/form-data" method="post" class="col-lg-12 col-sm-12"style="margin-top: 30px" onsubmit="return checkFiles()">
                <table border="1px" style="margin: auto">
                    <tbody>
                    <tr>
                        <th class="col-lg-2 col-sm-2">选择上传的图片</th>
                        <td class="col-lg-10 col-sm-10">
                            <input class="col-lg-9 col-sm-9" type="file" name="name">
<%--
                            <input class="col-lg-1 col-sm-1" type="button" value="删除" onclick="delItem(this)">
--%>
                        </td>
                    </tr>
                    </tbody>
                    <tr>
                        <td class="col-lg-2 col-sm-2">标题</td>
                        <td class="col-lg-10"style="padding: 0px"><input type="text" name="title" value=""class="col-lg-12"style="padding: 0px"/></td>
                    </tr>
                    <tr>
                        <td class="col-lg-2 col-sm-2">内容</td>
                        <td>
                            <div id="col-lg-10"></div>
                            <textarea id="context" name="context" rows="10"style="width: 100%;padding: 0px"></textarea>
                        </td>
                    </tr>
                    <%--<tr>
                        <td class="col-lg-2 col-sm-2" colspan="2">
                            <input type="button" value="添加" onclick="addItem()"/>
                        </td>
                    </tr>--%>
                    <tr>
                        <td class="col-lg-4 col-sm-4" colspan="2">
                            <input type="submit" class="submit" value="上传"/>
                        </td>
                    </tr>

                </table>
            </form>
        </div>
    </div>
    <center>
        <div style="margin-top: 10px">
            <a href="${pageContext.request.contextPath}/AssociationNewsListServlet">
                <button type="button" class="btn btn-success">查询</button></a>
        </div>
    </center>
</div>

<footer class="main-footer">
    <strong> <a href="#">安徽省空手道协会</a></strong>
    <%--    All rights reserved.--%>
    <div class="float-right d-none d-sm-inline-block">
        <b></b>
    </div>
</footer>

<div>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>

</div>

</body>
<script src="plugins/jquery/jquery.min.js"></script>

<script src="plugins/jquery/jquery.min.js"></script>

<script src="plugins/jquery-ui/jquery-ui.min.js"></script>

<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<%--<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>--%>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>

<script>
    /*var count=1;
    function addItem() {
        //生成tr
        var tr=document.createElement("tr");
        //生成th
        var th=document.createElement("th");
        th.setAttribute("class","col-lg-2 col-sm-2");
        th.innerHTML="选择上传的图片";
        //生成td
        var td=document.createElement("td");
        td.setAttribute("class","col-lg-10 col-sm-10");
        //生成input
        var finput=document.createElement("input");
        finput.setAttribute("class","col-lg-9 col-sm-9");
        finput.setAttribute("type","file");
        finput.setAttribute("name","name");

        var tinput=document.createElement("input");
        tinput.setAttribute("class","col-lg-1 col-sm-1");
        tinput.setAttribute("type","button");
        tinput.setAttribute("value","删除");
        tinput.setAttribute("onclick","delItem(this)");
        //添加到td
        td.appendChild(finput);
        td.appendChild(tinput);
        //将th和td添加到tr
        tr.appendChild(th);
        tr.appendChild(td);
        //把tr放到table的tbody
        var tbody=document.getElementsByTagName("tbody")[0];
        tbody.appendChild(tr);
        count++;
    }
    function delItem(btn) {
        if(count>1){
            //拿到tr节点
            var tr=btn.parentNode.parentNode;
            var tbody = document.getElementsByTagName("tbody")[0];
            tbody.removeChild(tr);
            count--;
        }
    }*/
    //判断所有的file是否都选中，如果有一个file没有选中则返回false，表单不提交
    function checkFiles() {
        var fileList=document.getElementsByName("name");
        for(var i=0;i<fileList.length;i++)
        {
            //该file组件没有被选中
            if(fileList[i].value==null||fileList[i].value=="")
            {
                alert("你的第"+(i+1)+"文件没有选中！！！");
                return false;
            }
        }
        return true;
    }

</script>

</html>
