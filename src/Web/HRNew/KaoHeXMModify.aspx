<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KaoHeXMModify.aspx.cs" Inherits="HRNew_KaoHeXMModify" %>

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
        function selectXiangMuNameConditionCallback(returndata) {
            $('#<%=txtXiangMuName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectFenZhiConditionCallback(returndata) {
            $('#<%=txtFenZhi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectKaoHeYiJuConditionCallback(returndata) {
            $('#<%=txtKaoHeYiJu.ClientID%>').val(returndata);
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
                            <li>人力资源</li>
                            <li class="active">修改考核项目信息</li>
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
            <table style="width: 100%" class="table">
                <tr>
                    <td style="width: 170px" align="right">考核项目：
                    </td>
                    <td>
                        <asp:TextBox ID="txtXiangMuName" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPKaoHeXM&LieName=XiangMuName&callbackFun=selectXiangMuNameConditionCallback',350,400)" src="../images/Button/search.gif" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtXiangMuName" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px" align="right">所占分值：
                    </td>
                    <td>
                        <asp:TextBox ID="txtFenZhi" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPKaoHeXM&LieName=FenZhi&callbackFun=selectFenZhiConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px" align="right">考核依据：
                    </td>
                    <td>
                        <asp:TextBox ID="txtKaoHeYiJu" runat="server" Width="350px"></asp:TextBox>
                        <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPKaoHeXM&LieName=KaoHeYiJu&callbackFun=selectKaoHeYiJuConditionCallback',350,400)" src="../images/Button/search.gif" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px" align="right">备注说明：
                    </td>
                    <td>
                        <asp:TextBox ID="txtBackInfo" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">创建人：
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">创建时间：
                    </td>
                    <td>
                        <asp:TextBox ID="txtTimeStr" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
