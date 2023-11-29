<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>换班记录</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"tuihuanban");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("xuehao",(String)request.getSession().getAttribute("username"),"tuihuanban");
  String xuehao="";
  	String xingming="";
  	String banjihao="";
  	String ruxueshijian="";
  	
  xuehao=(String)mlbdq.get("xuehao");
  	xingming=(String)mlbdq.get("xingming");
  	banjihao=(String)mlbdq.get("banjihao");
  	ruxueshijian=(String)mlbdq.get("ruxueshijian");
  	

   %>
<script language="javascript">

function gow()
{
	document.location.href="huanbanjilu_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
String sql="update xuesheng set banjihao='"+request.getParameter("huandaobanji")+"' where xuehao='"+request.getParameter("xuehao")+"'";
	new CommDAO().commOper(sql); 

}
new CommDAO().insert(request,response,"huanbanjilu",ext,true,false,""); 
%>

  <body >
 <form  action="huanbanjilu_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加换班记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">学号：</td><td><input name='xuehao' type='text' id='xuehao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelxuehao' /></td></tr><script language="javascript">document.form1.xuehao.value='<%=xuehao%>';</script>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelxingming' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';</script>
		<tr><td  width="200">班级号：</td><td><input name='banjihao' type='text' id='banjihao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.banjihao.value='<%=banjihao%>';</script>
		<tr><td  width="200">入学时间：</td><td><input name='ruxueshijian' type='text' id='ruxueshijian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.ruxueshijian.value='<%=ruxueshijian%>';</script>
		<tr><td>换到班级：</td><td><%=Info.getselect("huandaobanji","banji","banjihao")%></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var xuehaoobj = document.getElementById("xuehao"); if(xuehaoobj.value==""){document.getElementById("clabelxuehao").innerHTML="&nbsp;&nbsp;<font color=red>请输入学号</font>";return false;}else{document.getElementById("clabelxuehao").innerHTML="  "; } 
	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


