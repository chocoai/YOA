<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileView.aspx.cs" Inherits="TelFile_FileView" %>
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
                            <li>信息交流</li>
                            <li class="active">查看传阅文件</li>
                        </ol>

                    </td>
                    <td align="right" valign="middle" style="height: 30px;">
                         归档到文件夹：<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">不归档查看</asp:ListItem>
                    </asp:DropDownList>&nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Button/QianShou.jpg"
                        OnClick="ImageButton2_Click" />
                        <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                        <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
                </tr>
        </table>
    <table style="width: 100%" class="table">            
        
        <tr>
            <td align="right" style="width: 170px;" >
                文件主题：</td>
                <td >
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                发送人：</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                发送时间：</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                要求接收人：</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                已接收人：</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                文件类别：</td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                附件：</td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                详细内容：</td>
            <td>
                <asp:Label ID="Label8" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                传阅意见：</td>
            <t>
                <asp:Label ID="Label9" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                我的意见：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox><br />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Button/Submit.jpg"
                    OnClick="ImageButton1_Click" /></td>
        </tr>
        </table></div>
    </form>
</body>
</html>