<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>换班记录</title>
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
new CommDAO().update(request,response,"huanbanjilu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"huanbanjilu"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="huanbanjilu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改换班记录:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>学号：</td><td><input name='xuehao' type='text' id='xuehao' value='<%= mmm.get("xuehao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>班级号：</td><td><input name='banjihao' type='text' id='banjihao' value='<%= mmm.get("banjihao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>入学时间：</td><td><input name='ruxueshijian' type='text' id='ruxueshijian' value='<%= mmm.get("ruxueshijian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>换到班级：</td><td><%=Info.getselect("huandaobanji","banji","banjihao")%></td></tr><script language="javascript">document.form1.huandaobanji.value='<%=mmm.get("huandaobanji")%>';</script>
     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


