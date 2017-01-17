<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SourceModify.aspx.cs" Inherits="Source_SourceModify" %>
<html>
	<head>
		<title>����OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
        <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
        <script type="text/javascript">
        var dialog;
        function selectSourceNameConditionCallback(returndata) {
            $('#<%=txtSourceName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectShengQingUserConditionCallback(returndata) {
            $('#<%=txtShengQingUser.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectShiYongUserConditionCallback(returndata) {
            $('#<%=txtShiYongUser.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectShiYongShiXianConditionCallback(returndata) {
            $('#<%=txtShiYongShiXian.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
    </script>
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
                            <li>��Դ����</li>
                            <li class="active">�޸���Դ������Ϣ</li>
                        </ol>

                    </td>
                </tr>
          <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            <asp:Button ID="ImageButton1" Text="�ύ" CssClass="btn btn-primary" runat="server" OnClick="ImageButton1_Click" />
                            &nbsp;&nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">����</button>&nbsp;
                        </div>
                    </td>
                </tr>
        </table>
<table style="width: 100%" class="table">
	<tr>
	<td style="width: 170px;" align="right">
		��Դ���ƣ�
	</td>
	<td>
		<asp:TextBox id="txtSourceName" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPSource&LieName=SourceName&callbackFun=selectSourceNameConditionCallback',350,400)"  src="../images/Button/search.gif" />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSourceName" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�����ˣ�
	</td>
	<td>
		<asp:TextBox id="txtShengQingUser" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectShengQingUserConditionCallback',350,400)" src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		ʹ���ˣ�
	</td>
	<td>
		<asp:TextBox id="txtShiYongUser" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectShiYongUserConditionCallback',350,400)" src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		ʹ��ʱ�ޣ�
	</td>
	<td>
		<asp:TextBox id="txtShiYongShiXian" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPSource&LieName=ShiYongShiXian&callbackFun=selectShiYongShiXianConditionCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��Դ������
	</td>
	<td>
		<asp:TextBox id="txtSourceMiaoShu" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ǰ״̬��
	</td>
	<td>
		<asp:TextBox id="txtNowState" runat="server" Width="350px" Enabled="False"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		¼���ˣ�
	</td>
	<td>
		<asp:TextBox id="txtUserName" runat="server" Width="350px" Enabled="False"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		¼��ʱ�䣺
	</td>
	<td>
		<asp:TextBox id="txtTimeStr" runat="server" Width="350px" Enabled="False"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ע˵����
	</td>
	<td>
		<asp:TextBox id="txtBackInfo" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td></tr>
</table>
		</div>
	</form>
</body>
</html>
