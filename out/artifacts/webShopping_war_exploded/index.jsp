<%@ page language="java"  import="java.util.*" contentType="text/html;charset=UTF-8"%>

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
<style>
        .banner {
            width: 1000px;
            height: 300px;
            position: relative;
            /* border: 1px solid red; */
            margin: auto;
        }
        .banner .wrap {
            width: 100%;
        }
        .banner .wrap .item {
            width: 100%;
        }
        .item img {
            width: 1000px;
            height: 300px;
            vertical-align: top;
            position: absolute;
        }
        .div1 {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translatey(-50%);
            cursor: pointer;
            width: 41px;
            height: 69px;
            font-size: 30px;
            line-height: 70px;
            text-align: center;
            color: #D6D8D4;
            background-color: rgba(0, 0, 0, 0.3);
        }
        .div2 {
            position: absolute;
            right: 0;
            top: 50%;
            transform: translatey(-50%);
            cursor: pointer;
            width: 41px;
            height: 69px;
            font-size: 30px;
            line-height: 70px;
            text-align: center;
            color: #D6D8D4;
            background-color: rgba(0, 0, 0, 0.3);
        }
        .pagenation {
            position: absolute;
            /* border: 1px solid red; */
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            bottom: 40px;
        }
        .pagenation>div {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background-color: white;
            margin-right: 10px;
            cursor: pointer;
        }
        .pagenation>div:last-child {
            margin-right: 0;
        }
    </style>
</head>

<body>
<s:if test="#request.listCommodityClasses">
    
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
strDate=    ww+"</font>";
document.write(strDate);
 </script></h3></div>
	  <!-- end of oferte_content-->
</div>

    <div class="crumb_navigation">
    <span class="current"><a href="GoIndexAction.action">首页</a></span>
    
    </div >
    <table class="background-table" border="0" cellpadding="0" cellspacing="0" align="center" width=100% height=400px>
    <tr>
    <td class="left_content">
    <table>
    <tr>
    <td class="title_box">商品分类</td></tr>
    <tr><td> 
    <ul class="left_menu">
   <s:iterator value="#request.listCommodityClasses"  status="stu" id="classes">
        	<s:if test="#stu.odd==true">
        		<li class="odd">
        			<s:a href="CommodityAction!findCommodityByClass.action?commodityClassId=%{#classes.commodityClassId} ">
        				<s:property value="#classes.commodityClassName"/>
        			</s:a>
        		</li>
        	</s:if>
        	<s:else>
        		<li class="even">
        			<s:a href="CommodityAction!findCommodityByClass.action?commodityClassId=%{#classes.commodityClassId} ">
        				<s:property value="#classes.commodityClassName"/>
        			</s:a>
        		</li>
        	</s:else>	
        </s:iterator>
  </ul><br/></td>
     </tr>
     <!--<tr>
     <td align=center class="title_box">
     </td></tr>
     <tr>
     <td align=center ><marquee height=120 direction="up"  scrollamount=3 onmouseover="this.stop()" onmouseout="this.start()">
<h3></h3></marquee>
     </td></tr>
    --></table>
    </td>
    
    <td class="center_content" width=100% height=400px>

	</td>
    
    <td class="right_content"><table>
    <tr>
    <td class="shopping_cart"><table>
    <tr><td class="cart_title">购物车  </td>
    </tr>
     <tr><td class="cart_icon">
     <a href="showCar.jsp" title="">
     <img src="images/shoppingcart.png" alt="" title="" width="48" height="48" border="0" /></a>
    </td>
     </tr></table>
     </td></tr>
     <tr><td> <c:if test="${empty sessionScope.user.username}">
     <form action="UserAction!login.action" name="form" method="post" >
   		<div class="title_box">用户登录</div>  
        <div class="border_box">
		<p>用户名：<input id="username" name="user.username" type="text" style="width:110px"/></p>
		<p>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input id="password" name="user.password" type="password"  style="width:110px"/></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;<input name="提交" type="submit" value="登录" />
        </p>
        <p align="center">&nbsp;&nbsp;&nbsp;[<a href="register.jsp">新用户注册</a>] &nbsp;</p>
        
     </div>  </form> </c:if>
     <c:if test="${!empty sessionScope.user.username}">
            <div class="title_box">用户信息</div>  
        <div class="border_box">
         <br/>
		<p>欢迎登陆：${sessionScope.user.username}</p><br/>
		<p> [<a href="OrderFormAction!findOrderFormByUserName.action?orderForm.username=${sessionScope.user.username}">我的订单</a>]&nbsp;&nbsp; [<a href="updatePass.jsp" >修改密码</a>] </p>
		<p> [<a href="userInfo.jsp">个人信息</a>]&nbsp;&nbsp; [<a href="UserAction!logout.action"  onclick="return confirm('确定要退出吗?')" >退出系统</a>] </p>
     </div>
        </c:if> 
      
    </td>
     </tr>
    </table></td>
    </tr>
    </table>
  
 
  <div class="footer" align="center"><a href="admin/login.jsp">后台管理</a></div>

