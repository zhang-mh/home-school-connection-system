<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ҳ���Ϣ</title>
	
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

new CommDAO().update(request,response,"jiachangxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"jiachangxinxi"); 

%>
  <form  action="jiachangxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸ļҳ���Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>�ҳ��˺ţ�</td><td><input name='jiachangzhanghao' type='text' id='jiachangzhanghao' value='<%= mmm.get("jiachangzhanghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�ҳ�������</td><td><input name='jiachangxingming' type='text' id='jiachangxingming' value='<%= mmm.get("jiachangxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�ҳ�ְҵ��</td><td><input name='jiachangzhiye' type='text' id='jiachangzhiye' value='<%= mmm.get("jiachangzhiye")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѧ��ѧ�ţ�</td><td><input name='xueshengxuehao' type='text' id='xueshengxuehao' value='<%= mmm.get("xueshengxuehao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѧ��������</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='<%= mmm.get("xueshengxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�༶��</td><td><%=Info.getselect("banji","banjixinxi","banji")%></td></tr><script language="javascript">document.form1.banji.value='<%=mmm.get("banji")%>';</script>     <tr><td>�ҳ��ֻ���</td><td><input name='jiachangshouji' type='text' id='jiachangshouji' value='<%= mmm.get("jiachangshouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�ҳ����䣺</td><td><input name='jiachangyouxiang' type='text' id='jiachangyouxiang' value='<%= mmm.get("jiachangyouxiang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѧ����Ƭ��</td><td><input name='xueshengzhaopian' type='text' id='xueshengzhaopian' size='50' value='<%= mmm.get("xueshengzhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('xueshengzhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>��ʦ�ţ�</td><td><%=Info.getselect("jiaoshihao","jiaoshixinxi","jiaoshihao")%></td></tr><script language="javascript">document.form1.jiaoshihao.value='<%=mmm.get("jiaoshihao")%>';</script>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


