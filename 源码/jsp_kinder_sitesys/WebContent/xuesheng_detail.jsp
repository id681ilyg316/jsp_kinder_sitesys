<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>家长详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xuesheng");
     %>
  家长详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>学号：</td><td width='39%'><%=m.get("xuehao")%></td>
<td width='11%'>密码：</td><td width='39%'><%=m.get("mima")%></td></tr><tr>
<td width='11%'>姓名：</td><td width='39%'><%=m.get("xingming")%></td>
<td width='11%'>性别：</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr>
<td width='11%'>班级号：</td><td width='39%'><%=m.get("banjihao")%></td>
<td width='11%'>联系电话：</td><td width='39%'><%=m.get("lianxidianhua")%></td></tr><tr>
<td width='11%'>籍贯：</td><td width='39%'><%=m.get("jiguan")%></td>
<td width='11%'>入学时间：</td><td width='39%'><%=m.get("ruxueshijian")%></td></tr><tr>
<td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td>
<td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


