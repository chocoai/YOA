<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OfficethingAdd.aspx.cs" Inherits="Office_OfficethingAdd" %>

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
        function selectConditionThingCallback(returndata) {
            $('#<%=txtShenQingThing.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionCategoryCallback(returndata) {
            $('#<%=txtTypeStr.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionNumberCallback(returndata) {
            $('#<%=txtShengQingNum.ClientID%>').val(returndata);
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
                        <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;办公用品&nbsp;>>&nbsp;添加办公用品信息
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
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">申请物品：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtShenQingThing" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPOfficething&LieName=ShenQingThing&callbackFun=selectConditionThingCallback',350,400)" src="../images/Button/search.gif" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtShenQingThing" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">申请类别：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtTypeStr" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPOfficething&LieName=TypeStr&callbackFun=selectConditionCategoryCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">申请数量：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtShengQingNum" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPOfficething&LieName=ShengQingNum&callbackFun=selectConditionNumberCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
