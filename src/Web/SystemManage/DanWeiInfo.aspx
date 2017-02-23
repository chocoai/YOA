<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DanWeiInfo.aspx.cs" Inherits="SystemManage_DanWeiInfo" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
         <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
         <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
     <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
            <tr>
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>系统管理</li>
                            <li class="active">单位信息管理</li>
                        </ol>

                    </td>
                </tr>
         <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            <asp:Button ID="ImageButton1" Text="提交" CssClass="btn btn-primary" runat="server" OnClick="ImageButton1_Click" />
                            &nbsp;&nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
                </tr>
        </table>
    <table style="width: 100%" class="table">            
        
        <tr>
            <td align="right" style="width: 170px;" >
                单位名称：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="365px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                电话：</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="365px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                传真：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="365px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                邮编：</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="365px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                地址：</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="365px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                网站：</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="365px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                电子信箱：</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="365px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                开户行：</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Width="365px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                账号：</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Width="365px"></asp:TextBox></td>
        </tr>
        </table></div>
    </form>
</body>
</html>