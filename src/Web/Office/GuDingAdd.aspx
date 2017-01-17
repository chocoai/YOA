<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuDingAdd.aspx.cs" Inherits="Office_GuDingAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
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
        function selectConditionThingNameCallback(returndata) {
            $('#<%=txtGDName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionThingNumCallback(returndata) {
            $('#<%=txtGDSerils.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionThingCategoryCallback(returndata) {
            $('#<%=txtGDType.ClientID%>').val(returndata);
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
        
        function selectConditionThingXinZhiCallback(returndata) {
            $('#<%=txtGDXingZhi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionThingDatetimeCallback(returndata) {
            $('#<%=txtQiYongDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionThingProtectorCallback(returndata) {
            $('#<%=txtBaoGuanUser.ClientID%>').val(returndata);
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
                            <li>�칫��Ʒ</li>
                            <li class="active">��ӹ̶��ʲ���Ϣ</li>
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
<table style="width: 100%"  class="table">
	<tr>
	<td style="width: 170px;" align="right">
		�ʲ����ƣ�
	</td>
	<td>
		<asp:TextBox id="txtGDName" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDing&LieName=GDName&callbackFun=selectConditionThingNameCallback',350,400)"  src="../images/Button/search.gif" />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGDName" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�ʲ���ţ�
	</td>
	<td>
		<asp:TextBox id="txtGDSerils" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDing&LieName=GDSerils&callbackFun=selectConditionThingNumCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�ʲ����
	</td>
	<td>
		<asp:TextBox id="txtGDType" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDing&LieName=GDType&callbackFun=selectConditionThingCategoryCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�������ţ�
	</td>
	<td>
		<asp:TextBox id="txtSuoShuBuMen" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPBuMen&LieName=BuMenName&callbackFun=selectConditionDepartCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�ʲ�ԭֵ��
	</td>
	<td>
		<asp:TextBox id="txtGDAllCount" runat="server" Width="350px"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�ʲ���ֵ��
	</td>
	<td>
		<asp:TextBox id="txtNowCount" runat="server" Width="350px"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�۾����ޣ�
	</td>
	<td>
		<asp:TextBox id="txtNianXian" runat="server" Width="350px"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�ʲ����ʣ�
	</td>
	<td>
		<asp:TextBox id="txtGDXingZhi" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDing&LieName=GDXingZhi&callbackFun=selectConditionThingXinZhiCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		����ʱ�䣺
	</td>
	<td>
		<asp:TextBox id="txtQiYongDate" runat="server" Width="350px" CssClass="Wdate" onclick="WdatePicker()"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		�����ˣ�
	</td>
	<td>
		<asp:TextBox id="txtBaoGuanUser" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectConditionThingProtectorCallback',350,400)" src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		��ע˵����
	</td>
	<td>
		<CKEditor:CKEditorControl ID="txtBackInfo" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
