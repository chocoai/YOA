<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RenShiHeTongAdd.aspx.cs" Inherits="HRNew_RenShiHeTongAdd" %>

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
        function selectUserConditionCallback(returndata) {
            $('#<%=txtHeTongUser.ClientID%>').val(returndata);
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
                        <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;人力资源&nbsp;>>&nbsp;添加人事合同信息
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
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">员工用户：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtHeTongUser" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserConditionCallback',500,350)" src="../images/Button/search.gif" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHeTongUser" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">合同状态：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtNowState" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=NowState&callbackFun=selectConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">合同编号：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtSerils" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=Serils&callbackFun=selectConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">合同类型：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtTypeStr" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=TypeStr&callbackFun=selectConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">是否有竞业条款：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtJingYe" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=JingYe&callbackFun=selectConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">是否有保密协议：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtBaoMiXieYi" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=BaoMiXieYi&callbackFun=selectConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">签约日期：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtQianYueDate" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../JS/calendar.htm?callbackFun=selectConditionCallback', 286,221)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">满约日期：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtManYueDate" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../JS/calendar.htm?callbackFun=selectConditionCallback', 286,221)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">鉴证机关：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtJianZhengJiGuan" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=JianZhengJiGuan&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('txtJianZhengJiGuan').value=wName;}" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">鉴证日期：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtJianZhengDate" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="var dataString = showModalDialog('../JS/calendar.htm', 'yyyy-mm-dd' ,'dialogWidth:286px;dialogHeight:221px;status:no;help:no;');if(dataString==null){}else{document.getElementById('txtJianZhengDate').value=dataString;}" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">违约责任：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtWeiYueZeRen" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">其他事宜：
                    </td>
                    <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                        <asp:TextBox ID="txtBackInfo" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
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
            </table>
        </div>
    </form>
</body>
</html>