</div>
</s:if>
    <s:else><s:action name="GoIndexAction" executeResult="true"></s:action>
    </s:else>

</body>
<script>
    var index = 0; //定义初始下标
    var banner = document.getElementsByClassName("banner")[0];
    var itemList = document.getElementsByClassName("item");
    var pagenationList = document.querySelectorAll(".pagenation>div");
    var pagenation = document.querySelector(".pagenation");
    itemList[0].style.opacity = 1;
    pagenationList[0].style.background = "blue" //初始第一张图对应的小圆点的颜色为蓝色
    var up = document.getElementsByClassName("div1")[0];
    var next = document.getElementsByClassName("div2")[0];
    //下一张图片（封装方便下面自动播放定时器调用）
    function nextFn() {
        index = index >= itemList.length - 1 ? 0 : ++index; //判断点击到了最后一张图片再次点击返回到第一张图
        for (var i = 0; i < itemList.length; i++) {
            itemList[i].style.opacity = 0; //图片透明度为0图片隐藏
            pagenationList[i].style.background = "white " //图片没显现小圆点的颜色为白色
        }
        itemList[index].style.transition = "opacity 1s ease .2s"
        itemList[index].style.opacity = 1; //图片透明度为1图片显现
        pagenationList[index].style.background = "blue" //图片显现小圆点的颜色为蓝色
    }
    next.onclick = nextFn; //下一张（点击事件）点击切换下一张图片
    up.onclick = function () { //上一张（点击事件）点击切换上一张图片
        index = index <= 0 ? itemList.length - 1 : --index; //判断点击到了第一张图片再次点击返回到最后一张图
        for (var i = 0; i < itemList.length; i++) {
            itemList[i].style.opacity = 0;
            pagenationList[i].style.background = "white"
        }
        itemList[index].style.transition = "opacity 1s ease .2s" //增加过渡效果
        itemList[index].style.opacity = 1;
        pagenationList[index].style.background = "blue"
    }
    //设置定时器，自动向下播放图片
    var t1 = setInterval(nextFn, 2000)
    banner.onmouseover = function () {
        clearInterval(t1);
    }
    banner.onmouseout = function () {
        t1 = setInterval(nextFn, 2000)
    }
    // 事件委托
    pagenation.onclick = function (event) {
        event = window.event || event
        console.log(event);
        if (event.target.className == "pagenation") {
            console.log("点击的是父元素");
        } else {
            var id = event.target.id;
            var photoIndex = null;
            for (var i = 0; i < pagenationList.length; i++) {
                pagenationList[i].style.background = "white"
                if (id.indexOf(i) >= 0) {
                    photoIndex = i;
                }
            }
            event.target.style.background = "blue"
            index = photoIndex; // 将小圆点对应的下标与图片下标对应
            for (var i = 0; i < itemList.length; i++) {
                itemList[i].style.opacity = 0;
            }
            itemList[index].style.transition = "opacity 1s ease .2s"
            itemList[photoIndex].style.opacity = 1;
        }
    }
</script>
</html>
