﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DocModify.aspx.cs" Inherits="DocCenter_DocModify" %>
<html>
	<head>
		<title>企业OA综合管理平台</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
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
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;文件中心&nbsp;>>&nbsp;修改<%=Request.QueryString["Type"].ToString() %>
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Button/Submit.jpg"
                        OnClick="ImageButton1_Click" />
                    <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
            <tr>
            <td height="3px" colspan="2" style="background-color: #ffffff"></td>
        </tr>
        </table>
    <table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">            
        
        <tr>
            <td align="right" style="width: 170px; background-color: #cccccc; height: 25px;" >
                选择文件：</td>
                <td style="background-color: #ffffff; height: 25px; padding-left:5px;" >
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                现有文件：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <img src="../images/ico_clip.gif" />
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" Target="_blank">[HyperLink1]</asp:HyperLink>&nbsp;
                &nbsp;<img src="../images/Button/Read.gif" /><asp:HyperLink ID="HyperLink2" runat="server"
                    Font-Underline="True" ForeColor="Blue" NavigateUrl="../DsoFramer/ReadFile.aspx"
                    Target="_blank">阅读</asp:HyperLink>&nbsp;
                <img src="../images/Button/Read.gif" /><asp:HyperLink ID="HyperLink3" runat="server"
                    Font-Underline="True" ForeColor="Blue" Target="_blank" NavigateUrl="../DsoFramer/ReadFile.aspx">编辑</asp:HyperLink>
                &nbsp;<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                </td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                文件编号：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                    <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                备注信息：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TxtContent" runat="server" Style="display: none"></asp:TextBox>
                <iframe frameborder="0" height="350" scrolling="no" src="../eWebEditor/ewebeditor.htm?id=TxtContent&style=mini"
                    width="99%"></iframe>
            </td>
        </tr>
        </table></div>
    </form>
</body>
</html>