<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>��ʦ��Ϣ</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="jiaoshixinxi_add.jsp?id=<%=id%>";
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







new CommDAO().insert(request,response,"jiaoshixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="jiaoshixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӽ�ʦ��Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">��ʦ�ţ�</td><td><input name='jiaoshihao' type='text' id='jiaoshihao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeljiaoshihao' /></td></tr>		<tr><td  width="200">���룺</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelmima' /></td></tr>		<tr><td  width="200">��ʦ������</td><td><input name='jiaoshixingming' type='text' id='jiaoshixingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr>		<tr><td>����</td><td><select name='jibie' id='jibie'><option value="�ؼ���ʦ">�ؼ���ʦ</option><option value="�߼���ʦ">�߼���ʦ</option><option value="��ͨ��ʦ">��ͨ��ʦ</option></select>&nbsp;*<label id='clabeljibie' /></td></tr>		<tr><td  width="200">�ֻ���</td><td><input name='shouji' type='text' id='shouji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshouji' />�����ֻ���ʽ</td></tr>		<tr><td  width="200">���䣺</td><td><input name='youxiang' type='text' id='youxiang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelyouxiang' />���������ʽ</td></tr>		<tr><td  width="200">��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td  width="200">��ʦ��飺</td><td><textarea name='jiaoshijianjie' cols='50' rows='5' id='jiaoshijianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
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
 
	var jiaoshihaoobj = document.getElementById("jiaoshihao"); if(jiaoshihaoobj.value==""){document.getElementById("clabeljiaoshihao").innerHTML="&nbsp;&nbsp;<font color=red>�������ʦ��</font>";return false;}else{document.getElementById("clabeljiaoshihao").innerHTML="  "; } 	var jiaoshihaoobj = document.getElementById("jiaoshihao");  
if(jiaoshihaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=jiaoshixinxi&col=jiaoshihao&value="+jiaoshihaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeljiaoshihao").innerHTML="&nbsp;&nbsp;<font color=red>��ʦ���Ѵ���</font>";  
return false;
}else{document.getElementById("clabeljiaoshihao").innerHTML="  ";  
}  
} 	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 	var jibieobj = document.getElementById("jibie"); if(jibieobj.value==""){document.getElementById("clabeljibie").innerHTML="&nbsp;&nbsp;<font color=red>�����뼶��</font>";return false;}else{document.getElementById("clabeljibie").innerHTML="  "; } 	var shoujiobj = document.getElementById("shouji"); if(shoujiobj.value!=""){ if(/^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(shoujiobj.value)){document.getElementById("clabelshouji").innerHTML=""; }else{document.getElementById("clabelshouji").innerHTML="&nbsp;&nbsp;<font color=red>�����ֻ���ʽ</font>"; return false;}}      var youxiangobj = document.getElementById("youxiang"); if(youxiangobj.value!=""){ if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(youxiangobj.value)){document.getElementById("clabelyouxiang").innerHTML=""; }else{document.getElementById("clabelyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>���������ʽ</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


