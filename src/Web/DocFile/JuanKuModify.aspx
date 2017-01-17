<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JuanKuModify.aspx.cs" Inherits="DocFile_JuanKuModify" %>
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
        <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var dialog;
        function selectConditionNameCallback(returndata) {
            $('#<%=txtJuanKuName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionNumCallback(returndata) {
            $('#<%=txtJuanKuSerils.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionDepartCallback(returndata) {
            $('#<%=txtSuoShuBuMen.ClientID%>').val(returndata);
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
                            <li>��������</li>
                            <li class="active">�޸ľ����Ϣ</li>
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
		������ƣ�
	</td>
	<td >
		<asp:TextBox id="txtJuanKuName" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJuanKu&LieName=JuanKuName&callbackFun=selectConditionNameCallback',350,400)"  src="../images/Button/search.gif" />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtJuanKuName" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		����ţ�
	</td>
	<td >
		<asp:TextBox id="txtJuanKuSerils" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJuanKu&LieName=JuanKuSerils&callbackFun=selectConditionNumCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�������ţ�
	</td>
	<td >
		<asp:TextBox id="txtSuoShuBuMen" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPBuMen&LieName=BuMenName&callbackFun=selectConditionDepartCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ע˵����
	</td>
	<td >
		<asp:TextBox id="txtBackInfo" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�����ˣ�
	</td>
	<td >
		<asp:TextBox id="txtUserName" runat="server" Width="350px" Enabled="False"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		����ʱ�䣺
	</td>
	<td >
		<asp:TextBox id="txtTimeStr" runat="server" Width="350px" Enabled="False"></asp:TextBox>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
