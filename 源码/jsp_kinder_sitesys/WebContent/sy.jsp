<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
  <head>
    
    <title>小太阳班级网站</title>
<LINK href="images/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head>
 <BODY leftMargin=5 topMargin=5 rightMargin=5>
<table width="100%" height="210" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF" style="border-collapse:collapse">  
  <TBODY>
    <TR 
  align=middle bgColor=#ffffff>
      <td colspan="4" bgColor=#CADCEA><strong>系统基本信息</strong></td>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD width="14%" align="left" valign="bottom" >当前用户：</TD>
      <TD width="37%"  align="left" valign="bottom" ><font class="t4"><%=request.getSession().getAttribute("username")%></font></TD>
      <TD width="9%"  align="left" valign="bottom" >您的权限：</TD>
      <TD width="40%"  align="left" valign="bottom" ><font class="t4"><%=request.getSession().getAttribute("cx")%></font></TD>
    </TR>
 
    
  </TBODY>
</TABLE>
<p>&nbsp;</p>
<table width="100%" height="193" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF" style="border-collapse:collapse">  
  <TBODY>
    <TR 
  align=middle bgColor=#ffffff>
      <td colspan="2" bgColor=#CADCEA><strong>幼儿园管理系统</strong></td>
    </TR>
  
  </TBODY>
</TABLE>
<p>&nbsp;</p>
<P align=right>&nbsp;</P>
</BODY>
</html>

