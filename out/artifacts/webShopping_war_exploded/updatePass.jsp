﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="js/style.css" />
<style>
.main_iframe {
	Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 92%
	</style>
<script type="text/javascript" src="js/boxOver.js"></script>
	<script>
function check(){

   var pass1=document.getElementById("password").value;
   var pass2=document.getElementById("repassword").value;
   if(pass1.length<8||pass1.length>20){
    //检查密码是否在指定的范围之内
    alert("密码长度必须在8~20位之间！");
	return false;
   }
   if(pass1!=pass2){
    
    alert("两次密码输入不同！");
	return false;
   }
  
}
</script>


 <script>
  function fun(t)
  {
    t.style.display='';
  }
  function show(t)
  {
    t.style.display='none';
    }
 </script>

 </head>
<body>

<div id="main_container">
	<div id="header">
	
	 <div id="divstr"><br/><h2>在线购物网站</h2><h3><script language=JavaScript >
var today = new Date();
var strDate = ( today.getYear() + "年" + (today.getMonth() + 1) + "月" + today.getDate() + "日");

var n_day = today.getDay();
var ww;

switch (n_day)
{
case 0:{ww =  "星期日";} break;
case 1:{ww =  "星期一";} break;
case 2:{ww =  "星期二";} break;
case 3:{ww =  "星期三";} break;
case 4:{ww =  "星期四";} break;
case 5:{ww =  "星期五";} break;
case 6:{ww =  "星期六";} break;
case 7:{ww =  "星期日";} break;
}
strDate="今天是:" + ww+"</font>";
document.write(strDate);
 </script></h3></div>
	  <!-- end of oferte_content-->
</div>

    
    <div class="crumb_navigation">
     <span class="current"><a href="GoIndexAction.action">首页</a> &gt;&gt;修改密码</span>
    
    </div>
    <div align="right"><form name="searchform" action="CommodityAction!findCommodityByName.action" method="post">
    <input id="commodity.commodityName" name="commodity.commodityName" style="font-size: 10pt; color: rgb(85, 85, 85);" onfocus="if(this.value=='请输入您所要查找的商品名称'){this.value='';}" onblur="if(this.value==''){this.value='请输入您所要查找的商品名称';}" value="请输入您所要查找的商品名称" size="25" maxlength="30" type="text" />
<input name="搜索" type="submit" value="搜索" />
    </form></div>
    
    <table class="background-table" border="0" cellpadding="0" cellspacing="0" align="center" width=100% height="400px" bgcolor="#e9e7e7">
    <tr>
    <td width=20%>
      </td>
      <c:if test="${empty sessionScope.user}">
      <%
response.sendRedirect("index.jsp");
%>
      </c:if>
    <c:if test="${!empty sessionScope.user}">
    <td class="center_content" width=100% height=500px align="center" >
    <form name="myform" method="post" action="UserAction!upPass.action" id="myform" onsubmit="return check();">
   
  <table width=500 border="0" align="center" bgcolor="#e9e7e7">
  <tr ><td  colspan=3  bgcolor="#c0c0c0" align="center" ><h3>修改密码</h3></td> 
     
    </tr>
    
    <tr> 
     <td height=30>密码:
      <input type="hidden" name="user.userId" value="${sessionScope.user.userId}"/>
       <input type="hidden" name="user.username" value="${sessionScope.user.username}"/>
    </td>
      <td width=100> 
        <input id="password" type="password" name="user.password" size="20" onclick="fun(msg1)"  onblur="show(msg1)"/>
      </td>
       <td width=180> 
          <div  id=msg1 style="color:#ff0000;display:none;">密码长度为8至15位</div>
      </td>
    </tr>
    <tr> 
      <td height=30 >确认密码:
      <input type="hidden" name="user.name" value="${sessionScope.user.name}"/>
      <input type="hidden" name="user.sex" value="${sessionScope.user.sex}"/>
      <input type="hidden" name="user.phone" value="${sessionScope.user.phone}"/>
      <input type="hidden" name="user.post" value="${sessionScope.user.post}"/>
      <input type="hidden" name="user.address" value="${sessionScope.user.address}"/>
      <input type="hidden" name="user.email" value="${sessionScope.user.email}"/>
      </td>
      <td width=100> 
        <input id="repassword" type="password" name="pwd2" size="20" onclick="fun(msg2)"  onblur="show(msg2)"/>
      </td>
       <td width=180> 
        <div  id=msg2 style="color:#ff0000;display:none;">两次输入的密码必须相同</div>
      </td>
    </tr>
  <tr><td><input type="hidden" name="user.money" value="1000"/>
  </td><td> <input type="submit" name="submit1" value="提交" />
    <input type="reset" name="Submit2" value="重置" /></td>
  </tr>
  <tr>
  <td colspan="3"><h3>${upPass}
   <c:if test="${!empty upPass}">请重新登录！<br/>
   正在跳转到登录页面！如果没有跳转请<a href="login.jsp">点击这里</a>
    <% response.setHeader("refresh","3;url=login.jsp");%> </c:if></h3>
   </td>
  </tr>
  </table>
</form>
	</td></c:if>
    </tr>
    </table>
   <div class="footer" align="center"><a href="admin/login.jsp">后台管理</a></div>
</div>

</body>
</html>

