<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyWorkPlanAdd.aspx.cs" Inherits="WorkPlan_MyWorkPlanAdd" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<html>
<head>
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var dialog;
        function selectUserCallback(returndata) {
            $('#<%=TextBox2.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
    </script>
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
                            <li>工作计划</li>
                            <li class="active">添加工作计划</li>
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
            <table style="width: 100%"  class="table">

                <tr>
                    <td align="right" style="width: 170px;">计划主题：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">允许查看人：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                         <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                       </td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">附件：</td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                        </asp:CheckBoxList>&nbsp;<asp:Button ID="ImageButton3" Text="删除文件" CssClass="btn btn-danger" runat="server" CausesValidation="False"
                            ImageAlign="AbsMiddle" ImageUrl="../images/Button/DelFile.jpg" OnClick="ImageButton3_Click" />
                        &nbsp; &nbsp;
                <asp:Button ID="ImageButton5"  Text="读取文件" CssClass="btn btn-info" runat="server" CausesValidation="False" OnClick="ImageButton5_Click" />
                        &nbsp; &nbsp;&nbsp;
                <asp:Button ID="ImageButton6" Text="编辑文件" CssClass="btn btn-primary" runat="server" CausesValidation="False"  OnClick="ImageButton6_Click" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">上传附件：</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                        <asp:Button ID="ImageButton2" Text="上传" CssClass="btn btn-primary" runat="server" CausesValidation="False" OnClick="ImageButton2_Click" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">计划内容：</td>
                    <td>
                        <CKEditor:CKEditorControl ID="TxtContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
