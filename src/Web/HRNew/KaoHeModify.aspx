<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KaoHeModify.aspx.cs" Inherits="HRNew_KaoHeModify" %>
<html>
	<head>
		<title>����OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
        <script src="../My97DatePicker/WdatePicker.js"></script>
    <link href="../My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
        <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var dialog;
        function selectKaoHeTitleConditionCallback(returndata) {
            $('#<%=txtKaoHeTitle.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectKaoHeUserConditionCallback(returndata) {
            $('#<%=txtKaoHeUser.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectKaoHeTypeConditionCallback(returndata) {
            $('#<%=txtKaoHeType.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectKaoHeDateConditionCallback(returndata) {
            $('#<%=txtKaoHeDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectXiangMuFenConditionCallback(returndata) {
            $('#<%=txtXiangMuFen.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectRenWuFenConditionCallback(returndata) {
            $('#<%=txtRenWuFen.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectKaoHeJieLunConditionCallback(returndata) {
            $('#<%=txtKaoHeJieLun.ClientID%>').val(returndata);
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
                            <li>������Դ</li>
                            <li class="active">�޸Ŀ��˹�����Ϣ</li>
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
		�������⣺
	</td>
	<td  >
		<asp:TextBox id="txtKaoHeTitle" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPKaoHe&LieName=KaoHeTitle&callbackFun=selectKaoHeTitleConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKaoHeTitle" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		����Ա����
	</td>
	<td  >
		<asp:TextBox id="txtKaoHeUser" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectKaoHeUserConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�������
	</td>
	<td  >
		<asp:TextBox id="txtKaoHeType" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPKaoHe&LieName=KaoHeType&callbackFun=selectKaoHeTypeConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�������ڣ�
	</td>
	<td  >
		<asp:TextBox id="txtKaoHeDate" runat="server" Width="350px" CssClass="Wdate" onclick="WdatePicker()" ></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		������Ŀ�ܷ֣�
	</td>
	<td  >
		<asp:TextBox id="txtXiangMuFen" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPKaoHe&LieName=XiangMuFen&callbackFun=selectXiangMuFenConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	&nbsp;<a href="LookDefile.aspx?Type=XM" target="_blank" >���鿴������Ŀ��</a>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		���������ܷ֣�
	</td>
	<td  >
		<asp:TextBox id="txtRenWuFen" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPKaoHe&LieName=RenWuFen&callbackFun=selectRenWuFenConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	&nbsp;<a href="LookDefile.aspx?Type=RW" target="_blank" >���鿴��������</a>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		���˽��ۣ�
	</td>
	<td  >
		<asp:TextBox id="txtKaoHeJieLun" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPKaoHe&LieName=KaoHeJieLun&callbackFun=selectKaoHeJieLunConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ע˵����
	</td>
	<td  >
		<asp:TextBox id="txtBackInfo" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		¼���ˣ�
	</td>
	<td >
		<asp:TextBox id="txtUserName" runat="server" Width="350px" Enabled="False"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		¼��ʱ�䣺
	</td>
	<td >
		<asp:TextBox id="txtTimeStr" runat="server" Width="350px" Enabled="False"></asp:TextBox></td></tr>
</table>
		</div>
	</form>
</body>
</html>
