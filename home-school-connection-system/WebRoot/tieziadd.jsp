<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!doctype html>
<html>
<head>
<meta >
<title>������̳</title>
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
<script type="text/javascript" src="js/popup.js"></script>
 <% 
 if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('�Բ���,�����ȵ�½!');location.href='index.jsp';</script>");
	return;
}
 String bk=request.getParameter("bk");
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
ext.put("fid",0);
}
new CommDAO().insert(request,response,"tiezi",ext,true,false,"bbs.jsp"); 
%>
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
<h2 class="bottom-0 page-title">������̳</h2>
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


		<table width="96%" border="0" align="left" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" class="newsline" style="border-collapse:collapse">
                          <tr>
                            <td height="104" valign="top"><table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
                               <form  action="tieziadd.jsp?f=f&bk=<%=bk%>"  method="post" name="form1"  onsubmit="return checkform();">
                                  <tr>
                                    <td width="10%">��飺</td>
                                    <td width="90%"><input name='bankuai' type='text' id='bankuai' value="<%=bk%>" readonly="readonly" />
                                      &nbsp;* <label id='clabelbankuai' /></td>
                                  </tr>
                                  <tr>
                                    <td>���⣺</td>
                                    <td><input name='biaoti' type='text' id='biaoti' value='' size='50'  onblur='checkform()' />
                                      &nbsp;* <label id='clabelbiaoti' /></td>
                                  </tr>
                                  <tr>
                                    <td>���ͣ�</td>
                                    <td><input name="leixing" type="radio" value="putong" checked>
                                        <img src="bbs/putong.gif" width="18" height="18"> ��ͨ
                                      <input type="radio" name="leixing" value="jiaji">
                                        <img src="bbs/jiaji.gif" width="18" height="18"> �Ӽ�
                                      <input type="radio" name="leixing" value="qiuzhu">
                                        <img src="bbs/qiuzhu.gif" width="18" height="18"> ����
                                      <input type="radio" name="leixing" value="tuijian">
                                        <img src="bbs/tuijian.gif" width="15" height="17"> �Ƽ�</td>
                                  </tr>
                                  <tr>
                                    <td>���ݣ�</td>
                                    <td><textarea name='neirong' cols='50' rows='8' id='neirong' ></textarea> <label id='clabelneirong' /></td>
                                  </tr>
                                  <tr>
                                    <td>������</td>
                                    <td><input name="fujian" type="text" id="fujian" size="50">
                                     <input type='button' value='�ϴ�' onClick="up('fujian')" style='border:solid 1px #000000; color:#666666'/></td>
                                  </tr>
                                  <tr>
                                    <td>�����ˣ�</td>
                                    <td><input name='faburen' type='text' id='faburen' value='<%=request.getSession().getAttribute("username")%>' /></td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td><input type="hidden" name="addnew" value="1" />
                                        <input type="submit" name="Submit" value="���" onClick="return checkform();" />
                                        <input type="reset" name="Submit2" value="����" /></td>
                                  </tr>
                                </form>
                            </table></td>
                          </tr>
                          <tr>
                            <td align="right"> <a href="bbs.jsp" >����</a></td>
                          </tr>
                        </table>

		
		
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
<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var bankuaiobj = document.getElementById("bankuai"); if(bankuaiobj.value==""){document.getElementById("clabelbankuai").innerHTML="&nbsp;&nbsp;<font color=red>��������</font>";return false;}else{document.getElementById("clabelbankuai").innerHTML="  "; } 
	var biaotiobj = document.getElementById("biaoti"); if(biaotiobj.value==""){document.getElementById("clabelbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>���������</font>";return false;}else{document.getElementById("clabelbiaoti").innerHTML="  "; } 
	var neirongobj = document.getElementById("neirong"); if(neirongobj.value==""){document.getElementById("clabelneirong").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelneirong").innerHTML="  "; } 


return true;   
}   
popheight=450;
</script>  

