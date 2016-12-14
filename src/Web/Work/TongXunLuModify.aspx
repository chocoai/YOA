﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TongXunLuModify.aspx.cs" Inherits="Work_TongXunLuModify" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<html>
	<head>
		<title>企业OA综合管理平台</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
    <script type="text/javascript">
        var dialog;
        function selectConditionCategoryCallback(returndata) {
            $('#<%=TextBox1.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionSexCallback(returndata) {
            $('#<%=TextBox3.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectCalendarCallback(returndata) {
            $('#<%=TextBox4.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        
    </script>
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
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;通讯簿&nbsp;>>&nbsp;修改联系人
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
            <td align="right" style="width: 170px; background-color: #cccccc; height: 25px;" >
                所属类别：</td>
                <td style="background-color: #ffffff; height: 25px; padding-left:5px;" >
                    <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                    <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPTongXunLu&LieName=FenZu&callbackFun=selectConditionCategoryCallback',350,400);"
                        src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                是否共享：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>是</asp:ListItem>
                    <asp:ListItem Selected="True">否</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td colspan="2" style="padding-left: 5px; height: 25px; background-color: #ffffff;
                text-align: center">
                <strong>个人信息</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                姓名：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox2" runat="server" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                性别：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPTongXunLu&LieName=Sex&callbackFun=selectConditionSexCallback',350,400)"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                生日：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox4" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../JS/calendar.htm?callbackFun=selectCalendarCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                昵称：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox5" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                职务：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox6" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                配偶：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox7" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                子女：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox8" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="padding-left: 5px; height: 25px; background-color: #ffffff;
                text-align: center">
                <strong>联系方式（单位）</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                单位名称：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox9" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                单位地址：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox10" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                单位邮编：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox11" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                单位电话：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox12" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                单位传真：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox13" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="padding-left: 5px; height: 25px; background-color: #ffffff;
                text-align: center">
                <strong>联系方式（家庭）</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                家庭住址：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox14" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                家庭邮编：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox15" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                家庭电话：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox16" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                手机：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox17" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                小灵通：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox18" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                电子邮件：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox19" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                QQ号码：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox20" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                MSN：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:TextBox ID="TextBox21" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                备注：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <CKEditor:CKEditorControl ID="TxtContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
            </td>
        </tr>
        </table></div>
    </form>
</body>
</html>