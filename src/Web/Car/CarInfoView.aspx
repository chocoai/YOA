<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarInfoView.aspx.cs" Inherits="Car_CarInfoView" %>
<html>
	<head>
		<title>����OA</title>
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
                            <li><a href="../Main/MyDesk.aspx">����</a></li>
                            <li>��������</li>
                            <li class="active">�鿴������Ϣ</li>
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
		�������ƣ�
	</td>
	<td >
		<asp:Label id="lblCarName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		���ƺţ�
	</td>
	<td>
		<asp:Label id="lblCarPaiHao" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�����ͺţ�
	</td>
	<td>
		<asp:Label id="lblCarXingHao" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�������ͣ�
	</td>
	<td>
		<asp:Label id="lblLeiXing" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ʻԱ��
	</td>
	<td>
		<asp:Label id="lblDriverUser" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ǰ״̬��
	</td>
	<td>
		<asp:Label id="lblNowState" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		¼���ˣ�
	</td>
	<td>
		<asp:Label id="lblUserName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		¼��ʱ�䣺
	</td>
	<td>
		<asp:Label id="lblTimeStr" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ע��Ϣ��
	</td>
	<td>
		<asp:Label id="lblBackInfo" runat="server"></asp:Label>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
