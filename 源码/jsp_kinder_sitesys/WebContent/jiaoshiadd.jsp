<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<html>
<head>
<title>教师</title>
<!--bixanjxiqxi-->
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbdq id=request.getParameter("id");
 //islbdq HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var zhigongbianhaoobj = document.getElementById("zhigongbianhao"); if(zhigongbianhaoobj.value==""){document.getElementById("clabelzhigongbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入职工编号</font>";return false;}else{document.getElementById("clabelzhigongbianhao").innerHTML="  "; } 	var zhigongbianhaoobj = document.getElementById("zhigongbianhao");  
if(zhigongbianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=jiaoshi&col=zhigongbianhao&value="+zhigongbianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelzhigongbianhao").innerHTML="&nbsp;&nbsp;<font color=red>职工编号已存在</font>";  
return false;
}else{document.getElementById("clabelzhigongbianhao").innerHTML="  ";  
}  
} 	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 	
}
function gow()
{
	document.location.href="jiaoshiadd.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="992" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2"><%@ include file="qttop.jsp"%></td>
  </tr>
  <tr>
    <td width="163" valign="top" >
 <%@ include file="qtleft.jsp"%></td>
    <td width="813" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td height="44" background="qtimages/index_r4_c8.jpg"><table width="100%" border="0" cellpadding="0" cellspacing="0">

              <tr>
                <td width="8%">&nbsp;</td>
                <td width="92%" class="red STYLE2">教师</td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td height="766" valign="top" class="boder">
		  
		  
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//qiuji
//wxfladd
ext.put("issh","否");
//youzhifu
//jitihuan
 }
new CommDAO().insert(request,response,"jiaoshi",ext,true,false,""); 
%>
   <form  action="jiaoshiadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">职工编号：</td><td><input name='zhigongbianhao' type='text' id='zhigongbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelzhigongbianhao' /></td></tr>		<tr><td  width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelmima' /></td></tr>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">师资：</td><td><input name='shizi' type='text' id='shizi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">个人简历：</td><td><textarea name='gerenjianli' cols='50' rows='5' id='gerenjianli' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>
		  
		  
		  </td>
        </tr>
        <tr>
          <td valign="top" height="9"><img 
                  src="qtimages/index_r19_c8.jpg" width="320" /> </td>
        </tr>
        <tr>
          <td height="3"></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
</table>

		
		<%@ include file="qtdown.jsp"%>	
		<!-- dfexnxxiaxng -->
</body>
</html>

<!--suxilxatxihuxan-->
