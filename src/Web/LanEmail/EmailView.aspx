﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmailView.aspx.cs" Inherits="LanEmail_EmailView" %>

<html>
<head>
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
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
                            <li>内部邮件</li>
                            <li class="active">查看邮件</li>
                        </ol>

                    </td>
                    <td align="right" valign="middle" style="height: 30px;">
                        <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                        <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
                </tr>
            </table>
            <table style="width: 100%" class="table">

                <tr>
                    <td align="right" style="width: 170px;">邮件主题：</td>
                    <td >
                        <asp:Label ID="Label1" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">发送人：</td>
                    <td >
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        &nbsp; 
                <a class="btn btn-primary" href="LanEmailAdd.aspx?Type=HuiFu&ID=<%=Request.QueryString["ID"].ToString()%>">回复</a>
                        &nbsp; 
                <a class="btn btn-primary" href="LanEmailAdd.aspx?Type=ZhuanFa&ID=<%=Request.QueryString["ID"].ToString()%>">转发</a> </td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">接收人：</td>
                    <td>
                        <asp:Label ID="Label3" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">发送时间：</td>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">邮件附件：</td>
                    <td >
                        <asp:Label ID="Label5" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">邮件内容：</td>
                    <td >
                        <asp:Label ID="Label6" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
