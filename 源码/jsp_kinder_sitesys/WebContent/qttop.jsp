<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;
 </script>
 



<TABLE cellSpacing=0 cellPadding=0 width=993 align=center border=0>
        <TBODY>
        <TR>
          <TD height=45 class=syfleft>
            <TABLE height=45 cellSpacing=0 cellPadding=0 width=100% border=0>
              <TBODY>
              <TR>
                <TD vAlign=middle background="qtimages/ssss.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td >&nbsp;</td>
                    <td  ><a href="index.jsp"><font class="STYLE4">首页</font></a></td>
                    <td  ><a href="news.jsp?lb=通知公告"><font class="STYLE4">通知公告</font></a></td>
                    <td  ><a href="xueshengadd.jsp"><font class="STYLE4">家长注册</font></a></td>
 					<td  ><a href="jiaoshiadd.jsp"><font class="STYLE4">教师注册</font></a></td>
                    <td  ><a href="lyblist.jsp"><font class="STYLE4">在线留言</font></a></td>
					<td  ><a href="jiaoxuexinxilist.jsp"><font class="STYLE4">教学内容</font></a></td>
					<td  ><a href="huodongxinxilist.jsp"><font class="STYLE4">活动信息</font></a></td>
                    <td  ><a href="dx_detail.jsp?lb=系统简介"><font class="STYLE4">系统简介</font></a></td>
                    <td  ><a href="login.jsp"><font target="_blank" class="STYLE4">后台管理</font></a></td>
                  </tr>
                </table></TD>
              </TR></TBODY>
          </TABLE></TD>
        </TR></TBODY></TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=993 align=center border=0>
        <TBODY>
        <TR>
          <TD height=298 background="qtimages/qt.jpg" ><table width="70%" height="51" border="0" align="center">
            <tr>
              <td align="left"></td>
            </tr>
          </table></TD>
        </TR></TBODY></TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=993 align=center border=0>
  <TBODY>
  <TR>
    <TD width=4><IMG height=25 src="qtimages/top_menu_1.gif"></TD>
    <TD class=date style="FONT-SIZE: 12px" width=10 
    background=qtimages/top_menu_bg.gif><IMG height=7 
      src="qtimages/green_dot.gif" width=5> </TD>
    <TD class=date style="FONT-SIZE: 12px" width=676 
    background=qtimages/top_menu_bg.gif>
      <MARQUEE onmouseover=stop() onmouseout=start() scrollAmount=2 
      width=100%>
      热列庆祝幼儿园管理系统网站正式开通,欢迎大家前来光顾及指导,谢谢!!
      </MARQUEE></TD>
    <TD align=right width=255 
      background=qtimages/top_menu_bg.gif><SPAN style="COLOR: #038b0a">
      <SCRIPT language=javascript src="qtimages/date.js"></SCRIPT>
      </SPAN></TD>
    <TD width=5><IMG height=25 src="qtimages/top_menu_2.gif" 
    width=4></TD></TR></TBODY></TABLE>