<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;
 </script>
 <div class="header-fixed">
        <div class="logo-header">
          <div class="container">
            <div class="logo-container pull-left clearfix">
              <div class="logo">
               <h1 class="site-title"> <a href="index.jsp"> <img src="qtimages/small-logo.png">&nbsp;���м�У����ϵͳ </a> </h1>
               
              </div>
            </div>
            <div class="menu-container pull-right">
              <div class="site-menu">
                <div class="site-menu-inner clearfix">
                  <div class="site-menu-container pull-left">
                    <nav class="hidden-xs hidden-sm">
                      <ul class="sf-menu clearfix list-unstyled">
                  <%@ include file="banner.jsp"%>
                </ul>
                    </nav>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
	  
	   <div class="logo-header">
        <div class="container">
          <div class="logo-container clearfix">
            <div class="logo pull-left">
              <h1 class="site-title"> <a href="index.jsp"> <img src="qtimages/logo.png" alt="���м�У����ϵͳ">&nbsp;&nbsp;���м�У����ϵͳ </a> </h1>
              
			  
            </div>
            <div class="social-info pull-right hidden-xs hidden-sm">
              <ul class="social textcolor list-unstyled">
                <li class="phone"><a href="#"><i class="fa fa-phone"></i><span>023-xxxxx xxxxx</span></a></li>
                <li class="mail active"><a href="#"><i class="fa fa-envelope"></i><span>xxxx@xxxx.com</span></a></li>
              </ul>
            </div>
            <ul class="member">
			
				<%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
			 <form action="jspmgzjxhlxthsg4194ABA2?ac=login&amp;a=a" method="post" name="f11" id="f11" style="display: inline">
              <li>
                <input type="text" name="username" id="username" placeholder="�û���">
              </li>
              <li>
                <input type="text" name="pwd1" id="pwd1" placeholder="����">
              </li>
			  <li>
                <select name="cx" id="cx" style="width:100px; height:22px; color:#888888;  background-color:#8cb88b; ">
			                  <option value="��ʦ">��ʦ</option>
		                      <option value="�ҳ�">�ҳ�</option>
			    </select>&nbsp;
              </li>
			  <li>
                <input type="text" name="pagerandom" id="pagerandom" placeholder="��֤��">
              </li>
			   <li>
              <a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /></a>&nbsp;
              </li>
              <li>
                <input type="submit" name="submit" id="submit" value="��½" class="login" onclick="return checklog();">
              </li>
              <li></li>
		      </form>
			   <script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("����������");
		return false;
	}
}
           
                                  </script>
			     <%}else{ %>
				  <li>
                 �û���:<%=request.getSession().getAttribute("username")%>;&nbsp;
              </li>
              <li>
                Ȩ��:<%=request.getSession().getAttribute("cx")%>;&nbsp;
              </li>
			  <li>
                ��ӭ���ĵ���!&nbsp;
              </li>
			 
              <li>
                <input type="button" name="submit" id="submit" value="�˳�" class="login" onclick="javascript:location.href='logout.jsp';" style="cursor:pointer">
              </li>
              <li>
                <input type="submit" name="submit" id="submit" value="��������" class="sign2" onclick="javascript:location.href='main.jsp';" style="cursor:pointer">
              </li>
				  <%} %>
            </ul>
          </div>
        </div>
      </div>
      <div class="site-menu">
        <div class="container">
          <div class="site-menu-inner clearfix">
            <div class="site-menu-container pull-left">
              <nav class="hidden-xs hidden-sm">
                <ul class="sf-menu clearfix list-unstyled">
                  
				  <%@ include file="banner.jsp"%>
                </ul>
              </nav>
            </div>
            <div class="header-search-form pull-right hidden-xs hidden-sm">
              <div class="header-search">
                <form role="search" method="post" class="search-form" action="news.php">
                  <div class="header-search-input-wrap">
                    <input class="header-search-input" placeholder="��������Ҫ�����Ĺؼ�֤����" type="text" value="" name="biaoti"/>
                  </div>
                  <input class="header-search-submit" type="submit" value="">
                  <span class="header-icon-search"><i class="fa fa-search"></i></span>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
	  

