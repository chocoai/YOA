<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KaoHeView.aspx.cs" Inherits="HRNew_KaoHeView" %>
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
                            <li>人力资源</li>
                            <li class="active">查看考核管理信息</li>
                        </ol>

                    </td>
                    <td align="right" valign="middle" style="height: 30px;">
                        <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                        <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
                </tr>
        </table>
<table style="width: 100%" class="table" >
	<tr>
	<td style="width: 170px;" align="right">
		考核主题：
	</td>
	<td>
		<asp:Label id="lblKaoHeTitle" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		考核员工：
	</td>
	<td>
		<asp:Label id="lblKaoHeUser" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		考核类别：
	</td>
	<td>
		<asp:Label id="lblKaoHeType" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		考核日期：
	</td>
	<td>
		<asp:Label id="lblKaoHeDate" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		考核项目总分：
	</td>
	<td>
		<asp:Label id="lblXiangMuFen" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		考核任务总分：
	</td>
	<t>
		<asp:Label id="lblRenWuFen" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		考核结论：
	</td>
	<td>
		<asp:Label id="lblKaoHeJieLun" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		备注说明：
	</td>
	<td>
		<asp:Label id="lblBackInfo" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		录入人：
	</td>
	<td>
		<asp:Label id="lblUserName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		录入时间：
	</td>
	<td>
		<asp:Label id="lblTimeStr" runat="server"></asp:Label>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
