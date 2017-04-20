<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TongXunLuView.aspx.cs" Inherits="Work_TongXunLuView" %>
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
                            <li>通讯簿</li>
                            <li class="active">查看联系人</li>
                        </ol>

                    </td>
                    <td align="right" valign="middle" style="height: 30px;">
                        <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                        <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
                </tr>
        </table>
    <table style="width: 100%" class="table">            
        
        <tr>
            <td align="right" style="width: 170px;" >
                所属类别：</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                是否共享：</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong>个人信息</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                姓名：</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                性别：</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                生日：</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                昵称：</td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                职务：</td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                配偶：</td>
            <td>
                <asp:Label ID="Label8" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                子女：</td>
            <td>
                <asp:Label ID="Label9" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong>联系方式（单位）</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                单位名称：</td>
            <td>
                <asp:Label ID="Label10" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                单位地址：</td>
            <td>
                <asp:Label ID="Label11" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                单位邮编：</td>
            <td>
                <asp:Label ID="Label12" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                单位电话：</td>
            <td>
                <asp:Label ID="Label13" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                单位传真：</td>
            <td>
                <asp:Label ID="Label14" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong>联系方式（家庭）</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                家庭住址：</td>
            <td>
                <asp:Label ID="Label15" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                家庭邮编：</td>
            <td>
                <asp:Label ID="Label16" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                家庭电话：</td>
            <td>
                <asp:Label ID="Label17" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                手机：</td>
            <td>
                <asp:Label ID="Label18" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                小灵通：</td>
            <td>
                <asp:Label ID="Label19" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                电子邮件：</td>
            <td>
                <asp:Label ID="Label20" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                QQ号码：</td>
            <td>
                <asp:Label ID="Label21" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                MSN：</td>
            <td>
                <asp:Label ID="Label22" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                备注：</td>
            <td>
                <asp:Label ID="Label23" runat="server"></asp:Label></td>
        </tr>
        </table></div>
    </form>
</body>
</html>