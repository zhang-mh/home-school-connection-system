<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��ʦ��Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���н�ʦ��Ϣ�б���</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��ʦ�ţ�<input name="jiaoshihao" type="text" id="jiaoshihao" style='border:solid 1px #000000; color:#666666' size="12" />  ��ʦ������<input name="jiaoshixingming" type="text" id="jiaoshixingming" style='border:solid 1px #000000; color:#666666' size="12" /> �Ա�<select name='xingbie' id='xingbie' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select> ����<select name='jibie' id='jibie' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="�ؼ���ʦ">�ؼ���ʦ</option><option value="�߼���ʦ">�߼���ʦ</option><option value="��ͨ��ʦ">��ͨ��ʦ</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jiaoshixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��ʦ��</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiaoshixinxi"); 
    String url = "jiaoshixinxi_list.jsp?1=1"; 
    String sql =  "select * from jiaoshixinxi where 1=1";
	
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("jiaoshihao") %></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="jiaoshixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="jiaoshixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="jiaoshixinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>
