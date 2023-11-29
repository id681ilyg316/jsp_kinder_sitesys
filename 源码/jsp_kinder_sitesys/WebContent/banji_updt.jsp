<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>班级</title>
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
new CommDAO().update(request,response,"banji",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"banji"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="banji_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改班级:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>班级号：</td><td><input name='banjihao' type='text' id='banjihao' value='<%= mmm.get("banjihao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>班主任：</td><td><%=Info.getselect("banzhuren","jiaoshi","xingming")%></td></tr><script language="javascript">document.form1.banzhuren.value='<%=mmm.get("banzhuren")%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


