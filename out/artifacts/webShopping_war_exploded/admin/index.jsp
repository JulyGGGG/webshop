<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>在线购物网站管理</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="images/style.css" type=text/css rel=stylesheet>
<STYLE>
body {
    background-image: url('images/bggg.jpg'); /* 设置背景图片 */
    background-repeat: no-repeat; /* 背景图片不重复 */
    background-attachment: fixed; /* 背景图片固定，不随页面滚动 */
    background-position: center center; /* 背景图片居中显示 */
    background-size: cover; /* 背景图片覆盖整个页面 */
}
.main_left {
	TABLE-LAYOUT: auto;
	BACKGROUND: url(images/left_bg.gif)
}

.main_left_top {
	BACKGROUND: url(images/Menu_BG1.gif);
	PADDING-TOP: 5px
}

.main_left_title {
	PADDING-LEFT: 15px;
	FONT-WEIGHT: bold;
	FONT-SIZE: 14px;
	COLOR: #fff;
	TEXT-ALIGN: left
}

.left_iframe {
	BACKGROUND: none transparent scroll repeat 0% 0%;
	VISIBILITY: inherit;
	WIDTH: 180px;
	HEIGHT: 92%
}

.main_iframe {
	Z-INDEX: 1;
	VISIBILITY: inherit;
	WIDTH: 100%;
	HEIGHT: 92%
}

TABLE {
	FONT-SIZE: 12px;
	FONT-FAMILY: tahoma, 宋体, fantasy
}

TD {
	FONT-SIZE: 12px;
	FONT-FAMILY: tahoma, 宋体, fantasy
}
</STYLE>

<SCRIPT language=javascript src="images/admin.js" type=text/javascript></SCRIPT>

<SCRIPT language=javascript src="images/Admin(1).js"></SCRIPT>

<SCRIPT>
var status = 1;
var Menus = new DvMenuCls;
document.onclick=Menus.Clear;
function switchSysBar(){
     if (1 == window.status){
		  window.status = 0;
          switchPoint.innerHTML = '<img src="images/left.gif">';
          document.all("frmTitle").style.display="none";
     }
     else{
		  window.status = 1;
          switchPoint.innerHTML = '<img src="images/right.gif">';
          document.all("frmTitle").style.display="";
     }
}
</SCRIPT>

<META content="MSHTML 6.00.2900.5726" name=GENERATOR>
</HEAD>
<BODY style="MARGIN: 0px">
	<!--导航部分-->

	<c:if test="${!empty sessionScope.admin.username}">
		<DIV class=top_table    align="center" style="margin:1px auto;width:80%">
			<DIV class=top_table_leftbg>
				<DIV class=system_logo></DIV>
				<DIV class=menu>

				</DIV>
			</DIV>
		</DIV>

		<!--导航部分结束-->
		<TABLE style="BACKGROUND: #337abb" height="92%" cellSpacing=0 align="center"
			cellPadding=0 width="80%" border=0>
			<TBODY>
				<TR>
					<TD class=main_left id=frmTitle vAlign=top align=center>
						<TABLE class=main_left_top cellSpacing=0 cellPadding=0
							width="100%" border=0>
							<TBODY>
								<TR height=32>
									<TD vAlign=top></TD>
									<TD vAlign=top align=right></TD>
								</TR>
							</TBODY>
						</TABLE> <IFRAME class=left_iframe id=frmleft name=frmleft src="left.htm"
							frameBorder=0 allowTransparency="true"></IFRAME>
						<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
							<TBODY>
								<TR height=32>
									<TD vAlign=top></TD>
									<TD vAlign="bottom" align="center"></TD>
									<TD vAlign=top align=right></TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>

					<TD vAlign=top width="100%" bgColor=#337abb>
						<TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=#c4d8ed
							border=0>
							<TBODY>
								<TR height=32>
									<TD vAlign=top width=10 background=images/bg2.gif><IMG
										alt="" src="images/teble_top_left.gif"></TD>
									<TD width=28 background=images/bg2.gif></TD>
									<TD background=images/bg2.gif><SPAN style="FLOAT: left">在线购物网站管理</SPAN>
										<SPAN id=dvbbsannounce
										style="FONT-WEIGHT: bold; FLOAT: left; WIDTH: 80%; COLOR: #c00">
									</SPAN></TD>
									<TD style="COLOR: #135294; TEXT-ALIGN: right"
										background=images/bg2.gif>欢迎登陆：${sessionScope.admin.username}|
										| <A href="../GoIndexAction.action"
										target=_top>首页</A> | <A href="AdminAction!logout.action"
										onclick="return confirm('确定要退出吗?')" target=_top>退出 </A>
									</TD>
									<TD vAlign=top align=right width=28 background=images/bg2.gif><IMG
										alt="" src="images/teble_top_right.gif"></TD>
									<TD align=right width=16 bgColor=#337abb></TD>
								</TR>
							</TBODY>
						</TABLE> <IFRAME class=main_iframe id=frmright name="frmright"
							src="syscome.htm" frameBorder=0 scrolling=yes></IFRAME>
						<TABLE style="BACKGROUND: #c4d8ed" cellSpacing=0 cellPadding=0
							width="100%" border=0>
							<TBODY>
								<TR>
									<TD><IMG height=6 alt=""
										src="images/teble_bottom_left.gif" width=5></TD>
									<TD align=right><IMG height=6 alt=""
										src="images/teble_bottom_right.gif" width=5></TD>
									<TD align=right width=16 bgColor=#337abb></TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<DIV id=dvbbsannounce_true style="DISPLAY: none"></DIV>
	</c:if>
	<c:if test="${empty sessionScope.admin.username}">

		<table width=100% height=80% align=center bgColor="#c0c0c0">
			<tr>
				<td align="center">
					<h3>对不起，还未登录，请登录</h3>
					<h3>
						正在跳转到登录页面，若没有跳转请<a href=login.jsp>点击这里！</a>
					</h3>
				</td>
			</tr>
		</table>

		<%
			response.setHeader("refresh", "2;url=login.jsp");
		%>
	</c:if>

</BODY>
</HTML>


