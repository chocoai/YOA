<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MobileSmsAdd.aspx.cs" Inherits="Mobile_MobileSmsAdd" %>

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
            $('#<%=TextBox1.ClientID%>').val(returndata);
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
                        <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;手机短信&nbsp;>>&nbsp;新信息
                    </td>
                    <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp; &nbsp;<img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
                </tr>
                <tr>
                    <td height="3px" colspan="2" style="background-color: #ffffff"></td>
                </tr>
            </table>
            <table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">
                <tr>
                    <td align="right" colspan="2" style="height: 25px; background-color: #cccccc; text-align: center">
                        <strong><span style="font-size: 10pt">内部短信群发</span></strong></td>
                </tr>

                <tr>
                    <td align="right" style="width: 170px; background-color: #cccccc; height: 25px;">接收用户：</td>
                    <td style="background-color: #ffffff; height: 25px; padding-left: 5px;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserCallback',350,400);"
                            src="../images/Button/search.gif" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*该项不可以为空" Display="Dynamic" ValidationGroup="Neibu"></asp:RequiredFieldValidator>&nbsp;
                    <span style="color: darkgray">* 请选择用户名，用于内部人员短信</span></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">信息内容：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="TextBox2" runat="server" Width="350px" Height="50px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc"></td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Button/Submit.jpg"
                            OnClick="ImageButton1_Click" ValidationGroup="Neibu" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 5px; height: 25px; background-color: #ffffff"></td>
                </tr>
                <tr>
                    <td align="right" style="height: 25px; background-color: #cccccc; text-align: center;" colspan="2">
                        <strong><span style="font-size: 10pt">外部短信群发</span></strong></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; background-color: #cccccc; height: 25px;">接收用户：</td>
                    <td style="background-color: #ffffff; height: 25px; padding-left: 5px;">
                        <asp:TextBox ID="TextBox3" runat="server" Height="90px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                            Display="Dynamic" ErrorMessage="*该项不可以为空" ValidationGroup="WaiBu"></asp:RequiredFieldValidator>&nbsp;
                <span style="color: darkgray">* 请输入手机号码列表，用 "," 分隔。</span></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">信息内容：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="TextBox4" runat="server" Height="50px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc"></td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Button/Submit.jpg"
                            OnClick="ImageButton2_Click" ValidationGroup="WaiBu" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
