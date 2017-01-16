<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MailSetting.aspx.cs" Inherits="Personal_MailSetting" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
        <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>    
     <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">   
         <tr>
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>个人设置</li>
                            <li class="active">邮件设置</li>
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
    <table style="width: 100%" class="table table-striped table-hover">            
        
        <tr>
            <td align="right" style="width: 170px;" >
                邮箱地址：</td>
                <td >
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                POP3登录名：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                POP3密码：</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                POP3服务器：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width:170px;">
                POP3端口：</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                SMTP登录名：</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                SMTP密码：</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                SMTP服务器：</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="350px"></asp:TextBox></td>
        </tr>
        </table></div>
    </form>
</body>
</html>