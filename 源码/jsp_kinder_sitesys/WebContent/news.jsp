<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<html>
<head>
<title>小太阳班级网站</title>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
 <%
  String lb=request.getParameter("lb");
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
                <td width="92%" class="red STYLE2"><%=lb%></td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td height="766" valign="top" class="boder"><table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#FA9090" class="newsline" style="border-collapse:collapse">
              <% 
    String url = "news.jsp?lb="+lb; 
    String sql =  "select * from xinwentongzhi where leibie='"+lb+"' ";
	if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("keyword").trim()+"%'";}

    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,20,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
              <tr>
                <td width="30" align="center"><%=i %></td>
                <td width="453"><a href="gg_detail.jsp?id=<%=map.get("id") %>"><%=map.get("biaoti") %></a></td>
                <td width="75">被点击<%=map.get("dianjilv") %>次</td>
                <td width="138" align="center"><%=map.get("addtime") %></td>
              </tr>
              <%} %>
            </table>
            <br>
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