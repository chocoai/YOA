<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PeiXunXiaoGuoAdd.aspx.cs" Inherits="DocFile_PeiXunXiaoGuoAdd" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
        <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var dialog;
        function selecPeiXunNameConditionCallback(returndata) {
            $('#<%=txtPeiXunName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selecFanKuiZhuTiConditionCallback(returndata) {
            $('#<%=txtFanKuiZhuTi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selecZongTiJieLunConditionCallback(returndata) {
            $('#<%=txtZongTiJieLun.ClientID%>').val(returndata);
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
                            <li class="active">添加培训效果信息</li>
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
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPPeiXun&LieName=PeiXunName&callbackFun=selecPeiXunNameConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPeiXunName" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		反馈主题：
	</td>
	<td>
		<asp:TextBox id="txtFanKuiZhuTi" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPPeiXunXiaoGuo&LieName=FanKuiZhuTi&callbackFun=selecFanKuiZhuTiConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		反馈内容：
	</td>
	<td>
		<asp:TextBox id="txtXiaoGuoFanKui" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		总体结论：
	</td>
	<td>
		<asp:TextBox id="txtZongTiJieLun" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPPeiXunXiaoGuo&LieName=ZongTiJieLun&callbackFun=selecZongTiJieLunConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
