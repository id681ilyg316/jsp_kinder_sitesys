<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



			

<TABLE cellSpacing=0 cellPadding=0 width=0 border=0>
      <TBODY>
        <TR>
          <TD width="189" height="44" background="qtimages/index_r4_c1.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="32%">&nbsp;</td>
              <td width="68%" class="red STYLE2">系统公告</td>
            </tr>
          </table></TD>
        </TR>
        <TR>
          <TD class=introline height=111>
             
                <TABLE height=100 cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                  <TBODY>
                    <TR>
                      <TD align=left 
                        height=118><marquee border="0" direction="up" height="138" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50"><TABLE width="92%" height="131%" 
            border=0 align=center 
      cellPadding=0 cellSpacing=5>
                      <TBODY><TR><TD><p>
	<% HashMap m1 = new CommDAO().getmaps("leibie","系统公告","dx");out.print(Info.ensubStr(m1.get("content"),185)); %></p></TD></TR></TBODY></TABLE></marquee></TD>
                    </TR>
                  </TBODY>
                </TABLE>          </TD>
        </TR>
        <TR>
          <TD vAlign=top height=11><IMG height=11 
                  src="qtimages/index_r13_c1.jpg" width=189></TD>
        </TR>
        <TR>
          <TD align=middle 
                background=qtimages/index_r16_c1.gif 
                  height=28>您当前IP：127.0.0.1</TD>
        </TR>
        <TR>
          <TD height=3></TD>
        </TR>
        <TR>
          <TD width="189" height="32" background="qtimages/index_r23_c1.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="32%">&nbsp;</td>
              <td width="68%" class="red STYLE2 STYLE3">用户登陆</td>
            </tr>
          </table></TD>
        </TR>
        <TR>
          <TD class="introline">          <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
	 <form action="jspmxtybjwzwylb0534?ac=login&a=a" name="f11" style="display: inline">
							                           <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">

                                  <tr>
                                    <td width="15" height="28">&nbsp;</td>
                                    <td width="243" height="28">用户名:</td>
                                    <td height="28" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" /></td>
                                  </tr>
                                  <tr>
                                    <td height="28">&nbsp;</td>
                                    <td height="28">密码:</td>
                                    <td height="28" colspan="2"><input name="pwd1" type="password" id="pwd1"  style="width:100px; height:20px; border:solid 1px #000000; color:#666666" /></td>
                                  </tr>
                                  <tr>
                                    <td height="28">&nbsp;</td>
                                    <td height="28">权限:</td>
                                    <td height="28" colspan="2"><select name="cx" id="cx" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" >
										<option value="家长">家长</option>
                                    </select></td>
                                  </tr>
                                  <tr >
                                    <td height="28">&nbsp;</td>
                                    <td height="28">验证码</td>
                                    <td width="97" height="28"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" /></td>
                                    <td width="299"> <a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"> </a> </td>
                                  </tr>
								  <script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
           function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("请输入完整");
		return false;
	}
}
           </script>     
                                  <tr>
                                    <td height="38" align="center">&nbsp;</td>
                                    <td height="38" colspan="3" align="center"><input type="submit" name="Submit" value="登陆" class="hsgbutton" onclick="return checklog();" />
                                        <input type="reset" name="Submit2" value="重置" class="hsgbutton" /></td>
                                  </tr>
                              
                              </table>
							    </form>
							  <%}else{ %>
					<table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td width="31%" height="30">用户名</td>
                                  <td width="69%" height="30"><%=request.getSession().getAttribute("username")%> </td>
                                </tr>
                                <tr>
                                  <td height="30">权限</td>
                                  <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                                </tr>
                                <tr>
                                  <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="退出" onClick="javascript:location.href='logout.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                      <input type="button" name="Submit32" value="个人后台" onClick="javascript:location.href='main.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                  </td>
                                </tr>
                              </table>
							     <%} %>
            </TD>
        </TR>
        
        <TR>
          <TD background=qtimages/index_r40_c1.jpg 
                height=8></TD>
        </TR>
        

		 <TR>
          <TD background=qtimages/index_r40_c1.jpg 
                height=8></TD>
        </TR>
    
       
      </TBODY>
    </TABLE>
	
