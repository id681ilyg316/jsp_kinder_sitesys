<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>教学信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有教学信息列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  课程名称：<input name="kechengmingcheng" type="text" id="kechengmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  上课件时间：<input name="shangkejianshijian1" type="text" id="shangkejianshijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="shangkejianshijian2" type="text" id="shangkejianshijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  发布教师：<input name="fabujiaoshi" type="text" id="fabujiaoshi" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jiaoxuexinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>课程名称</td>
    
    <td bgcolor='#CCFFFF' width='65' align='center'>上课件时间</td>
    <td bgcolor='#CCFFFF'>发布教师</td>
    
    
	<td width="90" align="center" bgcolor="#CCFFFF">评论管理</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiaoxuexinxi"); 
    String url = "jiaoxuexinxi_list.jsp?1=1"; 
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
    <td><%=map.get("kechengmingcheng") %></td>
    
    <td><%=map.get("shangkejianshijian") %></td>
    <td><%=map.get("fabujiaoshi") %></td>
    
    
	<td width="90" align="center"><a href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=jiaoxuexinxi">评论管理</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="jiaoxuexinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="jiaoxuexinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="jiaoxuexinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

