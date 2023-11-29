<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>换班记录</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有换班记录列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  学号：<input name="xuehao" type="text" id="xuehao" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  班级号：<input name="banjihao" type="text" id="banjihao" style='border:solid 1px #000000; color:#666666' size="12" />  入学时间：<input name="ruxueshijian" type="text" id="ruxueshijian" style='border:solid 1px #000000; color:#666666' size="12" />  换到班级：<%=Info.getselect("huandaobanji","banji","banjihao"," 1=1 ")%>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='huanbanjilu_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>学号</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF'>班级号</td>
    <td bgcolor='#CCFFFF'>入学时间</td>
    <td bgcolor='#CCFFFF'>换到班级</td>
    
    
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">换班时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"huanbanjilu"); 
    String url = "huanbanjilu_list2.jsp?1=1"; 
    String sql =  "select * from huanbanjilu where xuehao='"+request.getSession().getAttribute("username")+"'";
	
if(request.getParameter("xuehao")=="" ||request.getParameter("xuehao")==null ){}else{sql=sql+" and xuehao like '%"+request.getParameter("xuehao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("banjihao")=="" ||request.getParameter("banjihao")==null ){}else{sql=sql+" and banjihao like '%"+request.getParameter("banjihao")+"%'";}
if(request.getParameter("ruxueshijian")=="" ||request.getParameter("ruxueshijian")==null ){}else{sql=sql+" and ruxueshijian like '%"+request.getParameter("ruxueshijian")+"%'";}
if(request.getParameter("huandaobanji")=="" ||request.getParameter("huandaobanji")==null ){}else{sql=sql+" and huandaobanji like '%"+request.getParameter("huandaobanji")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xuehao") %></td>
    <td><%=map.get("xingming") %></td>
    <td><%=map.get("banjihao") %></td>
    <td><%=map.get("ruxueshijian") %></td>
    <td><%=map.get("huandaobanji") %></td>
    
    
	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="huanbanjilu_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

