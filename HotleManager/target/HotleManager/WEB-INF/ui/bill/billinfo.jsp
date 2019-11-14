<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/jquery.js"></script>
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
    <li><a href="#">消费信息</a></li>
  </ul>
</div>
<div class="rightinfo">
  <div class="tools">
    <ul class="toolbar">
      <li class="click"><span><img src="../../images/t01.png" /></span>添加</li>
      <li class="click"><span><img src="../../images/t02.png" /></span>修改</li>
      <li><span><img src="images/t03.png" /></span>删除</li>
    </ul>
    
    <div class="toolbar1">
      <table>
        <form method="post" name="serch">
          <tr>
            <td class="zi"><span>选择分类：</span></td>
            <td><select name="choose">
              <option value="1">房间号</option>
              <option value="2">客人姓名</option>
              <option value="3">入住天数</option>
              <option value="4">入住时间</option>
            </select></td>
            <td class="zi"><span>关键字：</span></td>
            <td><input  name="likes" type="text" placeholder="与分类关联"/></td>
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
        <th>房间号</th>
        <th>客人姓名</th>
        <th>入住时间</th>
        <th>退房时间</th>
        <th>入住天数</th>
        <th>房间单价</th>
        <th>住宿费</th>
        <th>其他消费</th>
        <th>结算金额</th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="xiaofei" items="${HotelXiaofeiList}" varStatus="status">
        <tr>
          <td><input name="" type="checkbox" value="" checked="checked"/></td>
          <td name="rid">${xiaofei.id}</td>
          <td name="roomid">${xiaofei.roomid }</td>
          <td>${xiaofei.RName}</td>
          <td name="rtime" id="rtime">
          <span>
             <fmt:formatDate value="${xiaofei.rtime }" pattern="yyyy-MM-dd HH:mm:ss"/>
          </span>
          </td>
          <td name="rtime" id="rtime">
          <span>
               <fmt:formatDate value="${xiaofei.ttime }" pattern="yyyy-MM-dd HH:mm:ss"/>
          </span>
          </td>
          <td>${xiaofei.days }</td>
          <td>${xiaofei.price}</td>
          <td >${xiaofei.ruzhuPrice}</td>
          <td >${xiaofei.otherePrice}</td>
          <td >${xiaofei.countPrice}</td>
          <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink"> 删除</a></td>
         <%-- <td><a href="/ruzhunxx/outRuzhu" class="tablelink"&lt;%&ndash; roomid=${hotle.roomid} RNme=${hotle.RName} RRice=${hotle.RRice} rtime=${hotle.rtime}&ndash;%&gt;>退房</a> <a href="#" class="tablelink"> 删除</a></td>--%>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <div class="pagin">
    <div class="message">共<i class="blue">${pages.totalCount }</i>条记录，当前显示第&nbsp;<i class="blue">${pages.currentPageNo }</i>页</div>
    <ul class="paginList">
      <li class="paginItem"><a href="/ruzhunxx/list?pageIndex=${pages.currentPageNo-1}"><span class="pagepre"></span></a></li>
      <c:forEach begin="1" end="${pages.totalPageCount }" varStatus="status">
        <li class="paginItem"><a href="/ruzhunxx/xiaoFei?pageIndex=${status.index}">${status.index}</a></li>
      </c:forEach>
      <li class="paginItem"><a href="/ruzhunxx/list?pageIndex=${pages.currentPageNo+1}"><span class="pagenxt"></span></a></li>
    </ul>
  </div>
  <div class="tip">
    <div class="tiptop"><span>提示信息</span><a></a></div>
    <div class="tipinfo"> <span><img src="images/ticon.png" /></span>
      <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite> </div>
    </div>
    <div class="tipbtn">
      <input name="" type="button"  class="sure" value="确定" />
      &nbsp;
      <input name="" type="button"  class="cancel" value="取消" />
    </div>
  </div>
</div>
<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
