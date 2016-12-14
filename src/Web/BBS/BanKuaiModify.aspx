<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BanKuaiModify.aspx.cs" Inherits="BBS_BanKuaiModify" %>

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
        function selectConditionRoleCallback(returndata) {
            $('#<%=TextBox4.ClientID%>').val(returndata);
             if (dialog != null) {
                 dialog.dialog("close");
             }
         }

         function selectConditionDepartCallback(returndata) {
             $('#<%=TextBox5.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }

        function selectConditionALLUsersCallback(returndata) {
            $('#<%=TextBox6.ClientID%>').val(returndata);
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
                        <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;论坛BBS&nbsp;>>&nbsp;修改论坛版块
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
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">版块名称：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*该项不能为空"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">版主列表：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="TextBox2" runat="server" Height="50px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserCallback',300,500);"
                            src="../images/Button/search.gif" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">版块描述：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="TextBox3" runat="server" Height="50px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">版块主题图片：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                        <asp:HyperLink ID="HyperLink1" runat="server">[HyperLink1]</asp:HyperLink></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">允许进入（按角色）：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="TextBox4" runat="server" Height="50px" TextMode="MultiLine" Width="350px">所有角色</asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJiaoSe&LieName=JiaoSeName&callbackFun=selectConditionRoleCallback',300,500);"
                            src="../images/Button/search.gif" />
                        &nbsp;&nbsp; 设置为：【 <a onclick="document.getElementById('TextBox4').value='所有角色'" href="javascript:void(0);">所有角色</a> 】</td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">允许进入（按部门）：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="TextBox5" runat="server" Height="50px" TextMode="MultiLine" Width="350px">所有部门</asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPBuMen&LieName=BuMenName&callbackFun=selectConditionDepartCallback',300,500);"
                            src="../images/Button/search.gif" />

                        &nbsp;&nbsp; 设置为：【 <a onclick="document.getElementById('TextBox5').value='所有部门'" href="javascript:void(0);">所有部门</a> 】</td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">允许进入（按用户）：</td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="TextBox6" runat="server" Height="50px" TextMode="MultiLine" Width="350px">所有用户</asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectConditionALLUsersCallback',300,500);"
                            src="../images/Button/search.gif" />

                        &nbsp;&nbsp; 设置为：【 <a onclick="document.getElementById('TextBox6').value='所有用户'" href="javascript:void(0);">所有用户</a> 】</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
