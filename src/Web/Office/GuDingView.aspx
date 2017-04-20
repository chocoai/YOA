<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuDingView.aspx.cs" Inherits="Office_GuDingView" %>
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
                            <li>固定资产</li>
                            <li class="active">查看固定资产信息</li>
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
		资产名称：
	</td>
	<td>
		<asp:Label id="lblGDName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		资产编号：
	</td>
	<td>
		<asp:Label id="lblGDSerils" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		资产类别：
	</td>
	<td>
		<asp:Label id="lblGDType" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		所属部门：
	</td>
	<td>
		<asp:Label id="lblSuoShuBuMen" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		资产原值：
	</td>
	<td>
		<asp:Label id="lblGDAllCount" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		资产残值：
	</td>
	<td>
		<asp:Label id="lblNowCount" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		折旧年限：
	</td>
	<td>
		<asp:Label id="lblNianXian" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		资产性质：
	</td>
	<td>
		<asp:Label id="lblGDXingZhi" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		启用时间：
	</td>
	<td>
		<asp:Label id="lblQiYongDate" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		保管人：
	</td>
	<td>
		<asp:Label id="lblBaoGuanUser" runat="server"></asp:Label>
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
	<tr>
	<td style="width: 170px;" align="right">
		备注说明：
	</td>
	<td>
		<asp:Label id="lblBackInfo" runat="server"></asp:Label>
	</td></tr>
</table>

<hr style="height:1px; color: #003333;">
    &nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="GuDingJiLu.aspx?GDName=<%=GDName %>">折旧记录</a>&nbsp;&nbsp;
    
    <hr style="height:1px; color: #003333;">
    <IFRAME name="RMid" frameBorder="0" marginHeight="0" marginWidth="0" width="100%" height="500"
													BORDERCOLOR="#ffffFF"  src="GuDingJiLu.aspx?GDName=<%=GDName %>" border="0"></IFRAME>
													
													
		</div>
	</form>
</body>
</html>
