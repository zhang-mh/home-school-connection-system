<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ҳ���Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���мҳ���Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �ҳ��˺ţ�<input name="jiachangzhanghao" type="text" id="jiachangzhanghao" style='border:solid 1px #000000; color:#666666' size="12" />  �ҳ�������<input name="jiachangxingming" type="text" id="jiachangxingming" style='border:solid 1px #000000; color:#666666' size="12" />  �ҳ�ְҵ��<input name="jiachangzhiye" type="text" id="jiachangzhiye" style='border:solid 1px #000000; color:#666666' size="12" />  ѧ��ѧ�ţ�<input name="xueshengxuehao" type="text" id="xueshengxuehao" style='border:solid 1px #000000; color:#666666' size="12" />  ѧ��������<input name="xueshengxingming" type="text" id="xueshengxingming" style='border:solid 1px #000000; color:#666666' size="12" />  �༶��<%=Info.getselect("banji","banjixinxi","banji"," 1=1 ")%>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jiachangxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�ҳ��˺�</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>�ҳ�����</td>
    <td bgcolor='#CCFFFF'>�ҳ�ְҵ</td>
    <td bgcolor='#CCFFFF'>ѧ��ѧ��</td>
    <td bgcolor='#CCFFFF'>ѧ������</td>
    <td bgcolor='#CCFFFF'>�༶</td>
    <td bgcolor='#CCFFFF'>�ҳ��ֻ�</td>
    <td bgcolor='#CCFFFF'>�ҳ�����</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>ѧ����Ƭ</td>
    <td bgcolor='#CCFFFF'>��ʦ��</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiachangxinxi"); 
    String url = "jiachangxinxi_list.jsp?1=1"; 
    String sql =  "select * from jiachangxinxi where 1=1";
	
if(request.getParameter("jiachangzhanghao")=="" ||request.getParameter("jiachangzhanghao")==null ){}else{sql=sql+" and jiachangzhanghao like '%"+request.getParameter("jiachangzhanghao")+"%'";}
if(request.getParameter("jiachangxingming")=="" ||request.getParameter("jiachangxingming")==null ){}else{sql=sql+" and jiachangxingming like '%"+request.getParameter("jiachangxingming")+"%'";}
if(request.getParameter("jiachangzhiye")=="" ||request.getParameter("jiachangzhiye")==null ){}else{sql=sql+" and jiachangzhiye like '%"+request.getParameter("jiachangzhiye")+"%'";}
if(request.getParameter("xueshengxuehao")=="" ||request.getParameter("xueshengxuehao")==null ){}else{sql=sql+" and xueshengxuehao like '%"+request.getParameter("xueshengxuehao")+"%'";}
if(request.getParameter("xueshengxingming")=="" ||request.getParameter("xueshengxingming")==null ){}else{sql=sql+" and xueshengxingming like '%"+request.getParameter("xueshengxingming")+"%'";}
if(request.getParameter("banji")=="" ||request.getParameter("banji")==null ){}else{sql=sql+" and banji like '%"+request.getParameter("banji")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("jiachangzhanghao") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("jiachangxingming") %></td>
    <td><%=map.get("jiachangzhiye") %></td>
    <td><%=map.get("xueshengxuehao") %></td>
    <td><%=map.get("xueshengxingming") %></td>
    <td><%=map.get("banji") %></td>
    <td><%=map.get("jiachangshouji") %></td>
    <td><%=map.get("jiachangyouxiang") %></td>
    <td width='90' align='center'><a href='<%=map.get("xueshengzhaopian") %>' target='_blank'><img src='<%=map.get("xueshengzhaopian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("jiaoshihao") %></td>
    
    <td align='center'><%=map.get("issh")%></a></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="jiachangxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="jiachangxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="jiachangxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

