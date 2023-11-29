<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>培训计划</title>
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
new CommDAO().update(request,response,"peixunjihua",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"peixunjihua"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="peixunjihua_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改培训计划:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>课程编号：</td><td><input name='kechengbianhao' type='text' id='kechengbianhao' value='<%= mmm.get("kechengbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>课程名称：</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' value='<%= mmm.get("kechengmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>班级号：</td><td><%=Info.getselect("banjihao","banji","banjihao")%></td></tr><script language="javascript">document.form1.banjihao.value='<%=mmm.get("banjihao")%>';</script>
     <tr><td>计划文件：</td><td><input name='jihuawenjian' type='text' id='jihuawenjian' size='50' value='<%= mmm.get("jihuawenjian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('jihuawenjian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
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


