<!--#include File="inc/Conns.asp" -->
<%
 Set OOO00=Response:Set OO0OOO=Request:Set OOO000=Session:Set OO0OO0=Application:Set OOO0O=Server
classid=OO0OOO.QueryString("classid")
ye= (78 * 94 - 7331)
IF not isNumeric(OO0OOO("page")) then
OOO00.write("<script>alert(""��������""); history.go(-1);</script>")
OOO00.End
End If
sql="select * from [Honor] order by px_id desc,id desc"
Dim fileName,postion,time
fileName = OO0OOO.ServerVariables("script_name")
postion = InstrRev(fileName,"/")+ (78 * 94 - 7331)
fileName = Mid(fileName,postion)
set rscp=OOO0O.CreateObject("adodb.recordset")
rscp.open sql,conn, (78 * 94 - 7331), (78 * 94 - 7331)
if rscp.bof or rscp.eof then
OOO00.write("<script>alert(""������Ϣ""); history.go(-1);</script>")
OOO00.End
else
pages= (77 * 50 - 3841)
rscp.pagesize=pages
if not isempty(OO0OOO.QueryString("page")) then
thispage=clng(OO0OOO.QueryString("page"))
else
thispage= (78 * 94 - 7331)
end if
rscpcount=rscp.recordcount
if thispage="" then thispage= (78 * 94 - 7331)
if thispage< (78 * 94 - 7331) then thispage= (78 * 94 - 7331)
if (thispage- (78 * 94 - 7331))*pages>rscpcount then
if (rscpcount mod pages)= (85 * 79 - 6715) then
thispage=rscpcount\pages
else
thispage=rscpcount\pages+ (78 * 94 - 7331)
end if
end if
if(rscpcount mod pages)= (85 * 79 - 6715) then
allpages=rscpcount\pages
else
allpages=rscpcount\pages+ (78 * 94 - 7331)
end if
rscp.absolutepage=thispage
i= (78 * 94 - 7331)
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����չʾ - <%=List("WebName")%></title>
<link href="css<%=List("fengge")%>/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script src="/images<%=List("fengge")%>/tu.js" type="text/javascript"></script>
</head>
<body>
<!--#include file="top.asp" -->
<!-- mainbody-->
<div class="banner"><span style="background:url(images<%=List("fengge")%>/banner_a.jpg) center top no-repeat;height:220px;display:block;"></span></div>
<div class="main">
<div class="wrap">
<!--#include File="left.asp" -->
<div class="content_box">
<div class="content_top"><span>����ǰλ�ã�<a href="/">��ҳ</a>&nbsp;&gt;&nbsp;����չʾ</span>����չʾ</div>
<div class="info_box">
<table width="95%" border="0" align="center"  cellpadding="0" cellspacing="0">
  <tr>
    <td height="198" align="right" valign="middle"><table border="0"  align="center" cellpadding="0" cellspacing="0" >
      <tr>
        <%do while not rscp.eof and  pages>0 %>
        <td align="center" valign="top" ><table width="158" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><table border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="10"><img src="Images/bg_0ltop.gif" width="10" height="10" /></td>
                <td background="Images/bg_01.gif"></td>
                <td><img src="Images/bg_0rtop.gif" width="10" height="10" /></td>
                <td width="5" rowspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td background="Images/bg_03.gif"></td>
                <td><a href="Honor.asp?id=<%=rscp("id")%>"><img onmouseover="this.style.filter='alpha(opacity=100)';high(this)" onmouseout="low(this)"  src="<%=rscp("pic")%>" width="270" height="210" border="0" /></a><a href="Honor.asp?id=<%=rscp("id")%>"></a></td>
                <td background="Images/bg_04.gif"></td>
              </tr>
              <tr>
                <td><img src="Images/bg_0lbottom.gif" width="10" height="10" /></td>
                <td background="Images/bg_02.gif"></td>
                <td><img src="Images/bg_0rbottom.gif" width="10" height="10" /></td>
              </tr>
            </table></td>
            <td>&nbsp;&nbsp;</td>
          </tr>
          <tr>
            <td height="50" align="center"><%=left(rscp("Honorname"),50)%></td>
            <td align="center">&nbsp;</td>
          </tr>
        </table></td>
        <%if (i mod 3) =0 then%>
      </tr>
      <%end if%>
      <%pages = pages - 1
rscp.movenext
i=i+1
loop
end if%>
    </table></td>
  </tr>
  <tr>
    <td align="center" valign="middle" class="mar8">������Ϣ��<font color="#FF0000"><%=rscp.recordcount%></font>����
                  ����<font color="#FF0000"><%=allpages%></font>��ҳ&nbsp;��ǰ�ڡ�<font color="#FF0000"><%= thispage %></font>��ҳ&nbsp;
                            <% if thispage<>1 then %>
                  ��<a href="<%=filename&"?page=1"%>">��ҳ</a>�� ��<a href="<%=filename&"?page="&(thispage-1)%>">��һҳ</a>��
                  <% End If %>
                  <% if thispage<>allpages then %>
                  ��<a href="<%=filename&"?page="&(thispage+1)%>">��һҳ</a>����<a href="<%=filename&"?page="&allpages&""%>&amp;classid=<%=classid%>">ĩҳ</a>��
                <% End If %></td>
  </tr>
</table>
<div class="clear"></div>
</div>
<div class="blank80"></div>
</div>
<div class="clear"></div>
</div>
<!-- /mainbody-->
<!-- foot-->
<!--#include File="foot.asp" -->
<!-- /foot-->
</body>
</html>