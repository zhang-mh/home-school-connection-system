<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiachangxinxi.xls");
%>
<html>
  <head>
    <title>�ҳ���Ϣ</title>
  </head>

  <body >
  <p>���мҳ���Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�ҳ��˺�</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�ҳ�����</td>    <td bgcolor='#CCFFFF'>�ҳ�ְҵ</td>    <td bgcolor='#CCFFFF'>ѧ��ѧ��</td>    <td bgcolor='#CCFFFF'>ѧ������</td>    <td bgcolor='#CCFFFF'>�༶</td>    <td bgcolor='#CCFFFF'>�ҳ��ֻ�</td>    <td bgcolor='#CCFFFF'>�ҳ�����</td>    <td bgcolor='#CCFFFF' width='90' align='center'>ѧ����Ƭ</td>    <td bgcolor='#CCFFFF'>��ʦ��</td>        <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 

    String url = "jiachangxinxi_list.jsp?1=1"; 
    String sql =  "select * from jiachangxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("jiachangzhanghao") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("jiachangxingming") %></td>    <td><%=map.get("jiachangzhiye") %></td>    <td><%=map.get("xueshengxuehao") %></td>    <td><%=map.get("xueshengxingming") %></td>    <td><%=map.get("banji") %></td>    <td><%=map.get("jiachangshouji") %></td>    <td><%=map.get("jiachangyouxiang") %></td>    <td width='90' align='center'><a href='<%=map.get("xueshengzhaopian") %>' target='_blank'><img src='<%=map.get("xueshengzhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("jiaoshihao") %></td>        <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=jiachangxinxi" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
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

