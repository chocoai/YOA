<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookView.aspx.cs" Inherits="Office_BookView" %>
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
                            <li>图书管理</li>
                            <li class="active">查看图书信息</li>
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
		图书名称：
	</td>
	<td>
		<asp:Label id="lblBookName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		图书编码：
	</td>
	<td>
		<asp:Label id="lblBookSerils" runat="server"></asp:Label>
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
		图书类别：
	</td>
	<td>
		<asp:Label id="lblBookType" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		作者：
	</td>
	<td>
		<asp:Label id="lblAuother" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		ISBN号：
	</td>
	<td>
		<asp:Label id="lblISBN" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		出版社：
	</td>
	<td>
		<asp:Label id="lblCoperStr" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		出版日期：
	</td>
	<td>
		<asp:Label id="lblChuBanDate" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		存放位置：
	</td>
	<td>
		<asp:Label id="lblCunFangDian" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		数量：
	</td>
	<td>
		<asp:Label id="lblShuLiang" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		价格：
	</td>
	<td>
		<asp:Label id="lblJiaGe" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		内容简介：
	</td>
	<td>
		<asp:Label id="lblNeiRong" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		当前状态：
	</td>
	<td>
		<asp:Label id="lblNowState" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		备注说明：
	</td>
	<td >
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
