<%@ page language="java" import="util.PageManager" pageEncoding="gbk"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=gonggaoxinxi.xls");
%>
<html>
  <head>
    <title>お知らせ</title>
  </head>

  <body >
  <p>現在のお知らせ：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">番号</td>
    <td bgcolor='#CCFFFF'>タイトル</td>
    <td bgcolor='#CCFFFF'>分類</td>
    
    <td bgcolor='#CCFFFF'>アナウンサー</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">追加時間</td>
    

  </tr>
  <%
    String url = "gonggaoxinxi_list.jsp?1=1"; 
    String sql =  "select * from gonggaoxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("biaoti") %></td>
    <td><%=map.get("fenlei") %></td>
    
    <td><%=map.get("tianjiaren") %></td>
    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
      }
   %>
</table>

<br>
All <%=i %> items
  </body>
</html>

