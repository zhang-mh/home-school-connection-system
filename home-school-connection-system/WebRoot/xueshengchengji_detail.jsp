<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ѧ���ɼ���ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xueshengchengji");
     %>
  ѧ���ɼ���ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>�ɼ����ţ�</td><td width='39%'><%=m.get("chengjidanhao")%></td><td  rowspan=8 align=center><a href=<%=m.get("chengjizouxiangtu")%> target=_blank><img src=<%=m.get("chengjizouxiangtu")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>�ҳ��˺ţ�</td><td width='39%'><%=m.get("jiachangzhanghao")%></td></tr><tr><td width='11%' height=44>�ҳ�������</td><td width='39%'><%=m.get("jiachangxingming")%></td></tr><tr><td width='11%' height=44>ѧ��ѧ�ţ�</td><td width='39%'><%=m.get("xueshengxuehao")%></td></tr><tr><td width='11%' height=44>ѧ��������</td><td width='39%'><%=m.get("xueshengxingming")%></td></tr><tr><td width='11%' height=44>�༶��</td><td width='39%'><%=m.get("banji")%></td></tr><tr><td width='11%' height=44>�ܳɼ���</td><td width='39%'><%=m.get("zongchengji")%></td></tr><tr><td width='11%' height=44>��ʦ�ţ�</td><td width='39%'><%=m.get("jiaoshihao")%></td></tr><tr><td width='11%' height=100  >������ϸ��</td><td width='39%' colspan=2 height=100 ><%=m.get("gekemingxi")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


