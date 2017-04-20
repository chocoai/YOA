<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RenShiHeTongView.aspx.cs" Inherits="HRNew_RenShiHeTongView" %>
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
                            <li>������Դ</li>
                            <li class="active">�鿴���º�ͬ��Ϣ</li>
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
		Ա���û���
	</td>
	<td>
		<asp:Label id="lblHeTongUser" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ͬ״̬��
	</td>
	<td>
		<asp:Label id="lblNowState" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ͬ��ţ�
	</td>
	<td>
		<asp:Label id="lblSerils" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ͬ���ͣ�
	</td>
	<td>
		<asp:Label id="lblTypeStr" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�Ƿ��о�ҵ���
	</td>
	<td>
		<asp:Label id="lblJingYe" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�Ƿ��б���Э�飺
	</td>
	<td>
		<asp:Label id="lblBaoMiXieYi" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		ǩԼ���ڣ�
	</td>
	<td>
		<asp:Label id="lblQianYueDate" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;c" align="right">
		��Լ���ڣ�
	</td>
	<td>
		<asp:Label id="lblManYueDate" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��֤���أ�
	</td>
	<td>
		<asp:Label id="lblJianZhengJiGuan" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��֤���ڣ�
	</td>
	<td>
		<asp:Label id="lblJianZhengDate" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		ΥԼ���Σ�
	</td>
	<td>
		<asp:Label id="lblWeiYueZeRen" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�������ˣ�
	</td>
	<td>
		<asp:Label id="lblBackInfo" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�����ļ���
	</td>
	<td>
		<asp:Label id="lblFuJianList" runat="server"></asp:Label>
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
</table>
		</div>
	</form>
</body>
</html>
