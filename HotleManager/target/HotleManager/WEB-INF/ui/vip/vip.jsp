<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
</head>

<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="main.html">首页</a></li>
    <li><a href="#">入住管理</a></li>
    <li><a href="#">入住信息查询</a></li>
  </ul>
</div>
<div class="rightinfo">
  <div class="tools">
    <ul class="toolbar">
      <li class="click"><span><img src="../../images/t01.png" /></span>添加</li>
      <li class="click"><span><img src="../../images/t02.png" /></span>修改</li>
      <li><span><img src="../../images/t03.png" /></span>删除</li>
    </ul>
    <div class="toolbar1">
      <table>
        <form method="post" name="serch" action="/hotelvip/list">
          <tr>
            <td class="zi"><span>选择分类：</span></td>
            <td><select name="choose">
                <option value="1">会员卡号</option>
                <option value="2">会员姓名</option>
                <option value="3">手机号码</option>
                <option value="4">身份证号码</option>
              </select></td>
            <td class="zi"><span>关键字：</span></td>
            <td><input name="likes" type="text" placeholder="与分类关联" value=""/></td>
            <td><input type="submit" value="查询" class="button"/></td>
          </tr>
        </form>
      </table>
    </div>
  </div>
  <table class="tablelist">
    <thead>
      <tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>编号</th>
        <th>会员卡号</th>
        <th>会员姓名</th>
        <th>性别</th>
        <th>身份证号码</th>
        <th>手机号码</th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
      <%--<tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>1</td>
        <td>8201</td>
        <td>赵子龙</td>
        <td>男</td>
        <td>411311199001015599</td>
        <td>13012345678</td>
       
        <td> <a href="#" class="tablelink"> 删除</a></td>
      </tr>--%>
      <c:forEach var="vip" items="${hotleVips}" varStatus="status">
        <tr>
          <td><input name="" type="checkbox" value="" checked="checked"/></td>
          <td name="rid">${vip.vid}</td>
          <td name="roomid">${vip.cardNumber }</td>
          <td>${vip.vname }</td>
          <td name="RName">${vip.sex}</td>
          <td>${vip.idNumber}</td>
          <td>${vip.phoneNumber}</td>
          <td><a href="/ruzhunxx/outRuzhu?vid=${vip.vid}" class="tablelink">管理</a> <a href="#" class="tablelink"> 删除</a></td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <div class="pagin">
    <div class="message">共<i class="blue">${pages.totalCount }</i>条记录，当前显示第&nbsp;<i class="blue">${pages.currentPageNo }</i>页</div>
    <ul class="paginList">
      <li class="paginItem"><a href="/hotelvip/list?pageIndex=${pages.currentPageNo-1}"><span class="pagepre"></span></a></li>
      <c:forEach begin="1" end="${pages.totalPageCount }" varStatus="status">
        <li class="paginItem"><a href="/hotelvip/list?pageIndex=${status.index}">${status.index}</a></li>
      </c:forEach>
      <li class="paginItem"><a href="/hotelvip/list?pageIndex=${pages.currentPageNo+1}"><span class="pagenxt"></span></a></li>
    </ul>
  </div>
<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
