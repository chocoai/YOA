<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JiangChengView.aspx.cs" Inherits="HRNew_JiangChengView" %>
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
                            <li class="active">查看奖惩记录信息</li>
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
	<td style="width: 170px;" align="right">
		职员用户：
	</td>
	<td>
		<asp:Label id="lblJCUser" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		奖惩区分：
	</td>
	<td>
		<asp:Label id="lblJiangChengQuFen" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		奖惩类别：
	</td>
	<td>
		<asp:Label id="lblJiangChengType" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		授予单位：
	</td>
	<td>
		<asp:Label id="lblShouYuDanWei" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		奖惩日期：
	</td>
	<td>
		<asp:Label id="lblJiangChengDate" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		奖惩名目：
	</td>
	<td>
		<asp:Label id="lblJiangChengMingMu" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		奖惩原因：
	</td>
	<td>
		<asp:Label id="lblJiangChengYuanYin" runat="server"></asp:Label>
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
