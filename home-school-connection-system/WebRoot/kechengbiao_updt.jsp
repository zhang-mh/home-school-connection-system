<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�γ̱�</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"kechengbiao",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"kechengbiao"); 

%>
  <form  action="kechengbiao_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ŀγ̱�:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>��һ��</td>
     <td><input name='kechengming' type='text' id='kechengming' value='<%= mmm.get("kechengming")%>' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengming')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>��<%}%></td></tr>
     
     <tr><td>�ܶ���</td>
     <td><input name='kechengmingyi' type='text' id='kechengmingyi' value='<%= mmm.get("kechengmingyi")%>' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengmingyi')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>��<%}%></td></tr>
     
     <tr><td>������</td>
     <td><input name='kechengminger' type='text' id='kechengminger' value='<%= mmm.get("kechengminger")%>' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengminger')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>��<%}%></td></tr>
     
     <tr><td>���ģ�</td>
     <td><input name='kechengmingsan' type='text' id='kechengmingsan' value='<%= mmm.get("kechengmingsan")%>' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengmingsan')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>��<%}%></td></tr>
     
     <tr><td>���壺</td>
     <td><input name='kechengmingsi' type='text' id='kechengmingsi' value='<%= mmm.get("kechengmingsi")%>' size='50' style='border:solid 1px #000000; color:#666666' readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select kechengmingcheng from kechengxinxi  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("kechengmingcheng")%>','kechengmingsi')" style="cursor:pointer"><%=map.get("kechengmingcheng")%></a>��<%}%></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


