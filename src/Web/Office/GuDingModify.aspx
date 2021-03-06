<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuDingModify.aspx.cs" Inherits="Office_GuDingModify" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<html>
<head>
    <title>政务OA</title>
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
        function selectConditionThingNameCallback(returndata) {
            $('#<%=txtGDName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionThingNumCallback(returndata) {
            $('#<%=txtGDSerils.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionThingCategoryCallback(returndata) {
            $('#<%=txtGDType.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionDepartCallback(returndata) {
            $('#<%=txtSuoShuBuMen.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }

        function selectConditionThingXinZhiCallback(returndata) {
            $('#<%=txtGDXingZhi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionThingDatetimeCallback(returndata) {
            $('#<%=txtQiYongDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionThingProtectorCallback(returndata) {
            $('#<%=txtBaoGuanUser.ClientID%>').val(returndata);
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
                            <li>办公用品</li>
                            <li class="active">修改固定资产信息</li>
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
                    <td style="width: 170px;" align="right">资产名称：
                    </td>
                    <td>
                        <asp:TextBox ID="txtGDName" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDing&LieName=GDName&callbackFun=selectConditionThingNameCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGDName" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">资产编号：
                    </td>
                    <td>
                        <asp:TextBox ID="txtGDSerils" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDing&LieName=GDSerils&callbackFun=selectConditionThingNumCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">资产类别：
                    </td>
                    <td>
                        <asp:TextBox ID="txtGDType" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDing&LieName=GDType&callbackFun=selectConditionThingCategoryCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">所属部门：
                    </td>
                    <td>
                        <asp:TextBox ID="txtSuoShuBuMen" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPBuMen&LieName=BuMenName&callbackFun=selectConditionDepartCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">资产原值：
                    </td>
                    <td>
                        <asp:TextBox ID="txtGDAllCount" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">资产残值：
                    </td>
                    <td>
                        <asp:TextBox ID="txtNowCount" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">折旧年限：
                    </td>
                    <td>
                        <asp:TextBox ID="txtNianXian" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">资产性质：
                    </td>
                    <td>
                        <asp:TextBox ID="txtGDXingZhi" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDing&LieName=GDXingZhi&callbackFun=selectConditionThingXinZhiCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">启用时间：
                    </td>
                    <td>
                        <asp:TextBox ID="txtQiYongDate" runat="server" Width="350px" CssClass="Wdate form-control" onclick="WdatePicker()"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">保管人：
                    </td>
                    <td>
                        <asp:TextBox ID="txtBaoGuanUser" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectConditionThingProtectorCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">录入人：
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">录入时间：
                    </td>
                    <td>
                        <asp:TextBox ID="txtTimeStr" CssClass="form-control" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">备注说明：
                    </td>
                    <td>
                        <CKEditor:CKEditorControl ID="txtBackInfo" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
