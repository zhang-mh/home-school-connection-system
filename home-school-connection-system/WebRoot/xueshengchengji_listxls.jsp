<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xueshengchengji.xls");
%>
<html>
  <head>
    <title>ѧ���ɼ�</title>
  </head>

  <body >
  <p>����ѧ���ɼ��б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�ɼ�����</td>    <td bgcolor='#CCFFFF'>�ҳ��˺�</td>    <td bgcolor='#CCFFFF'>�ҳ�����</td>    <td bgcolor='#CCFFFF'>ѧ��ѧ��</td>    <td bgcolor='#CCFFFF'>ѧ������</td>    <td bgcolor='#CCFFFF'>�༶</td>    <td bgcolor='#CCFFFF'>�ܳɼ�</td>        <td bgcolor='#CCFFFF' width='90' align='center'>�ɼ�����ͼ</td>    <td bgcolor='#CCFFFF'>��ʦ��</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 

    String url = "xueshengchengji_list.jsp?1=1"; 
    String sql =  "select * from xueshengchengji where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("chengjidanhao") %></td>    <td><%=map.get("jiachangzhanghao") %></td>    <td><%=map.get("jiachangxingming") %></td>    <td><%=map.get("xueshengxuehao") %></td>    <td><%=map.get("xueshengxingming") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("zongchengji") %></td>        <td width='90' align='center'><a href='<%=map.get("chengjizouxiangtu") %>' target='_blank'><img src='<%=map.get("chengjizouxiangtu") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("jiaoshihao") %></td>    
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

