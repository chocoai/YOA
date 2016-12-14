﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyWorkPlanAdd.aspx.cs" Inherits="WorkPlan_MyWorkPlanAdd" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<html>
<head>
    <title>企业OA综合管理平台</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
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
                    <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                        <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;工作计划&nbsp;>>&nbsp;添加工作计划
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
                    <td align="right" style="width: 170px; background-color: #cccccc; height: 25px;">计划主题：</td>
                    <td style="background-color: #ffffff; height: 25px; padding-left: 5px;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">允许查看人：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="TextBox2" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserCallback',350,400);"
                            src="../images/Button/search.gif" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">附件：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                        </asp:CheckBoxList>&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="False"
                            ImageAlign="AbsMiddle" ImageUrl="../images/Button/DelFile.jpg" OnClick="ImageButton3_Click" />
                        &nbsp; &nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" ImageAlign="AbsMiddle"
                    ImageUrl="~/images/Button/ReadFile.gif" OnClick="ImageButton5_Click" />
                        &nbsp; &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton6" runat="server" CausesValidation="False" ImageAlign="AbsMiddle"
                    ImageUrl="~/images/Button/EditFile.gif" OnClick="ImageButton6_Click" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">上传附件：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" ImageAlign="AbsMiddle"
                            ImageUrl="../images/Button/UpLoad.jpg" OnClick="ImageButton2_Click" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">计划内容：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <CKEditor:CKEditorControl ID="TxtContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
