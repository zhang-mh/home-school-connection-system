<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!doctype html>
<html>
<head>
<meta >
<title>�ҳ���Ϣ</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="����">
<meta name="author" content="yanglin">
<link href="qtimages/css/bootstrap.css" rel="stylesheet">
<link href="qtimages/css/style.css" rel="stylesheet">
<link href="qtimages/css/fonts.css" rel="stylesheet">
<link href="qtimages/css/animate.css" rel="stylesheet">
<link href="qtimages/css/plugins.css" rel="stylesheet">
<link href="qtimages/css/responsive.css" rel="stylesheet">
<link href="qtimages/css/settings.css" rel="stylesheet">
<link href="qtimages/css/captions.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.STYLE1 {
	color: #009933;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>
</head>
<%

  String id="";

 
  
 

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var jiachangzhanghaoobj = document.getElementById("jiachangzhanghao"); if(jiachangzhanghaoobj.value==""){document.getElementById("clabeljiachangzhanghao").innerHTML="&nbsp;&nbsp;<font color=red>������ҳ��˺�</font>";return false;}else{document.getElementById("clabeljiachangzhanghao").innerHTML="  "; } 
	var jiachangzhanghaoobj = document.getElementById("jiachangzhanghao");  
if(jiachangzhanghaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=jiachangxinxi&col=jiachangzhanghao&value="+jiachangzhanghaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeljiachangzhanghao").innerHTML="&nbsp;&nbsp;<font color=red>�ҳ��˺��Ѵ���</font>";  
return false;
}else{document.getElementById("clabeljiachangzhanghao").innerHTML="  ";  
}  
} 
	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 
	var jiachangshoujiobj = document.getElementById("jiachangshouji"); if(jiachangshoujiobj.value!=""){ if(/^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(jiachangshoujiobj.value)){document.getElementById("clabeljiachangshouji").innerHTML=""; }else{document.getElementById("clabeljiachangshouji").innerHTML="&nbsp;&nbsp;<font color=red>�����ֻ���ʽ</font>"; return false;}}  
    var jiachangyouxiangobj = document.getElementById("jiachangyouxiang"); if(jiachangyouxiangobj.value!=""){ if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(jiachangyouxiangobj.value)){document.getElementById("clabeljiachangyouxiang").innerHTML=""; }else{document.getElementById("clabeljiachangyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>���������ʽ</font>"; return false;}}  
    
}
function gow()
{
	document.location.href="jiachangxinxiadd.jsp?id=<%=id%>";
}
</script>


<body>
<div id="wrap">
  <div class="main-inner-content">
    <header id="header" class="section cover header-bg" data-bg="qtimages/slider.jpg">
    
     <%@ include file="qttop.jsp"%>
    </header>
    <div class="page-heading">
<div class="container">
<div class="row">
<div class="col-md-6">
<div class="page-title-area">
<h2 class="bottom-0 page-title">�ҳ�ע��</h2>
</div>
</div>
<div class="col-md-6 text-right">
<!--<div class="breadcrumbs">
<ul class="bottom-0 list-unstyled">
<li><a href="#"><i class="fa fa-home"></i></a></li>
<li><a href="#">��Ŀ����</a></li>
<li><span>��������</span></li>
</ul>
</div>-->
</div>
</div>
</div>
</div>
    <div class="content-sidebar" id="content-wrap">
<div class="container">
<div class="row nospace">


		
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("issh","��");



new CommDAO().insert(request,response,"jiachangxinxi",ext,true,false,""); 

 }
%>
   <form  action="jiachangxinxiadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">�ҳ��˺ţ�</td><td><input name='jiachangzhanghao' type='text' id='jiachangzhanghao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeljiachangzhanghao' /></td></tr>
		<tr><td  width="200">���룺</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelmima' /></td></tr>
		<tr><td  width="200">�ҳ�������</td><td><input name='jiachangxingming' type='text' id='jiachangxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">�ҳ�ְҵ��</td><td><input name='jiachangzhiye' type='text' id='jiachangzhiye' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">ѧ��ѧ�ţ�</td><td><input name='xueshengxuehao' type='text' id='xueshengxuehao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">ѧ��������</td><td><input name='xueshengxingming' type='text' id='xueshengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td>�༶��</td><td><%=Info.getselect("banji","banjixinxi","banji")%></td></tr>
		<tr><td  width="200">�ҳ��ֻ���</td><td><input name='jiachangshouji' type='text' id='jiachangshouji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljiachangshouji' />�����ֻ���ʽ</td></tr>
		<tr><td  width="200">�ҳ����䣺</td><td><input name='jiachangyouxiang' type='text' id='jiachangyouxiang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljiachangyouxiang' />���������ʽ</td></tr>
		<tr><td  width="200">ѧ����Ƭ��</td><td><input name='xueshengzhaopian' type='text' id='xueshengzhaopian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('xueshengzhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td>��ʦ�ţ�</td><td><%=Info.getselect("jiaoshihao","jiaoshixinxi","jiaoshihao")%></td></tr>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>

		
		
</div> 
</div> 
</div>

 <div id="page-content">
      
     
      
     
     <%@ include file="yqlj.jsp"%>

    </div>
	
  </div>
 <%@ include file="qtdown.jsp"%>
  <div class="sb-slidebar sb-right">
    <div class="sb-menu-trigger"></div>
  </div>
</div>
<script src="js/easing.js"></script> 
<script src="js/hoverIntent.js"></script> 
<script src="js/superfish.js"></script> 
<script src="js/bootstrap.js"></script> 
<script src="js/countto.js"></script> 
<script src="js/waypoint.js"></script> 
<script src="js/typer.js"></script> 
<script src="js/flexslider.js"></script> 
<script src="js/caroufredsel.js"></script> 
<script src="js/wow.js"></script> 
<script src="js/donutchart.js"></script> 
<script src="js/magnificpopup.js"></script> 
<script src="js/masonry.js"></script> 
<script src="js/sidebar.js"></script> 
<script src="js/tweecool.js"></script> 
<script src="js/isotope.js"></script> 
<script src="js/contact.js"></script> 
<script src="js/functions.js"></script> 
<script src="js/jquery.plugins.min.js"></script> 
<script src="js/jquery.revolution.min.js"></script>

</body>
</html></html>

