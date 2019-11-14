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
    <li><a href="#">入住信息查询</a></li>
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
        <form method="post" name="serch" action="/ruzhunxx/list">
          <tr>
            <td class="zi"><span>选择分类：</span></td>
            <td><select name="choose">
                <option value="1">房间号</option>
                <option value="2">客人姓名</option>
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
        <th>房间号</th><th>房间类型</th>
        <th>客人姓名</th>
        <th>性别</th>
        <th>身份证号码</th>
        <th>手机号码</th>
        <th>押金</th>
        <th>入住时间</th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="hotle" items="${hotleRuzhuXxList}" varStatus="status">
      <tr>
        <td><input name="" type="checkbox" value="" checked="checked"/></td>
        <td name="rid">${hotle.rid}</td>
        <td name="roomid">${hotle.roomid }</td>
        <td>${hotle.roomtype }</td>
        <td name="RName">${hotle.RName}</td>
        <td>${hotle.sex}</td>
        <td>${hotle.idNumber }</td>
        <td>${hotle.phoneNumber}</td>
        <td name="RRice">${hotle.RRice}</td>
        <td name="rtime" id="rtime">
          <span>
            <fmt:formatDate value="${hotle.rtime }" pattern="yyyy-MM-dd HH:mm:ss"/>
          </span>
        </td>
       <%-- <td><input name="" type="checkbox" value="" /></td>
        <td>1</td>
        <td>8201</td><td>单人间</td>
        <td>赵子龙</td>
        <td>男</td>
        <td>411311199001015599</td>
        <td>13012345678</td>
        <td>200</td>
        <td>2016-06-01</td>--%>
        <td><a href="/ruzhunxx/outRuzhu?rid=${hotle.rid}&roomid=${hotle.roomid}&RName=${hotle.RName}&RRice=${hotle.RRice}&rtime=${hotle.rtime}" class="tablelink"<%-- roomid=${hotle.roomid} RNme=${hotle.RName} RRice=${hotle.RRice} rtime=${hotle.rtime}--%>>退房</a> <a href="#" class="tablelink"> 删除</a></td>
       </tr>
      </c:forEach>
    </tbody>
  </table>
  <div class="pagin">
    <div class="message">共<i class="blue">${pages.totalCount }</i>条记录，当前显示第&nbsp;<i class="blue">${pages.currentPageNo }</i>页</div>
   <%-- <div class="dataTables_info" id="datatable-responsive_info"
         role="status" aria-live="polite">共${pages.totalCount }条记录
      ${pages.currentPageNo }/${pages.totalPageCount }页</div>
  </div>--%>

    <ul class="paginList">
      <li class="paginItem"><a href="/ruzhunxx/list?pageIndex=${pages.currentPageNo-1}"><span class="pagepre"></span></a></li>
      <c:forEach begin="1" end="${pages.totalPageCount }" varStatus="status">
        <li class="paginItem"><a href="/ruzhunxx/list?pageIndex=${status.index}">${status.index}</a></li>
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
    var rtime=$("#rtime").val()
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
