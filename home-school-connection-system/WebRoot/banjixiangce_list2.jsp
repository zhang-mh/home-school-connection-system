<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�༶���</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���а༶����б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ����ţ�<input name="xiangcebianhao" type="text" id="xiangcebianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �༶��<%=Info.getselect("banji","banjixinxi","banji"," 1=1 ")%>  ������ƣ�<input name="xiangcemingcheng" type="text" id="xiangcemingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  �����ˣ�<input name="faburen" type="text" id="faburen" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�����</td>    <td bgcolor='#CCFFFF'>�༶</td>    <td bgcolor='#CCFFFF'>�������</td>    <td bgcolor='#CCFFFF' width='90' align='center'>��ҳ��Ƭ</td>    <td bgcolor='#CCFFFF'>������</td>    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"banjixiangce"); 
    String url = "banjixiangce_list2.jsp?1=1"; 
    String sql =  "select * from banjixiangce where faburen='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("xiangcebianhao")=="" ||request.getParameter("xiangcebianhao")==null ){}else{sql=sql+" and xiangcebianhao like '%"+request.getParameter("xiangcebianhao")+"%'";}if(request.getParameter("banji")=="" ||request.getParameter("banji")==null ){}else{sql=sql+" and banji like '%"+request.getParameter("banji")+"%'";}if(request.getParameter("xiangcemingcheng")=="" ||request.getParameter("xiangcemingcheng")==null ){}else{sql=sql+" and xiangcemingcheng like '%"+request.getParameter("xiangcemingcheng")+"%'";}if(request.getParameter("faburen")=="" ||request.getParameter("faburen")==null ){}else{sql=sql+" and faburen like '%"+request.getParameter("faburen")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xiangcebianhao") %></td> <td><%=map.get("banji") %></td> <td><%=map.get("xiangcemingcheng") %></td>  <td width='90'><a href='<%=map.get("shouyezhaopian") %>' target='_blank'><img src='<%=map.get("shouyezhaopian") %>' width=88 height=99 border=0 /></a></td> <td><%=map.get("faburen") %></td> 
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="banjixiangce_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="banjixiangce_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="banjixiangcedetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
${page.info }


  </body>
</html>

