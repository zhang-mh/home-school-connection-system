<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���������ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"qingjiashenqing");
     %>
  ���������ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>��ٵ��ţ�</td><td width='39%'><%=m.get("qingjiadanhao")%></td><td width='11%'>�ҳ��˺ţ�</td><td width='39%'><%=m.get("jiachangzhanghao")%></td></tr><tr><td width='11%'>�ҳ�������</td><td width='39%'><%=m.get("jiachangxingming")%></td><td width='11%'>ѧ��ѧ�ţ�</td><td width='39%'><%=m.get("xueshengxuehao")%></td></tr><tr><td width='11%'>ѧ��������</td><td width='39%'><%=m.get("xueshengxingming")%></td><td width='11%'>�༶��</td><td width='39%'><%=m.get("banji")%></td></tr><tr><td width='11%'>��ʦ�ţ�</td><td width='39%'><%=m.get("jiaoshihao")%></td><td width='11%'>���ԭ��</td><td width='39%'><%=m.get("qingjiayuanyin")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


