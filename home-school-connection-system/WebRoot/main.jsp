<%@ page language="java"  pageEncoding="gb2312"%>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=gb2312" />
    <title>���м�У����ϵͳ</title>
    <script language="javascript" type="text/javascript">
        function G(id) {
            return document.getElementById(id);
        }
        var status = 1;
        function switchSysBar() {
            if (1 == status) {
                status = 0;
                G("switchPoint").innerHTML = '<img src="images/left.gif" style="margin:0 2px">';
                G("frmTitle").style.display = "none";
            }
            else {
                status = 1;
                G("switchPoint").innerHTML = '<img src="images/right.gif" style="margin:0 2px">';
                G("frmTitle").style.display = "";
            }
        }
    </script>
    <link rel="stylesheet" type="text/css" href="images/houtai.css" />
</head>
<body>

    <table cellpadding="0" cellspacing="0" class="table">
        <tr>
            <td colspan="3" class="top_menu">
                <div style="font-family:����; color:#006633;WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE:30px ; margin-top:5pt">
            <div >&nbsp;&nbsp;���м�У����ϵͳ</div>
        </div>
               
            </td>
        </tr>
        <tr>
            <td id="frmTitle" style="width: 182px;">
                <table height="100%" style="width: 182px;" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="background-color: #c9defa; padding: 3px; padding-bottom: 0">
                            <div class="lie lie2">
                                <a onClick="javascript:history.back();" style="cursor:pointer" class="shouye" target="frmright">����</a> <a style="cursor:pointer"  onClick="javascript:if(confirm('ȷ��Ҫ�˳���')==true){parent.location.href='logout.jsp';}"
                                    class="tuichu">�˳�</a>
                                <div style="clear: both">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" style="background: #c9defa" height="100%" name="fmtitle">
                            <iframe frameborder="0" id="frmleft" name="frmleft" scrolling="yes" src="mygo.jsp"
                                style="height: 100%; visibility: inherit; width: 182px;" allowtransparency="true">
                            </iframe>
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="middle" style="width: 12px; cursor: pointer;" bgcolor="#c3daf9" onMouseOver="this.style.backgroundColor='#ddeafc';this.style.color='red'"
                onmouseout="this.style.backgroundColor='';this.style.color=''" onClick="switchSysBar()">
                <span class="navpoint" id="switchPoint" title="�ر�/������">
                    <img src="images/right.gif" style="margin: 0 2px"></span>
            </td>
            <td style="width: 100%" valign="top">
                <table width="100%" cellpadding="0" cellspacing="0" style="height: 100%;">
                    <tr>
                        <td>
                            <div class="menu">
                                <div class="wenzi">
                                    <a href="sy.jsp" target="frmright" class="a1">��ʾ����</a><em>|</em><a
                                        href="yhzhgl.jsp" target="frmright" class="a1">ϵͳ�û�����</a><em>|</em>
										
										<%
											if (request.getSession().getAttribute("cx").equals("��������Ա") || request.getSession().getAttribute("cx").equals("��ͨ����Ա"))
											{
											%>
											<a  href="mod.jsp" target="frmright" class="a1">�޸�����</a>
											<%
											}
											else
											{
												%>
												<a  href="mod2.jsp" target="frmright" class="a1">�޸�����</a>
												<%
											}
											
										%>
										
                                </div>
								
                               <div class="wenzi2">
									��ǰ���ڣ�<%java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);%>
                                    <a href="index.jsp" target="_parent">
                                        ����ǰ̨</a> <a href="logout.jsp" target="_parent">
                                        �˳�</a></div>
                               
                            </div>
                           
                           
                        </td>
                    </tr>
                    <tr>
                        <td style="height:100%" valign="top" id="tdframe">
                            <iframe frameborder="0" id="frmright" name="frmright" scrolling="auto" src="sy.jsp"
                                style="margin: 0; visibility: inherit; width: 100%; height:100%; z-index:1" onload="InitBulletin()" >
                            </iframe>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
  
</body>
</html>

