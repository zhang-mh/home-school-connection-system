<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>ѧ���ɼ�</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"jiachangxinxi");
 String jiachangzhanghao="";  	String jiachangxingming="";  	String xueshengxuehao="";  	String xueshengxingming="";  	String banji="";  	
 jiachangzhanghao=(String)mlbdq.get("jiachangzhanghao");  	jiachangxingming=(String)mlbdq.get("jiachangxingming");  	xueshengxuehao=(String)mlbdq.get("xueshengxuehao");  	xueshengxingming=(String)mlbdq.get("xueshengxingming");  	banji=(String)mlbdq.get("banji");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="xueshengchengji_add.jsp?id=<%=id%>";
}
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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){







new CommDAO().insert(request,response,"xueshengchengji",ext,true,false,""); 

}

%>

  <body >
 <form  action="xueshengchengji_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ���ѧ���ɼ�:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">�ɼ����ţ�</td><td><input name='chengjidanhao' type='text' id='chengjidanhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">�ҳ��˺ţ�</td><td><input name='jiachangzhanghao' type='text' id='jiachangzhanghao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiachangzhanghao.value='<%=jiachangzhanghao%>';document.form1.jiachangzhanghao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">�ҳ�������</td><td><input name='jiachangxingming' type='text' id='jiachangxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiachangxingming.value='<%=jiachangxingming%>';document.form1.jiachangxingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">ѧ��ѧ�ţ�</td><td><input name='xueshengxuehao' type='text' id='xueshengxuehao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xueshengxuehao.value='<%=xueshengxuehao%>';document.form1.xueshengxuehao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">ѧ��������</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xueshengxingming.value='<%=xueshengxingming%>';document.form1.xueshengxingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">�༶��</td><td><input name='banji' type='text' id='banji' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.banji.value='<%=banji%>';document.form1.banji.setAttribute("readOnly",'true');</script>		<tr><td  width="200">�ܳɼ���</td><td><input name='zongchengji' type='text' id='zongchengji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelzongchengji' />����������</td></tr>		<tr><td  width="200">������ϸ��</td><td><textarea name='gekemingxi' cols='50' rows='5' id='gekemingxi' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		<tr><td  width="200">�ɼ�����ͼ��</td><td><input name='chengjizouxiangtu' type='text' id='chengjizouxiangtu' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('chengjizouxiangtu')" style='border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td  width="200">��ʦ�ţ�</td><td><input name='jiaoshihao' type='text' id='jiaoshihao' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var zongchengjiobj = document.getElementById("zongchengji"); if(zongchengjiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(zongchengjiobj.value)){document.getElementById("clabelzongchengji").innerHTML=""; }else{document.getElementById("clabelzongchengji").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


