<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!doctype html>
<html>
<head>
<meta >
<title>�γ̱�</title>

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
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('�Բ���,�����ȵ�½!');location.href='index.jsp';</script>");
	return;
}
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
<h2 class="bottom-0 page-title">�γ̱�</h2>
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


		 <form name="form1" id="form1" method="post" action="">
   ����:  ��һ��<input name="zhouyi" type="text" id="zhouyi" style='border:solid 1px #000000; color:#666666' size="12" />  �ܶ���<input name="zhouer" type="text" id="zhouer" style='border:solid 1px #000000; color:#666666' size="12" />  ������<input name="zhousan" type="text" id="zhousan" style='border:solid 1px #000000; color:#666666' size="12" />  ���ģ�<input name="zhousi" type="text" id="zhousi" style='border:solid 1px #000000; color:#666666' size="12" />  ���壺<input name="zhouwu" type="text" id="zhouwu" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="�л���ͼ"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='kechengbiaolisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��һ</td>    <td bgcolor='#CCFFFF'>�γ���</td>    <td bgcolor='#CCFFFF'>�ܶ�</td>    <td bgcolor='#CCFFFF'>�γ���һ</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�γ�����</td>    
    
    <td width="30" align="center" bgcolor="CCFFFF">��ϸ</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"kechengbiao"); 
    String url = "kechengbiaolist.jsp?2=2"; 
    String sql =  "select * from kechengbiao where 1=1";
	if(request.getParameter("zhouyi")=="" ||request.getParameter("zhouyi")==null ){}else{sql=sql+" and zhouyi like '%"+request.getParameter("zhouyi")+"%'";}if(request.getParameter("zhouer")=="" ||request.getParameter("zhouer")==null ){}else{sql=sql+" and zhouer like '%"+request.getParameter("zhouer")+"%'";}if(request.getParameter("zhousan")=="" ||request.getParameter("zhousan")==null ){}else{sql=sql+" and zhousan like '%"+request.getParameter("zhousan")+"%'";}if(request.getParameter("zhousi")=="" ||request.getParameter("zhousi")==null ){}else{sql=sql+" and zhousi like '%"+request.getParameter("zhousi")+"%'";}if(request.getParameter("zhouwu")=="" ||request.getParameter("zhouwu")==null ){}else{sql=sql+" and zhouwu like '%"+request.getParameter("zhouwu")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhouyi") %></td><td><%=map.get("kechengming") %></td><td><%=map.get("zhouer") %></td><td><%=map.get("kechengmingyi") %></td><td><%=map.get("zhousan") %></td><td><%=map.get("kechengminger") %></td><td><%=map.get("zhousi") %></td><td><%=map.get("kechengmingsan") %></td><td><%=map.get("zhouwu") %></td><td><%=map.get("kechengmingsi") %></td>
    
    <td width="30" align="center"> <a href="kechengbiaodetail.jsp?id=<%=map.get("id")%>" >��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }						

		
		
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

