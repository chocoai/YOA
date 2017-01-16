<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangPwd.aspx.cs" Inherits="Personal_ChangPwd" %>
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
                            <li class="active">修改密码</li>
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
    <table style="width: 100%"  class="table table-striped table-hover">            
        
        <tr>
            <td align="right" style="width: 170px;" >
                用户名：</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                用户密码：</td>
            <td >
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="Password" Width="250px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    Display="Dynamic" ErrorMessage="*该项不能为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                重复密码：</td>
            <td>
                <asp:TextBox ID="TextBox2" CssClass="form-control"  runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                    Display="Dynamic" ErrorMessage="*该项不能为空"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1"
                    ControlToValidate="TextBox2" ErrorMessage="*前后密码不一致"></asp:CompareValidator></td>
        </tr>
        </table></div>
    </form>
</body>
</html>