<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>培训计划</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="peixunjihua_add.jsp?id=<%=id%>&kechengbianhao="+document.form1.kechengbianhao.value;
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"peixunjihua",ext,true,false,""); 
%>

  <body >
 <form  action="peixunjihua_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加培训计划:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>课程编号：</td><td><%=Info.getselectsl("kechengbianhao","kecheng","kechengbianhao")%>&nbsp;*<label id='clabelkechengbianhao' /></td></tr>
		<tr><td  width="200">课程名称：</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelkechengmingcheng' /></td></tr>
		<tr><td>班级号：</td><td><%=Info.getselect("banjihao","banji","banjihao")%></td></tr>
		<tr><td  width="200">计划文件：</td><td><input name='jihuawenjian' type='text' id='jihuawenjian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('jihuawenjian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
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

<%
if(request.getParameter("kechengbianhao")==null || request.getParameter("kechengbianhao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("kechengbianhao",request.getParameter("kechengbianhao"),"kecheng"); 
%>
<script language="javascript">
document.form1.kechengbianhao.value="<%=mmm.get("kechengbianhao")%>";
document.form1.kechengmingcheng.value="<%=mmm.get("kechengmingcheng")%>";
//suilafuzhi

</script>
<%
}
%>
<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var kechengbianhaoobj = document.getElementById("kechengbianhao"); if(kechengbianhaoobj.value==""){document.getElementById("clabelkechengbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入课程编号</font>";return false;}else{document.getElementById("clabelkechengbianhao").innerHTML="  "; } 
	var kechengmingchengobj = document.getElementById("kechengmingcheng"); if(kechengmingchengobj.value==""){document.getElementById("clabelkechengmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入课程名称</font>";return false;}else{document.getElementById("clabelkechengmingcheng").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


