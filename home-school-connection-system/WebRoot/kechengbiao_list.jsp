<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�γ̱�</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���пγ̱��б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��һ��<input name="zhouyi" type="text" id="zhouyi" style='border:solid 1px #000000; color:#666666' size="12" />  �ܶ���<input name="zhouer" type="text" id="zhouer" style='border:solid 1px #000000; color:#666666' size="12" />  ������<input name="zhousan" type="text" id="zhousan" style='border:solid 1px #000000; color:#666666' size="12" />  ���ģ�<input name="zhousi" type="text" id="zhousi" style='border:solid 1px #000000; color:#666666' size="12" />  ���壺<input name="zhouwu" type="text" id="zhouwu" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='kechengbiao_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��һ</td>
    <td bgcolor='#CCFFFF'>�ܶ�</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>����</td>
    
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"kechengbiao"); 
    String url = "kechengbiao_list.jsp?1=1"; 
    String sql =  "select * from kechengbiao where 1=1";
	
if(request.getParameter("zhouyi")=="" ||request.getParameter("zhouyi")==null ){}else{sql=sql+" and zhouyi like '%"+request.getParameter("zhouyi")+"%'";}
if(request.getParameter("zhouer")=="" ||request.getParameter("zhouer")==null ){}else{sql=sql+" and zhouer like '%"+request.getParameter("zhouer")+"%'";}
if(request.getParameter("zhousan")=="" ||request.getParameter("zhousan")==null ){}else{sql=sql+" and zhousan like '%"+request.getParameter("zhousan")+"%'";}
if(request.getParameter("zhousi")=="" ||request.getParameter("zhousi")==null ){}else{sql=sql+" and zhousi like '%"+request.getParameter("zhousi")+"%'";}
if(request.getParameter("zhouwu")=="" ||request.getParameter("zhouwu")==null ){}else{sql=sql+" and zhouwu like '%"+request.getParameter("zhouwu")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("kechengming") %></td>
    <td><%=map.get("kechengmingyi") %></td>
    <td><%=map.get("kechengminger") %></td>
    <td><%=map.get("kechengmingsan") %></td>
    <td><%=map.get("kechengmingsi") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="kechengbiao_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="kechengbiao_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="kechengbiaodetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

