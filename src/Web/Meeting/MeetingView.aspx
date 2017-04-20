<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MeetingView.aspx.cs" Inherits="Meeting_MeetingView" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
         <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
  <script language="javascript">
  function PrintTable()
    {
        document.getElementById("PrintHide") .style.visibility="hidden"    
        print();
        document.getElementById("PrintHide") .style.visibility="visible"    
    }
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
     <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
           <tr>
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>会议管理</li>
                            <li class="active">查看网络会议</li>
                        </ol>

                    </td>
                    <td align="right" valign="middle" style="height: 30px;">
                        <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                        <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
                </tr>
        </table>
    <table style="width: 100%" class="table" >            
        <tr>
            <td align="right" style="width: 170px;">
                会议标题：</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
            <td rowspan="8" width="245px" valign="top" align="center">
            
            <img src="../images/U03.gif" /><a class="na"  href="callto:<%= MettingIp%>">呼叫进入</a>&nbsp;&nbsp;<img src="../images/U03.gif" /><a class="na" href="javascript:void(0)" onclick=NetMeeting.LeaveConference()>挂断会议</a><br />
            <OBJECT id=NetMeeting classid=clsid:3E9BAF2D-7A79-11D2-9334-0000F875AE17></OBJECT>
 
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                会议主题：</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                会议描述：</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                会议出席人：</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                网络会议室IP地址：</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                会议主持人：</td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                开始时间：</td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                结束时间：</td>
            <td>
                <asp:Label ID="Label8" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                会议纪要：</td>
            <td colspan="2">
                <asp:Label ID="Label9" runat="server"></asp:Label></td>
        </tr>
        </table></div>
    </form>
</body>
</html>