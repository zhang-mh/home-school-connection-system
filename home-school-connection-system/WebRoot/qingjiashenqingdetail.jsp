<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!doctype html>
<html>
<head>
<meta >
<title>�������</title>

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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'��������',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"qingjiashenqing");
	
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
<h2 class="bottom-0 page-title">�������</h2>
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


		
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%'>��ٵ��ţ�</td><td width='39%'><%=mqt.get("qingjiadanhao")%></td>		 <td width='11%'>�ҳ��˺ţ�</td><td width='39%'><%=mqt.get("jiachangzhanghao")%></td>		 </tr><tr><td width='11%'>�ҳ�������</td><td width='39%'><%=mqt.get("jiachangxingming")%></td>		 <td width='11%'>ѧ��ѧ�ţ�</td><td width='39%'><%=mqt.get("xueshengxuehao")%></td>		 </tr><tr><td width='11%'>ѧ��������</td><td width='39%'><%=mqt.get("xueshengxingming")%></td>		 <td width='11%'>�༶��</td><td width='39%'><%=mqt.get("banji")%></td>		 </tr><tr><td width='11%'>��ʦ�ţ�</td><td width='39%'><%=mqt.get("jiaoshihao")%></td>		 <td width='11%'>���ԭ��</td><td width='39%'><%=mqt.get("qingjiayuanyin")%></td>		 </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" /><input type=button name=Submit52 value=��ӡ onClick="javascript:window.print()"  /> <!--jixaaxnnxiu--></td></tr>
    
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

