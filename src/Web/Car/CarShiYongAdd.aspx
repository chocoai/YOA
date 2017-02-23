<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarShiYongAdd.aspx.cs" Inherits="Car_CarShiYongAdd" %>

<html>
<head>
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <script type="text/javascript" language="javascript" src="../JS/DateAndTime.js"></script>
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
        function selectCarNameConditionCallback(returndata) {
            $('#<%=txtCarName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectDriverUserConditionCallback(returndata) {
            $('#<%=txtDriverUser.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectYongCheUserConditionCallback(returndata) {
            $('#<%=txtYongCheUser.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectYongCheBuMenConditionCallback(returndata) {
            $('#<%=txtYongCheBuMen.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectMuDiDiConditionCallback(returndata) {
            $('#<%=txtMuDiDi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectShengQingUserConditionCallback(returndata) {
            $('#<%=txtShengQingUser.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectDiaoDuUserConditionCallback(returndata) {
            $('#<%=txtDiaoDuUser.ClientID%>').val(returndata);
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
                            <li>车辆管理</li>
                            <li class="active">添加车辆使用信息</li>
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
                    <td style="width: 170px;" align="right">车辆名称：
                    </td>
                    <td>
                        <asp:TextBox ID="txtCarName" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPCarInfo&LieName=CarName&callbackFun=selectCarNameConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCarName" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">司机：
                    </td>
                    <td>
                        <asp:TextBox ID="txtDriverUser" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectDriverUserConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">用车人：
                    </td>
                    <td>
                        <asp:TextBox ID="txtYongCheUser" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectYongCheUserConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">用车部门：
                    </td>
                    <td>
                        <asp:TextBox ID="txtYongCheBuMen" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPBuMen&LieName=BuMenName&callbackFun=selectYongCheBuMenConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">起始时间：
                    </td>
                    <td>
                        <asp:TextBox ID="txtQiShiTime" runat="server" Width="350px" CssClass="Wdate form-control" onclick="WdatePicker()"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">结束时间：
                    </td>
                    <td>
                        <asp:TextBox ID="txtJieShuTime" runat="server" Width="350px" CssClass="Wdate form-control" onclick="WdatePicker()"></asp:TextBox>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">目的地：
                    </td>
                    <td>
                        <asp:TextBox ID="txtMuDiDi" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPCarShiYong&LieName=MuDiDi&callbackFun=selectMuDiDiConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">里程：
                    </td>
                    <td>
                        <asp:TextBox ID="txtLiCheng" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">申请人：
                    </td>
                    <td>
                        <asp:TextBox ID="txtShengQingUser" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectShengQingUserConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">调度人：
                    </td>
                    <td>
                        <asp:TextBox ID="txtDiaoDuUser" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectDiaoDuUserConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">申请事由：
                    </td>
                    <td>
                        <asp:TextBox ID="txtShengQingShiYou" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">备注说明：
                    </td>
                    <td>
                        <asp:TextBox ID="txtBackInfo" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
