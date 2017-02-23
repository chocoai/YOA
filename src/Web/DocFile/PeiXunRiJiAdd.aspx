<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PeiXunRiJiAdd.aspx.cs" Inherits="DocFile_PeiXunRiJiAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<html>
	<head>
		<title>政务OA</title>
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
        function selectPeiXunNameConditionCallback(returndata) {
            $('#<%=txtPeiXunName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectRiJiTitleConditionCallback(returndata) {
            $('#<%=txtRiJiTitle.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectRiJiDateConditionCallback(returndata) {
            $('#<%=txtRiJiDate.ClientID%>').val(returndata);
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
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>培训管理</li>
                            <li class="active">添加培训日志信息</li>
                        </ol>

                    </td>
                </tr> 
           <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            <asp:Button ID="ImageButton1" Text="提交" CssClass="btn btn-primary" runat="server" OnClick="ImageButton1_Click" />
                            &nbsp;&nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
                </tr>
        </table>
<table style="width: 100%" class="table">
	<tr>
	<td style="width: 170px;" align="right">
		培训名称：
	</td>
	<td>
		<asp:TextBox id="txtPeiXunName" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPPeiXun&LieName=PeiXunName&callbackFun=selectPeiXunNameConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPeiXunName" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		日志主题：
	</td>
	<td>
		<asp:TextBox id="txtRiJiTitle" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPPeiXunRiJi&LieName=RiJiTitle&callbackFun=selectRiJiTitleConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		日志日期：
	</td>
	<td>
		<asp:TextBox id="txtRiJiDate" runat="server" Width="350px" CssClass="Wdate form-control" onclick="WdatePicker()"></asp:TextBox>
		
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		日志内容：
	</td>
	<td>
		<CKEditor:CKEditorControl ID="txtRiJiContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
