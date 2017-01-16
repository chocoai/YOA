<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WorkFlowAdd.aspx.cs" Inherits="WorkFlow_WorkFlowAdd" %>

<html>
<head>
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript">
        var dialog;
        function selectUserCallback(returndata) {
            $('#<%=TextBox2.ClientID%>').val(returndata);
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
                            <li>工作流程</li>
                            <li class="active">添加工作流程</li>
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
            <table style="width: 100%" class="table" >

                <tr>
                    <td align="right" style="width: 170px; ">流程名称：</td>
                    <td >
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">对应表单：</td>
                    <td >
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" Width="350px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">允许使用人：</td>
                    <td >
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                       <span style="color: dimgray">*允许哪些人使用，空白则允许所有人使用</span></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">归档类别：</td>
                    <td >
                        <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" Width="350px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">简要介绍：</td>
                    <td >
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Height="65px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
