<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RenShiHeTongAdd.aspx.cs" Inherits="HRNew_RenShiHeTongAdd" %>

<html>
<head>
    <title>����OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
    <script src="../My97DatePicker/WdatePicker.js"></script>
    <link href="../My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var dialog;
        function selectUserConditionCallback(returndata) {
            $('#<%=txtHeTongUser.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectContractStatusConditionCallback(returndata) {
            $('#<%=txtNowState.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectContractNoConditionCallback(returndata) {
            $('#<%=txtSerils.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selecContractTypeConditionCallback(returndata) {
            $('#<%=txtTypeStr.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJingYeConditionCallback(returndata) {
            $('#<%=txtJingYe.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectBaoMiXieYiConditionCallback(returndata) {
            $('#<%=txtBaoMiXieYi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectQianYueDateConditionCallback(returndata) {
            $('#<%=txtQianYueDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectManYueDateConditionCallback(returndata) {
            $('#<%=txtManYueDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJianZhengJiGuanConditionCallback(returndata) {
            $('#<%=txtJianZhengJiGuan.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJianZhengDateConditionCallback(returndata) {
            $('#<%=txtJianZhengDate.ClientID%>').val(returndata);
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
                            <li><a href="../Main/MyDesk.aspx">����</a></li>
                            <li>������Դ</li>
                            <li class="active">������º�ͬ��Ϣ</li>
                        </ol>

                    </td>
                </tr> 
                <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            <asp:Button ID="ImageButton1" Text="�ύ" CssClass="btn btn-primary" runat="server" OnClick="ImageButton1_Click" />
                            &nbsp;&nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">����</button>&nbsp;
                        </div>
                    </td>
                </tr>
            </table>
            <table style="width: 100%"  class="table">
                <tr>
                    <td style="width: 170px;" align="right">Ա���û���
                    </td>
                    <td >
                        <asp:TextBox ID="txtHeTongUser" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserConditionCallback',500,400)" src="../images/Button/search.gif" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHeTongUser" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">��ͬ״̬��
                    </td>
                    <td >
                        <asp:TextBox ID="txtNowState" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=NowState&callbackFun=selectContractStatusConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">��ͬ��ţ�
                    </td>
                    <td >
                        <asp:TextBox ID="txtSerils" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=Serils&callbackFun=selectContractNoConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">��ͬ���ͣ�
                    </td>
                    <td >
                        <asp:TextBox ID="txtTypeStr" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=TypeStr&callbackFun=selecContractTypeConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">�Ƿ��о�ҵ���
                    </td>
                    <td >
                        <asp:TextBox ID="txtJingYe" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=JingYe&callbackFun=selectJingYeConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">�Ƿ��б���Э�飺
                    </td>
                    <td >
                        <asp:TextBox ID="txtBaoMiXieYi" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=BaoMiXieYi&callbackFun=selectBaoMiXieYiConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">ǩԼ���ڣ�
                    </td>
                    <td >
                        <asp:TextBox ID="txtQianYueDate" runat="server" Width="350px"  CssClass="Wdate" onclick="WdatePicker()" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">��Լ���ڣ�
                    </td>
                    <td >
                        <asp:TextBox ID="txtManYueDate" runat="server" Width="350px"  CssClass="Wdate" onclick="WdatePicker()" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">��֤���أ�
                    </td>
                    <td >
                        <asp:TextBox ID="txtJianZhengJiGuan" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=JianZhengJiGuan&callbackFun=selectJianZhengJiGuanConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">��֤���ڣ�
                    </td>
                    <td >
                        <asp:TextBox ID="txtJianZhengDate" runat="server" Width="350px"  CssClass="Wdate" onclick="WdatePicker()" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">ΥԼ���Σ�
                    </td>
                    <td >
                        <asp:TextBox ID="txtWeiYueZeRen" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">�������ˣ�
                    </td>
                    <td >
                        <asp:TextBox ID="txtBackInfo" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">�����ļ���
                    </td>
                    <td >
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
                    <td align="right" style="width: 170px;">�ϴ�������</td>
                    <td >
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
