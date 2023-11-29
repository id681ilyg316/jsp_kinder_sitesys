<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE2 {color: #43860c; font-size: 12px; }

a:link {font-size:12px; text-decoration:none; color:#43860c;}
a:visited {font-size:12px; text-decoration:none; color:#43860c;}
a:hover{font-size:12px; text-decoration:none; color:#FF0000;}
-->
</style>

</head>

<body>
<table width="177" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed">
      <tr>
        <td height="26" background="images/main_21.gif">&nbsp;</td>
      </tr>
      
      <tr>
        <td  style="line-height:4px; background:url(images/main_38.gif)">&nbsp;</td>
      </tr>
      <tr>
        <td><SCRIPT LANGUAGE="JavaScript" SRC="js/treemenu.js"></SCRIPT>



<SCRIPT LANGUAGE='JavaScript'>
foldersTree = gFldr('<DIV CLASS=fldrroot><b>系统功能列表</b></DIV>','');

Class1 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>管理员帐号管理</DIV>', ''));
insDoc(Class1, gLnk(1, '<a href=yhzhgl.jsp target=main>管理员帐号管理</a>', '', 'images/editinfo.gif'));
insDoc(Class1, gLnk(1, '<a href=mod.jsp target=main>修改密码</a>', '', 'images/editinfo.gif'));


Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>通知公告</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_add.jsp?lb=通知公告 target=main>添加通知公告</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=通知公告 target=main>查询通知公告</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>注册用户管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=jiaoshi_list.jsp target=main>教师管理</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xuesheng_list.jsp target=main>家长管理</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>班级管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=banji_add.jsp target=main>添加班级</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=banji_list.jsp target=main>查询班级</a>', '', 'images/editinfo.gif'));



Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>活动管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=huodongxinxi_add.jsp target=main>活动添加</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=huodongxinxi_list.jsp target=main>活动查询</a>', '', 'images/editinfo.gif'));


Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>教学内容管理</DIV>', ''));

insDoc(Class2, gLnk(1, '<a href=jiaoxuexinxi_list.jsp target=main>教学内容查询</a>', '', 'images/editinfo.gif'));


Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>系统管理</DIV>', ''));
 insDoc(Class2, gLnk(1, '<a href=dx.jsp?lb=系统公告 target=main>系统公告管理</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=dx.jsp?lb=系统简介 target=main>系统简介管理</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=liuyanban_list.jsp target=main>留言管理</a>', '', 'images/editinfo.gif'));
insDoc(foldersTree, gLnk(1, '退出', 'logout.jsp', 'images/exit.gif'));
initializeDocument(0);</SCRIPT>
</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
