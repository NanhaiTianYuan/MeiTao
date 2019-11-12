<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>我的网页模板</title>

    <!-- Favicons -->
    <link href="/img/favicon.png" rel="icon">
    <link href="/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <link href="/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="/lib/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="/lib/bootstrap-daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="/lib/bootstrap-timepicker/compiled/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="/lib/bootstrap-datetimepicker/datertimepicker.css" />
    <!-- Custom styles for this template -->
    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/style-responsive.css" rel="stylesheet">

    <!-- =======================================================
      Template Name: Dashio
      Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
      Author: TemplateMag.com
      License: https://templatemag.com/license/
    ======================================================= -->
</head>

<body>

  <%--左侧栏--%>
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
                <p class="centered"><a href="profile.html"><img src="/img/ui-sam.jpg" class="img-circle" width="80"></a></p>
                <h5 class="centered">南海有糖</h5>
                <li class="mt">
                    <a href="/login/table">
                        <i class="fa fa-dashboard"></i>
                        <span>显示信息</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-desktop"></i>
                        <span>UI 元素</span>
                    </a>
                    <ul class="sub">
                        <li><a href="general.html">General 一般</a></li>
                        <li><a href="buttons.html">Buttons 按钮</a></li>
                        <li><a href="panels.html">Panels 面板</a></li>
                        <li><a href="font_awesome.html">Font Awesome 字体很棒</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-cogs"></i>
                        <span>Components 组件</span>
                    </a>
                    <ul class="sub">
                        <li><a href="grids.html">Grids 网格</a></li>
                        <li><a href="calendar.html">Calendar 日历</a></li>
                        <li><a href="gallery.html">Gallery 画廊</a></li>
                        <li><a href="todo_list.html">Todo List 待办事项清单</a></li>
                        <li><a href="dropzone.html">Dropzone 文件上传</a></li>
                        <li><a href="inline_editor.html">Inline Editor 内联编辑器</a></li>
                        <li><a href="file_upload.html">多文件上传</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Extra Pages 额外页面</span>
                    </a>
                    <ul class="sub">
                        <li><a href="blank.html">Blank Page 空白页</a></li>
                        <li><a href="login.html">Login 登录 </a></li>
                        <li><a href="lock_screen.html">Lock Screen 锁屏</a></li>
                        <li><a href="profile.html">Profile 轮廓</a></li>
                        <li><a href="invoice.html">Invoice 发票</a></li>
                        <li><a href="pricing_table.html">Pricing Table定价表</a></li>
                        <li><a href="faq.html">FAQ 常见问题</a></li>
                        <li><a href="404.html">404 Error</a></li>
                        <li><a href="500.html">500 Error</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a class="active" href="javascript:;">
                        <i class="fa fa-tasks"></i>
                        <span>Forms 形式</span>
                    </a>
                    <ul class="sub">
                        <li><a href="form_component.html">Form Components 表单组件</a></li>
                        <li class="active"><a href="advanced_form_components.html">Advanced Components 高级组件</a></li>
                        <li><a href="form_validation.html">Form Validation 表格验证</a></li>
                        <li><a href="contactform.html">Contact Form 联系表</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-th"></i>
                        <span>Data Tables 表数据</span>
                    </a>
                    <ul class="sub">
                        <li><a href="basic_table.html">Basic Table 基本表</a></li>
                        <li><a href="responsive_table.html">Responsive Table 响应表</a></li>
                        <li><a href="advanced_table.html">Advanced Table 高级表</a></li>
                    </ul>
                </li>
                <li>
                    <a href="inbox.html">
                        <i class="fa fa-envelope"></i>
                        <span>Mail 邮件 </span>
                        <span class="label label-theme pull-right mail-info">2</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class=" fa fa-bar-chart-o"></i>
                        <span>Charts 图标</span>
                    </a>
                    <ul class="sub">
                        <li><a href="morris.html">Morris 莫里斯</a></li>
                        <li><a href="chartjs.html">Chartjs</a></li>
                        <li><a href="flot_chart.html">Flot Charts 船型图</a></li>
                        <li><a href="xchart.html">xChart 表图</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-comments-o"></i>
                        <span>Chat Room 聊天室</span>
                    </a>
                    <ul class="sub">
                        <li><a href="lobby.html">Lobby 大堂</a></li>
                        <li><a href="chat_room.html"> Chat Room 聊天室 </a></li>
                    </ul>
                </li>
                <li>
                    <a href="google_maps.html">
                        <i class="fa fa-map-marker"></i>
                        <span>Google Maps 谷歌地图 </span>
                    </a>
                </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>


<!-- js placed at the end of the document so the pages load faster -->
<script src="/lib/jquery/jquery.min.js"></script>
<script src="/lib/bootstrap/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="/lib/jquery.scrollTo.min.js"></script>
<script src="/lib/jquery.nicescroll.js" type="text/javascript"></script>
<!--common script for all pages-->
<script src="/lib/common-scripts.js"></script>
<!--script for this page-->
<%--  <script src="/lib/jquery-2.1.4.min.js"></script>--%>
<script src="/lib/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript" src="/lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
<script type="text/javascript" src="/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="/lib/bootstrap-daterangepicker/date.js"></script>
<script type="text/javascript" src="/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="/lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="/lib/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script src="/lib/advanced-form-components.js"></script>

</body>

</html>
