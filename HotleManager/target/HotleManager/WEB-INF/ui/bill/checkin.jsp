<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html <%--PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"--%>>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<link href="../../css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="../../js/select-ui.min.js"></script>
<script type="text/javascript" src="../../editor/kindeditor.js"></script>
<script type="text/javascript" src="../../js/laydate/laydate.js"></script>

 <%-- <script type="text/javascript" src="../../js/bill/hotleVipla.js"></script>--%>
<script type="text/javascript">

    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345
	});
	$(".select2").uedSelect({
		width : 167
	});
	$(".select3").uedSelect({
		width : 100
	});

  $("#vname").blur(function(){
  /*  alert("jinlai");*/
    var vname = $("#vname").val();
    if(vname != '' && vname != null) {
      $.ajax({
        type: "GET",//请求类型
        url: "/hotelvip/vip",//请求的url
        data: {pid: vname},//请求参数
        dataType: "json",//ajax接口（请求url）返回的数据类型
        success: function (data) {//data：返回数据（json对象）
            if(data==null){//如果不是会员
              alert("非VIP会员！")
              $("#idNumber").val("");
              $("#phoneNumber").val("");
            }
          $("#idNumber").val(data.idNumber);
          $("#phoneNumber").val(data.phoneNumber);
        },
        error: function (data) {//当访问时候，404，500 等非200的错误状态码
          alert("加载VIP信息失败！");
        }
      });
    }
  });

});



</script>
</head>

<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">入住信息管理</a></li>
    <li><a href="#">添加入住信息</a></li>
  </ul>
</div>
<div class="formbody">
  <div class="formtitle"><span>入住信息</span></div>
  <div id="usual1" class="usual">
    <div id="tab1" class="tabson">
      <form method="post" action="/ruzhunxx/addRuzhu">
      <ul class="forminfo">
        <li>
          <label>房间号<b>*</b></label>
          <div class="vocation">
            <!--   <input name="" type="text" class="dfinput" value="请填写单位名称"  style="width:518px;"/>-->
            <select class="select1" name="roomid">
              <c:forEach var="room" items="${rooms}" varStatus="status">
              <option>${room.roomid}</option>
               </c:forEach>
              <option>其他</option>
            </select>
          </div>
        </li>
        <br />
        <li  style="margin-top:20px;">
          <label for="vname" >客人姓名<b>*</b></label>
          <div class="vocation">
            <input id="vname" name="rName" type="text" class="dfinput" placeholder="请填写客户姓名"  style="width:344px;"/>
          </div>
        </li>
        <br />
        <br />
        <br />
        <li>
          <label>性别<b>*</b></label>
          <input name="sex"  type="radio" value="男" checked="checked" />
          男&nbsp;&nbsp;&nbsp;&nbsp;
          <input name="sex"  type="radio" value="女" />
          女
        </li>
        <br />
        <li><cite>
          <label>会员<b>*</b></label>
          <input name="vip" type="radio" value="是" checked="checked" />
          是&nbsp;&nbsp;&nbsp;&nbsp;
          <input name="vip" type="radio" value="否" />
          否</cite></li>
        <br />
        <li>
          <label for="idNumber" >身份证号码<b>*</b></label>
          <div class="vocation">
            <input name="idNumber" id="idNumber" type="text" class="dfinput" placeholder="请填写客户身份证号码"  style="width:344px;"/>
          </div>
        </li>
        <br />
        <li>
          <label for="phoneNumber" >手机号码<b>*</b></label>
          <div class="vocation">
            <input name="phoneNumber" id="phoneNumber" type="text" class="dfinput" placeholder="请填写客户手机号码"  style="width:344px;"/>
          </div>
        </li>
        <br />
        <li>
          <label for="rRice" >押金<b>*</b></label>
          <div class="vocation">
            <input name="rRice" id="rRice" type="text" class="dfinput" placeholder="输入押金金额"  style="width:344px;"/>
          </div>
        </li>
        <br />
        <li>
          <label for="Calender" >入住时间<b>*</b></label>
          <div class="vocation">
            <input type="text" name="rtime" class="laydate-icon span1-1" id="Calendar" style="width:324px; height:30px; line-height:28px; text-indent:10px; "/>
<%--
            <input type="text" name="Calender"  class="laydate-icon span1-1" id="ftime" style="width:324px; height:30px; line-height:28px; text-indent:10px; "/>
--%>
          </div>
        </li>
        <br />
        <li>
          <label>&nbsp;</label>
          <input name="" type="submit" class="btn" value="入住"/>
        </li>
      </ul>
      </form>
    </div>
  </div>
  <script type="text/javascript">

      $("#usual1 ul").idTabs();
    </script>
  <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');

	!function(){
laydate.skin('qianhuang');
laydate({elem: '#Calendar'});
laydate.skin('qianhuang');
laydate({elem: '#Calendar2'});
}();
$(function dd(){
		var d=new Date(),str="";
		str+=(d.getFullYear()+"-");
		str+="0";
		str+=(d.getMonth()+1+"-");
		str+=d.getDate();
		$("#Calendar").attr("value",str);
		$("#Calendar2").attr("value",str);
	});

	</script>
</div>
</body>
</html>
