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

</head>
<body>

<div id="main_container">
	<div id="header">
	
	 <div id="divstr"><br/><h2>在线购物网站</h2><h3>
<script language=JavaScript >
var today = new Date();
var strDate = ( today.getYear() + "年" + (today.getMonth() + 1) + "月" + today.getDate() + "日");
/*var hh = today.getHours();
if(hh<10) hh = '0' + hh;
var mm = today.getMinutes();
if(mm<10) mm = '0' + mm;
var ss = today.getSeconds();
if(ss<10) ss = '0' + ss;
*/
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
    <span class="current"><a href="GoIndexAction.action">首页</a> &gt;&gt;${sessionScope.commodityById.commodityName }
     </span>
    
    </div><div align="right"><form name="searchform" action="CommodityAction!findCommodityByName.action" method="post">
    <input id="commodity.commodityName" name="commodity.commodityName" style="font-size: 10pt; color: rgb(85, 85, 85);" onfocus="if(this.value=='请输入您所要查找的商品名称'){this.value='';}" onblur="if(this.value==''){this.value='请输入您所要查找的商品名称';}" value="请输入您所要查找的商品名称" size="25" maxlength="30" type="text" />
<input name="搜索" type="submit" value="搜索" />
    </form></div>
    <table class="background-table" border="0" cellpadding="0" cellspacing="0" align="center" width=100% height=400px>
    <tr>
    <td width=20%>
     </td>
    
    <td class="center_content" width=60% >
     
    <div class="center_content">
     <div class="center_title_bar">${sessionScope.commodityById.commodityName }</div>
     <div class="prod_box_big">
       <div class="top_prod_box_big"></div>
       <div class="center_prod_box_big">
         <div class="product_img_big"> 
             <div><img src="product/${sessionScope.commodityById.image }" alt="${sessionScope.commodityById.commodityName }" title="${sessionScope.commodityById.commodityName }" border="0" width="144px" height="144px"/></div>
         </div>
         <div class="details_big_box">
           <div class="product_title_big">${sessionScope.commodityById.commodityName }</div>
           <div class="specifications"> 
           	生成厂商: <span class="blue">${sessionScope.commodityById.manufacturer }</span><br />
              商品编号: <span class="blue">${sessionScope.commodityById.commodityId }</span><br />
              总数量: &nbsp;&nbsp;&nbsp;&nbsp;<span class="blue">${sessionScope.commodityById.commodityAmount }</span><br />
              剩余数量: <span class="blue">${sessionScope.commodityById.commodityLeaveNum }</span><br />
           商城价格: <span class="blue">${sessionScope.commodityById.webPrice }</span><br />
           </div>
           <div class="prod_price_big"><span class="reduce"></span> <span class="price"></span></div>
           <a href="AddToCarAction?commodity.commodityId=${sessionScope.commodityById.commodityId }" class="addtocart">添加到购物车</a></div>
            </div>
       <div class="bottom_prod_box_big"></div>
     </div>
	     <div class="prod_box_big">
	    
			<table border=0 cellspacing="2">
			<tr>
			<td ><font size=3> ${sessionScope.commodityById.commodityDepict }</font></td></tr>
			
 </table>
	     </div>
     </div> 
	</td>
    
    <td width=20%></td>
    </tr>
    </table>
  
 
  <div class="footer" align="center"><a href="admin/login.jsp">后台管理</a></div>

</div>
<!-- end of main_container -->
</body>
</html>