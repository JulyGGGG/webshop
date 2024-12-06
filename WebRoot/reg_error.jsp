<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	 <script language=javascript>
  function chs()
  { if(document.form.username.value.trim()==null||document.form.username.value.trim()==''){
    alert("用户名不能为空");
	return false;
    }
   if(document.form.password.value.trim()==null||document.form.password.value.trim()==''){
    alert("密码不能为空");
	return false;
   }
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
    <span class="current"><a href="GoIndexAction.action">首页</a>&gt;&gt;用户注册</span>
    
    </div>
        
    <table class="background-table" border="0"  bgcolor="#e9e7e7" align="center" width=100% height="400px">
    <tr>
    <td width=20%>
    
    </td>
    
    <td class="center_content" width=100% height=400px align=center >
   <table>
    <tr>
    <td align="center"><h2>用户名已经存在，请重新填写注册信息</h2></td>
    
    </tr>
    <tr><td align=center height=30><h3>正在返回注册页面！若没有跳转<a href=register.jsp>点击这里</a></h3></td>
     </tr>
    </table>
      <% response.setHeader("refresh","3;url=register.jsp"); %>
	</td>
    </tr>
    </table>
  <div class="footer" align="center"><a href="admin/login.jsp">后台管理</a></div>
</div>
</body>
</html>
