<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShangXiaBanDengJi.aspx.cs" Inherits="HR_ShangXiaBanDengJi" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
  <script language="javascript">
  function PrintTable()
    {
        document.getElementById("PrintHide") .style.visibility="hidden"    
        print();
        document.getElementById("PrintHide") .style.visibility="visible"    
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
                            <li>个人考勤</li>
                            <li class="active">上下班登记</li>
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
    <table style="width: 100%" border="0"  class="table table-striped table-hover" >    
        <tr>
            <td align="right" style="width: 170px; height: 25px;" >
                <asp:Label ID="Label1" runat="server" Text="第一次登记："></asp:Label></td>
                <td style=" height: 25px; " >
                    &nbsp; &nbsp; &nbsp;登记类型：<asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="上班登记"></asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;规定时间：<asp:Label ID="Label3" runat="server"></asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 登记时间：<asp:Label ID="Label4" runat="server"
                        ForeColor="Blue">未登记</asp:Label>
                    <asp:Button ID="Button1" runat="server" CommandName="DengJiTime1" OnClick="Button1_Click"
                        Text="上班登记" CssClass="btn btn-primary" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; ">
                <asp:Label ID="Label5" runat="server" Text="第二次登记："></asp:Label></td>
            <td style="height:25px;" >
                &nbsp; &nbsp; &nbsp;登记类型：<asp:Label ID="Label6" runat="server"  Text="下班登记"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;规定时间：<asp:Label ID="Label7" runat="server"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 登记时间：<asp:Label ID="Label8" runat="server"
                    ForeColor="Blue">未登记</asp:Label>
                <asp:Button ID="Button2" runat="server" CommandName="DengJiTime2" OnClick="Button1_Click"
                    Text="下班登记" CssClass="btn btn-primary"  /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px;">
                <asp:Label ID="Label9" runat="server" Text="第三次登记："></asp:Label></td>
            <td style="height: 25px;">
                &nbsp; &nbsp; &nbsp;登记类型：<asp:Label ID="Label10" runat="server" Text="上班登记"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;规定时间：<asp:Label ID="Label11" runat="server"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 登记时间：<asp:Label ID="Label12" runat="server"
                    ForeColor="Blue">未登记</asp:Label>
                <asp:Button ID="Button3" runat="server" CommandName="DengJiTime3" OnClick="Button1_Click"
                    Text="上班登记" CssClass="btn btn-primary"  /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px;">
                <asp:Label ID="Label13" runat="server" Text="第四次登记："></asp:Label></td>
            <td style="height: 25px;">
                &nbsp; &nbsp; &nbsp;登记类型：<asp:Label ID="Label14" runat="server" Text="下班登记"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;规定时间：<asp:Label ID="Label15" runat="server"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 登记时间：<asp:Label ID="Label16" runat="server"
                    ForeColor="Blue">未登记</asp:Label>
                <asp:Button ID="Button4" runat="server" CommandName="DengJiTime4" OnClick="Button1_Click"
                    Text="下班登记" CssClass="btn btn-primary"  /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px;">
                <asp:Label ID="Label17" runat="server" Text="第五次登记："></asp:Label></td>
            <td style="height: 25px;">
                &nbsp; &nbsp; &nbsp;登记类型：<asp:Label ID="Label18" runat="server" ForeColor="Blue"
                    Text="上班登记"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;规定时间：<asp:Label ID="Label19" runat="server"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 登记时间：<asp:Label ID="Label20" runat="server">未登记</asp:Label>
                <asp:Button ID="Button5" runat="server" CommandName="DengJiTime5" OnClick="Button1_Click"
                    Text="上班登记" CssClass="btn btn-primary"  /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px;">
                <asp:Label ID="Label21" runat="server" Text="第六次登记："></asp:Label></td>
            <td style="height: 25px;">
                &nbsp; &nbsp; &nbsp;登记类型：<asp:Label ID="Label22" runat="server" Text="下班登记"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;规定时间：<asp:Label ID="Label23" runat="server"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 登记时间：<asp:Label ID="Label24" runat="server"
                    ForeColor="Blue">未登记</asp:Label>
                <asp:Button ID="Button6" runat="server" CommandName="DengJiTime6" OnClick="Button1_Click"
                    Text="下班登记" CssClass="btn btn-primary"  /></td>
        </tr>
        </table></div>
    </form>
</body>
</html>