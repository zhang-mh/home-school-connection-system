<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�ҳ���Ϣ</title>
	
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
	document.location.href="jiachangxinxi_add.jsp?id=<%=id%>";
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



ext.put("issh","��");



new CommDAO().insert(request,response,"jiachangxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="jiachangxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��Ӽҳ���Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">�ҳ��˺ţ�</td><td><input name='jiachangzhanghao' type='text' id='jiachangzhanghao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeljiachangzhanghao' /></td></tr>		<tr><td  width="200">���룺</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelmima' /></td></tr>		<tr><td  width="200">�ҳ�������</td><td><input name='jiachangxingming' type='text' id='jiachangxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">�ҳ�ְҵ��</td><td><input name='jiachangzhiye' type='text' id='jiachangzhiye' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">ѧ��ѧ�ţ�</td><td><input name='xueshengxuehao' type='text' id='xueshengxuehao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">ѧ��������</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td>�༶��</td><td><%=Info.getselect("banji","banjixinxi","banji")%></td></tr>		<tr><td  width="200">�ҳ��ֻ���</td><td><input name='jiachangshouji' type='text' id='jiachangshouji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljiachangshouji' />�����ֻ���ʽ</td></tr>		<tr><td  width="200">�ҳ����䣺</td><td><input name='jiachangyouxiang' type='text' id='jiachangyouxiang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljiachangyouxiang' />���������ʽ</td></tr>		<tr><td  width="200">ѧ����Ƭ��</td><td><input name='xueshengzhaopian' type='text' id='xueshengzhaopian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('xueshengzhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td>��ʦ�ţ�</td><td><%=Info.getselect("jiaoshihao","jiaoshixinxi","jiaoshihao")%></td></tr>		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
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
 
	var jiachangzhanghaoobj = document.getElementById("jiachangzhanghao"); if(jiachangzhanghaoobj.value==""){document.getElementById("clabeljiachangzhanghao").innerHTML="&nbsp;&nbsp;<font color=red>������ҳ��˺�</font>";return false;}else{document.getElementById("clabeljiachangzhanghao").innerHTML="  "; } 	var jiachangzhanghaoobj = document.getElementById("jiachangzhanghao");  
if(jiachangzhanghaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=jiachangxinxi&col=jiachangzhanghao&value="+jiachangzhanghaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeljiachangzhanghao").innerHTML="&nbsp;&nbsp;<font color=red>�ҳ��˺��Ѵ���</font>";  
return false;
}else{document.getElementById("clabeljiachangzhanghao").innerHTML="  ";  
}  
} 	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 	var jiachangshoujiobj = document.getElementById("jiachangshouji"); if(jiachangshoujiobj.value!=""){ if(/^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(jiachangshoujiobj.value)){document.getElementById("clabeljiachangshouji").innerHTML=""; }else{document.getElementById("clabeljiachangshouji").innerHTML="&nbsp;&nbsp;<font color=red>�����ֻ���ʽ</font>"; return false;}}      var jiachangyouxiangobj = document.getElementById("jiachangyouxiang"); if(jiachangyouxiangobj.value!=""){ if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(jiachangyouxiangobj.value)){document.getElementById("clabeljiachangyouxiang").innerHTML=""; }else{document.getElementById("clabeljiachangyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>���������ʽ</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


