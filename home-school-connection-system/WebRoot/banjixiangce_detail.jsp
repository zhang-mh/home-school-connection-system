<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�༶�����ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"banjixiangce");
     %>
  �༶�����ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>����ţ�</td><td width='39%'><%=m.get("xiangcebianhao")%></td><td  rowspan=4 align=center><a href=<%=m.get("shouyezhaopian")%> target=_blank><img src=<%=m.get("shouyezhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>�༶��</td><td width='39%'><%=m.get("banji")%></td></tr><tr><td width='11%' height=44>������ƣ�</td><td width='39%'><%=m.get("xiangcemingcheng")%></td></tr><tr><td width='11%' height=44>�����ˣ�</td><td width='39%'><%=m.get("faburen")%></td></tr><tr><td width='11%' height=100  >��᣺</td><td width='39%' colspan=2 height=100 ><%=m.get("xiangce")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


