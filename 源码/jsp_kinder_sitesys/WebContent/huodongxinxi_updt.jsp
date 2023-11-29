<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>活动信息</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"huodongxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"huodongxinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="huodongxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改活动信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>活动编号：</td><td><input name='huodongbianhao' type='text' id='huodongbianhao' value='<%= mmm.get("huodongbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>活动名称：</td><td><input name='huodongmingcheng' type='text' id='huodongmingcheng' size='50' value='<%=mmm.get("huodongmingcheng")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>时间：</td><td><input name='shijian' type='text' id='shijian' value='<%= mmm.get("shijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>
     <tr><td>地点：</td><td><input name='didian' type='text' id='didian' size='50' value='<%=mmm.get("didian")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>活动照片：</td><td><input name='huodongzhaopian' type='text' id='huodongzhaopian' size='50' value='<%= mmm.get("huodongzhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('huodongzhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>活动简介：</td><td><textarea name='huodongjianjie' cols='50' rows='5' id='huodongjianjie' style='border:solid 1px #000000; color:#666666'><%=mmm.get("huodongjianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


