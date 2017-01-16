<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SystemTiXing.aspx.cs" Inherits="Personal_SystemTiXing" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
        <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>    
     <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
         <tr>
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>个人设置</li>
                            <li class="active">系统提醒</li>
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
    <table style="width: 100%"  class="table table-striped table-hover">            
        
        <tr>
            <td align="right" style="width:170px;" >
                提醒间隔时间：</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control"  runat="server" Width="150px"><%--
                        <asp:ListItem Value="10">10秒</asp:ListItem>
                        <asp:ListItem Value="30">30秒</asp:ListItem>
                        <asp:ListItem Value="60">1分钟</asp:ListItem>--%>
                        <asp:ListItem Value="300">5分钟</asp:ListItem>
                        <asp:ListItem Value="600">10分钟</asp:ListItem>
                        <asp:ListItem Value="1800">30分钟</asp:ListItem>
                        <asp:ListItem Value="3600">60分钟</asp:ListItem>
                        <asp:ListItem Value="5400">90分钟</asp:ListItem>
                        <asp:ListItem Value="7200">120分钟</asp:ListItem>
                    </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                是否进行提醒：</td>
            <td>
                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" Width="150px">
                    <asp:ListItem>是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        </table></div>
    </form>
</body>
</html>