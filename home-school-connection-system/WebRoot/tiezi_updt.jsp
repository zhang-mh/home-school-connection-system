<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>����</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"tiezi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"tiezi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="tiezi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸�����:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>��飺</td><td><input name='bankuai' type='text' id='bankuai' value='<%= mmm.get("bankuai")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���⣺</td><td><input name='biaoti' type='text' id='biaoti' value='<%= mmm.get("biaoti")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���ͣ�</td><td><input name='leixing' type='text' id='leixing' value='<%= mmm.get("leixing")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���ݣ�</td><td><input name='neirong' type='text' id='neirong' value='<%= mmm.get("neirong")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>������</td><td><input name='fujian' type='text' id='fujian' size='50' value='<%= mmm.get("fujian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('fujian')" style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>�����ˣ�</td><td><input name='faburen' type='text' id='faburen' value='<%= mmm.get("faburen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


