<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=kechengbiao.xls");
%>
<html>
  <head>
    <title>�γ̱�</title>
  </head>

  <body >
  <p>���пγ̱��б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��һ</td>    <td bgcolor='#CCFFFF'>�γ���</td>    <td bgcolor='#CCFFFF'>�ܶ�</td>    <td bgcolor='#CCFFFF'>�γ���һ</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 

    String url = "kechengbiao_list.jsp?1=1"; 
    String sql =  "select * from kechengbiao where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhouyi") %></td>    <td><%=map.get("kechengming") %></td>    <td><%=map.get("zhouer") %></td>    <td><%=map.get("kechengmingyi") %></td>    <td><%=map.get("zhousan") %></td>    <td><%=map.get("kechengminger") %></td>    <td><%=map.get("zhousi") %></td>    <td><%=map.get("kechengmingsan") %></td>    <td><%=map.get("zhouwu") %></td>    <td><%=map.get("kechengmingsi") %></td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

