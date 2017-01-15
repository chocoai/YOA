<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NetEmailAdd.aspx.cs" Inherits="NetMail_NetEmailAdd" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<html>
<head>
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script language="javascript">
        function PrintTable() {
            document.getElementById("PrintHide").style.visibility = "hidden"
            print();
            document.getElementById("PrintHide").style.visibility = "visible"
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
                            <li>Internet邮件</li>
                            <li class="active">撰写新邮件</li>
                        </ol>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            <asp:Button ID="ImageButton1" Text="提交" CssClass="btn btn-primary" runat="server" OnClick="ImageButton1_Click" />
                            &nbsp;&nbsp;
                            <asp:Button ID="ImageButton4" Text="草稿" CssClass="btn btn-primary" runat="server" OnClick="ImageButton4_Click" />
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
                </tr>
            </table>
            <table style="width: 100%" class="table table-striped table-hover">

                <tr>
                    <td align="right" style="width: 170px;">邮件主题：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">接收人：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" style="width:170px;">附件：</td>
                    <td>
                        <asp:CheckBoxList  CssClass="form-control" ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                        </asp:CheckBoxList>&nbsp;
                        <asp:Button ID="ImageButton3" Text="删除" CssClass="btn btn-danger"  runat="server" CausesValidation="False"
                             OnClick="ImageButton3_Click" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">上传附件：</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1"  CssClass="form-control" runat="server" Width="350px" />
                        <asp:Button ID="ImageButton2" runat="server"  Text="上传" CssClass="btn btn-primary"  OnClick="ImageButton2_Click" CausesValidation="False" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">邮件内容：</td>
                    <td>
                        <CKEditor:CKEditorControl ID="TxtContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
