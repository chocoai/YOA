<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormType.aspx.cs" Inherits="WorkFlow_FormType" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
<link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
<html>
<head>
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>工作流程</li>
                            <li class="active">表单类型</li>
                        </ol>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            <asp:Button ID="ImageButton1" runat="server" Text="提交" CssClass="btn btn-primary"  OnClick="ImageButton1_Click" />
                            &nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
                </tr>
                <tr>
                    <td height="3px" colspan="2" style="background-color: #ffffff"></td>
                </tr>
            </table>
            <table style="width: 100%" class="table table-striped table-hover" border="0">

                <tr>
                    <td align="right" style="width: 170px;">表单类型：</td>
                    <td style="height: 25px; padding-left: 5px;">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="448px" Height="92px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*该项不可以为空" Display="Dynamic"></asp:RequiredFieldValidator><br />
                        格式如：生产管理|公文管理|考勤管理 &nbsp; &nbsp; 中间采用 |&nbsp; 分隔开。请注意全角半角字符。</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
