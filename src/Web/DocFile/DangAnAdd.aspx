<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangAnAdd.aspx.cs" Inherits="DocFile_DangAnAdd" %>

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
        function selectConditionNameCallback(returndata) {
            $('#<%=txtFileName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionLibCallback(returndata) {
            $('#<%=txtJuanKuName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionFileNumCallback(returndata) {
            $('#<%=txtFileSerils.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionFileThemeCallback(returndata) {
            $('#<%=txtFileTitle.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionSenderCallback(returndata) {
            $('#<%=txtFaWenDanWei.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionSendDateCallback(returndata) {
            $('#<%=txtFaWenDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionSecretLevelCallback(returndata) {
            $('#<%=txtMiJi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionUrgencyCallback(returndata) {
            $('#<%=txtJingJi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionFileCategoryCallback(returndata) {
            $('#<%=txtTypeStr.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionPubFileCategoryCallback(returndata) {
            $('#<%=txtGongWenType.ClientID%>').val(returndata);
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
                        <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;档案文书&nbsp;>>&nbsp;添加档案信息
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
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">文件名称：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtFileName" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPDangAn&LieName=FileName&callbackFun=selectConditionNameCallback',350,400)" src="../images/Button/search.gif" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFileName" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">所属卷库：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtJuanKuName" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJuanKu&LieName=JuanKuName&callbackFun=selectConditionLibCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">文件编号：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtFileSerils" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPDangAn&LieName=FileSerils&callbackFun=selectConditionFileNumCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">文件主题：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtFileTitle" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPDangAn&LieName=FileTitle&callbackFun=selectConditionFileThemeCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">发文单位：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtFaWenDanWei" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPDangAn&LieName=FaWenDanWei&callbackFun=selectConditionSenderCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">发文日期：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtFaWenDate" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../JS/calendar.htm?callbackFun=selectConditionSendDateCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">密级：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtMiJi" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPDangAn&LieName=MiJi&callbackFun=selectConditionSecretLevelCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">紧急：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtJingJi" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPDangAn&LieName=JingJi&callbackFun=selectConditionUrgencyCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">文件分类：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtTypeStr" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPDangAn&LieName=TypeStr&callbackFun=selectConditionFileCategoryCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">公文类别：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtGongWenType" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPDangAn&LieName=GongWenType&callbackFun=selectConditionPubFileCategoryCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">文件页数：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtFilePage" runat="server" Width="350px"></asp:TextBox>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">附件文件：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                        </asp:CheckBoxList>&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="False"
                            ImageAlign="AbsMiddle" ImageUrl="../images/Button/DelFile.jpg" OnClick="ImageButton3_Click" />
                        &nbsp; &nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="False" ImageAlign="AbsMiddle"
                    ImageUrl="~/images/Button/ReadFile.gif" OnClick="ImageButton4_Click" />
                        &nbsp; &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" ImageAlign="AbsMiddle"
                    ImageUrl="~/images/Button/EditFile.gif" OnClick="ImageButton5_Click" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">上传附件：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" ImageAlign="AbsMiddle"
                            ImageUrl="../images/Button/UpLoad.jpg" OnClick="ImageButton2_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">备注信息：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtBackInfo" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
