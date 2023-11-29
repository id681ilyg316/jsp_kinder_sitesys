<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<html>
<head>
<title>教学信息</title>

<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
<%

%>

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
                <td width="92%" class="red STYLE2">教学信息</td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td height="766" valign="top" class="boder">
		  
		   <form name="form1" id="form1" action="">
   搜索:  课程名称：<input name="kechengmingcheng" type="text" id="kechengmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  上课件时间：<input name="shangkejianshijian1" type="text" id="shangkejianshijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="shangkejianshijian2" type="text" id="shangkejianshijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  发布教师：<input name="fabujiaoshi" type="text" id="fabujiaoshi" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jiaoxuexinxilisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>课程名称</td>
    
    <td bgcolor='#CCFFFF' width='65' align='center'>上课件时间</td>
    <td bgcolor='#CCFFFF'>发布教师</td>
    
    
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiaoxuexinxi"); 
    String url = "jiaoxuexinxilist.jsp?2=2"; 
    String sql =  "select * from jiaoxuexinxi where 1=1";
	
if(request.getParameter("kechengmingcheng")=="" ||request.getParameter("kechengmingcheng")==null ){}else{sql=sql+" and kechengmingcheng like '%"+request.getParameter("kechengmingcheng")+"%'";}
if (request.getParameter("shangkejianshijian1")==""  ||request.getParameter("shangkejianshijian1")==null ) {}else{sql=sql+" and shangkejianshijian >= '"+request.getParameter("shangkejianshijian1")+"'";}
if (request.getParameter("shangkejianshijian2")==""  ||request.getParameter("shangkejianshijian2")==null ) {}else {sql=sql+" and shangkejianshijian <= '"+request.getParameter("shangkejianshijian2")+"'";}
if(request.getParameter("fabujiaoshi")=="" ||request.getParameter("fabujiaoshi")==null ){}else{sql=sql+" and fabujiaoshi like '%"+request.getParameter("fabujiaoshi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("kechengmingcheng") %></td><td><%=map.get("shangkejianshijian") %></td><td><%=map.get("fabujiaoshi") %></td>
    
    <td width="30" align="center"> <a href="jiaoxuexinxidetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }						
		  
		  
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
		
</body>
</html>


