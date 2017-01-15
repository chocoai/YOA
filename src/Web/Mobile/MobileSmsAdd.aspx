<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MobileSmsAdd.aspx.cs" Inherits="Mobile_MobileSmsAdd" %>

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
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>手机短信</li>
                            <li class="active">新信息</li>
                        </ol>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
                </tr>
                <tr>
                    <td height="3px" colspan="2" style="background-color: #ffffff"></td>
                </tr>
            </table>
            <table style="width: 100%"  class="table table-striped table-hover">
                <tr>
                    <td colspan="2" style="text-align: left">
                        <strong><span style="font-size: 10pt">内部短信群发</span></strong></td>
                </tr>

                <tr>
                    <td align="right" style="width: 170px; ">接收用户：</td>
                    <td >
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                         <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*该项不可以为空" Display="Dynamic" ValidationGroup="Neibu"></asp:RequiredFieldValidator>&nbsp;
                    <span style="color: darkgray">* 请选择用户名，用于内部人员短信</span></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">信息内容：</td>
                    <td >
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="350px" Height="50px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; "></td>
                    <td >
                        <asp:Button ID="ImageButton1" runat="server" Text="提交" CssClass="btn btn-primary" 
                            OnClick="ImageButton1_Click" ValidationGroup="Neibu" /></td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td style="text-align:left;" colspan="2">
                        <strong><span style="font-size: 10pt">外部短信群发</span></strong></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">接收用户：</td>
                    <td >
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Height="90px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                            Display="Dynamic" ErrorMessage="*该项不可以为空" ValidationGroup="WaiBu"></asp:RequiredFieldValidator>&nbsp;
                <span style="color: darkgray">* 请输入手机号码列表，用 "," 分隔。</span></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">信息内容：</td>
                    <td >
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Height="50px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; "></td>
                    <td >
                        <asp:Button ID="ImageButton2" runat="server" Text="提交" CssClass="btn btn-primary"  OnClick="ImageButton2_Click" ValidationGroup="WaiBu" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
