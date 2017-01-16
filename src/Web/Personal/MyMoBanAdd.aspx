<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMoBanAdd.aspx.cs" Inherits="Personal_MyMoBanAdd" %>

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
                            <li>个人设置</li>
                            <li class="active">添加常用模板</li>
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
                    <td align="right" style="width: 170px;">模板主题：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">是否共享：</td>
                    <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem Selected="True">否</asp:ListItem>
                                </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">模板内容：</td>
                    <td>
                        <CKEditor:CKEditorControl ID="TxtContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
