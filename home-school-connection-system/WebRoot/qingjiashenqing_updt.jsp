<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�������</title>
	
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

new CommDAO().update(request,response,"qingjiashenqing",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"qingjiashenqing"); 

%>
  <form  action="qingjiashenqing_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸��������:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>��ٵ��ţ�</td><td><input name='qingjiadanhao' type='text' id='qingjiadanhao' value='<%= mmm.get("qingjiadanhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�ҳ��˺ţ�</td><td><input name='jiachangzhanghao' type='text' id='jiachangzhanghao' value='<%= mmm.get("jiachangzhanghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�ҳ�������</td><td><input name='jiachangxingming' type='text' id='jiachangxingming' value='<%= mmm.get("jiachangxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѧ��ѧ�ţ�</td><td><input name='xueshengxuehao' type='text' id='xueshengxuehao' value='<%= mmm.get("xueshengxuehao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѧ��������</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='<%= mmm.get("xueshengxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�༶��</td><td><input name='banji' type='text' id='banji' value='<%= mmm.get("banji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��ʦ�ţ�</td><td><input name='jiaoshihao' type='text' id='jiaoshihao' value='<%= mmm.get("jiaoshihao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���ԭ��</td><td><textarea name='qingjiayuanyin' cols='50' rows='5' id='qingjiayuanyin' style='border:solid 1px #000000; color:#666666'><%=mmm.get("qingjiayuanyin")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


