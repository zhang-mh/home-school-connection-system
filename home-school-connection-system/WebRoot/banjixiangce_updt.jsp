<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�༶���</title>
	<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="xiangce"]', {
				cssPath : 'kindeditor_a5/plugins/code/prettify.css',
				uploadJson : 'kindeditor_a5/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor_a5/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
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

new CommDAO().update(request,response,"banjixiangce",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"banjixiangce"); 

%>
  <form  action="banjixiangce_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸İ༶���:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>����ţ�</td><td><input name='xiangcebianhao' type='text' id='xiangcebianhao' value='<%= mmm.get("xiangcebianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�༶��</td><td><%=Info.getselect("banji","banjixinxi","banji")%></td></tr><script language="javascript">document.form1.banji.value='<%=mmm.get("banji")%>';</script>     <tr><td>������ƣ�</td><td><input name='xiangcemingcheng' type='text' id='xiangcemingcheng' value='<%= mmm.get("xiangcemingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��᣺</td><td><textarea name="xiangce" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"><%=mmm.get("xiangce")%></textarea></td></tr>     <tr><td>��ҳ��Ƭ��</td><td><input name='shouyezhaopian' type='text' id='shouyezhaopian' size='50' value='<%= mmm.get("shouyezhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('shouyezhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>�����ˣ�</td><td><input name='faburen' type='text' id='faburen' value='<%= mmm.get("faburen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


