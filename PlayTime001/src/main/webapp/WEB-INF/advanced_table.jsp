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
    <link href="/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
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

<section id="container">
    <%--头部--%>
    <%@include file="top.jsp" %>
        <%--左侧栏--%>
    <%@include file="left.jsp" %>

        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">
                <h3><i class="fa fa-angle-right"></i> Advanced Table Example</h3>
                <div class="row mb">
                    <!-- page start-->
                    <div class="content-panel">
                        <div class="adv-table">
                            <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                                <thead>
                                <tr>
                                    <th>Rendering engine</th>
                                    <th>Browser</th>
                                    <th class="hidden-phone">Platform(s)</th>
                                    <th class="hidden-phone">Engine version</th>
                                    <th class="hidden-phone">CSS grade</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="gradeX">
                                    <td>Trident</td>
                                    <td>Internet Explorer 4.0</td>
                                    <td class="hidden-phone">Win 95+</td>
                                    <td class="center hidden-phone">4</td>
                                    <td class="center hidden-phone">X</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Trident</td>
                                    <td>Internet Explorer 5.0</td>
                                    <td class="hidden-phone">Win 95+</td>
                                    <td class="center hidden-phone">5</td>
                                    <td class="center hidden-phone">C</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Trident</td>
                                    <td>Internet Explorer 5.5</td>
                                    <td class="hidden-phone">Win 95+</td>
                                    <td class="center hidden-phone">5.5</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Trident</td>
                                    <td>Internet Explorer 6</td>
                                    <td class="hidden-phone">Win 98+</td>
                                    <td class="center hidden-phone">6</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Trident</td>
                                    <td>Internet Explorer 7</td>
                                    <td class="hidden-phone">Win XP SP2+</td>
                                    <td class="center hidden-phone">7</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Trident</td>
                                    <td>AOL browser (AOL desktop)</td>
                                    <td class="hidden-phone">Win XP</td>
                                    <td class="center hidden-phone">6</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 1.0</td>
                                    <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                    <td class="center hidden-phone">1.7</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 1.5</td>
                                    <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                    <td class="center hidden-phone">1.8</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 2.0</td>
                                    <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                    <td class="center hidden-phone">1.8</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 3.0</td>
                                    <td class="hidden-phone">Win 2k+ / OSX.3+</td>
                                    <td class="center hidden-phone">1.9</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Camino 1.0</td>
                                    <td class="hidden-phone">OSX.2+</td>
                                    <td class="center hidden-phone">1.8</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Camino 1.5</td>
                                    <td class="hidden-phone">OSX.3+</td>
                                    <td class="center hidden-phone">1.8</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Netscape 7.2</td>
                                    <td class="hidden-phone">Win 95+ / Mac OS 8.6-9.2</td>
                                    <td class="center hidden-phone">1.7</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Netscape Browser 8</td>
                                    <td class="hidden-phone">Win 98SE+</td>
                                    <td class="center hidden-phone">1.7</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Netscape Navigator 9</td>
                                    <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                    <td class="center hidden-phone">1.8</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.0</td>
                                    <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                    <td class="center hidden-phone">1</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.1</td>
                                    <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                    <td class="center hidden-phone">1.1</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.2</td>
                                    <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                    <td class="center hidden-phone">1.2</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.3</td>
                                    <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                    <td class="center hidden-phone">1.3</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.4</td>
                                    <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                    <td class="center hidden-phone">1.4</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.5</td>
                                    <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                    <td class="center hidden-phone">1.5</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.6</td>
                                    <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                    <td class="center hidden-phone">1.6</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.7</td>
                                    <td class="hidden-phone">Win 98+ / OSX.1+</td>
                                    <td class="center hidden-phone">1.7</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Mozilla 1.8</td>
                                    <td class="hidden-phone">Win 98+ / OSX.1+</td>
                                    <td class="center hidden-phone">1.8</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Seamonkey 1.1</td>
                                    <td class="hidden-phone">Win 98+ / OSX.2+</td>
                                    <td class="center hidden-phone">1.8</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Epiphany 2.20</td>
                                    <td class="hidden-phone">Gnome</td>
                                    <td class="center hidden-phone">1.8</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>Safari 1.2</td>
                                    <td class="hidden-phone">OSX.3</td>
                                    <td class="center hidden-phone">125.5</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>Safari 1.3</td>
                                    <td class="hidden-phone">OSX.3</td>
                                    <td class="center hidden-phone">312.8</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>Safari 2.0</td>
                                    <td class="hidden-phone">OSX.4+</td>
                                    <td class="center hidden-phone">419.3</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>Safari 3.0</td>
                                    <td class="hidden-phone">OSX.4+</td>
                                    <td class="center hidden-phone">522.1</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>OmniWeb 5.5</td>
                                    <td class="hidden-phone">OSX.4+</td>
                                    <td class="center hidden-phone">420</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>iPod Touch / iPhone</td>
                                    <td class="hidden-phone">iPod</td>
                                    <td class="center hidden-phone">420.1</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Webkit</td>
                                    <td>S60</td>
                                    <td class="hidden-phone">S60</td>
                                    <td class="center hidden-phone">413</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 7.0</td>
                                    <td class="hidden-phone">Win 95+ / OSX.1+</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 7.5</td>
                                    <td class="hidden-phone">Win 95+ / OSX.2+</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 8.0</td>
                                    <td class="hidden-phone">Win 95+ / OSX.2+</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 8.5</td>
                                    <td class="hidden-phone">Win 95+ / OSX.2+</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 9.0</td>
                                    <td class="hidden-phone">Win 95+ / OSX.3+</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 9.2</td>
                                    <td class="hidden-phone">Win 88+ / OSX.3+</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera 9.5</td>
                                    <td class="hidden-phone">Win 88+ / OSX.3+</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Opera for Wii</td>
                                    <td class="hidden-phone">Wii</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Nokia N800</td>
                                    <td class="hidden-phone">N800</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Presto</td>
                                    <td>Nintendo DS browser</td>
                                    <td class="hidden-phone">Nintendo DS</td>
                                    <td class="center hidden-phone">8.5</td>
                                    <td class="center hidden-phone">C/A<sup>1</sup></td>
                                </tr>
                                <tr class="gradeC">
                                    <td>KHTML</td>
                                    <td>Konqureror 3.1</td>
                                    <td class="hidden-phone">KDE 3.1</td>
                                    <td class="center hidden-phone">3.1</td>
                                    <td class="center hidden-phone">C</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>KHTML</td>
                                    <td>Konqureror 3.3</td>
                                    <td class="hidden-phone">KDE 3.3</td>
                                    <td class="center hidden-phone">3.3</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>KHTML</td>
                                    <td>Konqureror 3.5</td>
                                    <td class="hidden-phone">KDE 3.5</td>
                                    <td class="center hidden-phone">3.5</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>Tasman</td>
                                    <td>Internet Explorer 4.5</td>
                                    <td class="hidden-phone">Mac OS 8-9</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">X</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Tasman</td>
                                    <td>Internet Explorer 5.1</td>
                                    <td class="hidden-phone">Mac OS 7.6-9</td>
                                    <td class="center hidden-phone">1</td>
                                    <td class="center hidden-phone">C</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Tasman</td>
                                    <td>Internet Explorer 5.2</td>
                                    <td class="hidden-phone">Mac OS 8-X</td>
                                    <td class="center hidden-phone">1</td>
                                    <td class="center hidden-phone">C</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Misc</td>
                                    <td>NetFront 3.1</td>
                                    <td>Embedded devices</td>
                                    <td class="center">-</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Misc</td>
                                    <td>NetFront 3.4</td>
                                    <td class="hidden-phone">Embedded devices</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">A</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>Misc</td>
                                    <td>Dillo 0.8</td>
                                    <td class="hidden-phone">Embedded devices</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">X</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>Misc</td>
                                    <td>Links</td>
                                    <td class="hidden-phone">Text only</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">X</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>Misc</td>
                                    <td>Lynx</td>
                                    <td class="hidden-phone">Text only</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">X</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Misc</td>
                                    <td>IE Mobile</td>
                                    <td class="hidden-phone">Windows Mobile 6</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">C</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Misc</td>
                                    <td>PSP browser</td>
                                    <td class="hidden-phone">PSP</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">C</td>
                                </tr>
                                <tr class="gradeU">
                                    <td>Other browsers</td>
                                    <td>All others</td>
                                    <td class="hidden-phone">-</td>
                                    <td class="center hidden-phone">-</td>
                                    <td class="center hidden-phone">U</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- page end-->
                </div>
                <!-- /row -->
            </section>
            <!-- /wrapper -->
        </section>
        <!-- /MAIN CONTENT -->
        <!--main content end-->

        <%--尾部--%>
        <%@include file="bottom.jsp" %>
</section>
<!-- js placed at the end of the document so the pages load faster -->
<script src="/lib/jquery/jquery.min.js"></script>
<script src="/lib/bootstrap/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="/lib/jquery.dcjqaccordion.2.7.js"></script>
<script src="/lib/jquery.scrollTo.min.js"></script>
<script src="/lib/jquery.nicescroll.js" type="text/javascript"></script>
<!--common script for all pages-->
<script src="/lib/common-scripts.js"></script>
<!--script for this page-->
<%--<script src="/lib/jquery-2.1.4.min.js"></script>--%>
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
