<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ҳ���Ϣ��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jiachangxinxi");
     %>
  �ҳ���Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>�ҳ��˺ţ�</td><td width='39%'><%=m.get("jiachangzhanghao")%></td><td  rowspan=10 align=center><a href=<%=m.get("xueshengzhaopian")%> target=_blank><img src=<%=m.get("xueshengzhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>���룺</td><td width='39%'><%=m.get("mima")%></td></tr><tr><td width='11%' height=44>�ҳ�������</td><td width='39%'><%=m.get("jiachangxingming")%></td></tr><tr><td width='11%' height=44>�ҳ�ְҵ��</td><td width='39%'><%=m.get("jiachangzhiye")%></td></tr><tr><td width='11%' height=44>ѧ��ѧ�ţ�</td><td width='39%'><%=m.get("xueshengxuehao")%></td></tr><tr><td width='11%' height=44>ѧ��������</td><td width='39%'><%=m.get("xueshengxingming")%></td></tr><tr><td width='11%' height=44>�༶��</td><td width='39%'><%=m.get("banji")%></td></tr><tr><td width='11%' height=44>�ҳ��ֻ���</td><td width='39%'><%=m.get("jiachangshouji")%></td></tr><tr><td width='11%' height=44>�ҳ����䣺</td><td width='39%'><%=m.get("jiachangyouxiang")%></td></tr><tr><td width='11%' height=44>��ʦ�ţ�</td><td width='39%'><%=m.get("jiaoshihao")%></td></tr><tr><td width='11%' height=100  >��ע��</td><td width='39%' colspan=2 height=100 ><%=m.get("beizhu")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


