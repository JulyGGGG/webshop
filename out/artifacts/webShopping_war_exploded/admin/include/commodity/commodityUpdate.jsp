<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>欢迎进入系统后台</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="<%=basePath %>admin/images/syscome.files/Admin.css" rel=stylesheet>
<SCRIPT language=javascript src="<%=basePath %>/images/syscome.files/Admin.js"></SCRIPT>

<STYLE type=text/css>.STYLE1 {
	FONT-WEIGHT: bold; COLOR: #0099ff
}
</STYLE>

<META content="MSHTML 6.00.2900.5726" name=GENERATOR></HEAD>
<BODY><BR>
<TABLE class=tableborder cellSpacing=1 cellPadding=3 width="95%" align=center 
border=0>
</TABLE><BR>
<form action="CommodityAction!updateCommodity.action" method="post" enctype="multipart/form-data">
<TABLE  width="95%" align=center bgColor=#6ab6b6 border=0>
  <TBODY>
  <TR>
    <TH  height=24>【修改商品】</TH>
   </TR>
  <TR>

    <TD class=forumrow width="30%" height=24><div align="right">商品名称：</div><input type="hidden" name="commodity.commodityId" id="commodityId" value="${sessionScope.commodityById.commodityId}"/></TD>
    <TD class=forumrowhighlight width="70%"
        height=24><input type="text" name="commodity.commodityName" id="name" value="${sessionScope.commodityById.commodityName}"/></TD></TR>
  <TR>
    <TD class=forumrow height=24><div align="right">商品分类：</div></TD>
    <TD class=forumrowhighlight   height=24>
      <select name="commodity.commodityClass.commodityClassId" >
        <s:iterator value="#request.commodityClasses" status="stuts" id="test">
        <option value="<s:property value='#test.commodityClassId'/>"><s:property value="#test.commodityClassName"/></option>
        </s:iterator>
      </TD>
  </TR>
  <TR>
    <TD class=forumrow height=24><div align="right">生产厂家：</div></TD>
    <TD class=forumrowhighlight height=24><input type="text" name="commodity.manufacturer" id="manufacturer" value="${sessionScope.commodityById.manufacturer}"/></TD>
  </TR>
  <TR>
    <TD class=forumrow height=144><div align="right">商品图片：</div></TD>
    <TD class=forumrowhighlight
        height=24> <img src="../product/${sessionScope.commodityById.image }" border="0" width="144px" height="144px" onerror="this.src"><input type="file" name="image" id="Image" value="${sessionScope.commodityById.image }"/>
    </TD>
  </TR>
  <TR>
    <TD class=forumrow height=24><div align="right">商品描述：</div></TD>
    <TD class=forumrowhighlight
        height=24><textarea name="commodity.commodityDepict" cols="50" rows="5" id="commodityDepict">${sessionScope.commodityById.commodityDepict}</textarea></TD>
  </TR>
  <TR>
    <TD class=forumrow height=24><div align="right" >商品价格：</div></TD>
    <TD class=forumrowhighlight  height=24>
    <input type="text" name="commodity.commodityPrice" value="${sessionScope.commodityById.commodityPrice}"></TD>
  </TR>
   <TR>
    <TD class=forumrow height=24><div align="right">商城价格：</div></TD>
    <TD class=forumrowhighlight  height=24>
      <input type="text" name="commodity.webPrice" id="commodityPrice" value="${sessionScope.commodityById.webPrice}"></TD>
  </TR>
  <TR>
    <TD class=forumrow height=24><div align="right">商品总数量：</div></TD>
    <TD class=forumrowhighlight height=24>
      <input type="text" name="commodity.commodityAmount" id="commodityAmount" value="${sessionScope.commodityById.commodityAmount}"></TD>
  </TR>
  <TR>
    <TD class=forumrowhighlight height=24><div align="right">商品剩余数量</div></TD>
    <TD class=forumrowhighlight  height=24> <input type="text" name="commodity.commodityLeaveNum" id="commodityLeaveNum" value='${sessionScope.commodityById.commodityLeaveNum}'></TD>
  </TR>
  <TR>
    <TD class=forumrowhighlight height=24></TD>
    <TD class=forumrowhighlight  height=24><input type="submit" value="提交">
      <input type="button" value="返回" onclick="javascript:history.back(-1);"  ></TD>
  </TR>
  <TR>
    <TD class=forumrow height=24>&nbsp;</TD>
    <TD class=forumrowhighlight
        height=24>${addComessage}</TD>
  </TR>
  </TBODY></TABLE>
</form>
<BR>
<TABLE class=tableborder cellSpacing=1 cellPadding=3 width="95%" align=center 
border=0>
</TABLE><BR>

</BODY></HTML>
