<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�γ̱���ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"kechengbiao");
     %>
  �γ̱���ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>��һ��</td><td width='39%'><%=m.get("kechengming")%></td>
</tr><tr>
<td width='11%'>�ܶ���</td><td width='39%'><%=m.get("kechengmingyi")%></td></tr>
<tr>
<td width='11%'>������</td><td width='39%'><%=m.get("kechengminger")%></td>
</tr><tr>
<td width='11%'>���ģ�</td><td width='39%'><%=m.get("kechengmingsan")%></td>
</tr><tr>
<td width='11%'>���壺</td><td width='39%'><%=m.get("kechengmingsi")%></td>

</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


