<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarWeiHuAdd.aspx.cs" Inherits="Car_CarWeiHuAdd" %>
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
        function selectCarNameConditionCallback(returndata) {
            $('#<%=txtCarName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectWeiHuRiQiConditionCallback(returndata) {
            $('#<%=txtWeiHuRiQi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectWeiHuLeiXingConditionCallback(returndata) {
            $('#<%=txtWeiHuLeiXing.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJingBanUserConditionCallback(returndata) {
            $('#<%=txtJingBanUser.ClientID%>').val(returndata);
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
                            <li>车辆管理</li>
                            <li class="active">添加车辆维护信息</li>
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
		车辆名称：
	</td>
	<td>
		<asp:TextBox id="txtCarName" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPCarInfo&LieName=CarName&callbackFun=selectCarNameConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCarName" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		维护日期：
	</td>
	<td>
		<asp:TextBox id="txtWeiHuRiQi" runat="server" Width="350px" CssClass="Wdate form-control" onclick="WdatePicker()"></asp:TextBox>
		
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		维护类型：
	</td>
	<td>
		<asp:TextBox id="txtWeiHuLeiXing" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPCarWeiHu&LieName=WeiHuLeiXing&callbackFun=selectWeiHuLeiXingConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		维护原因：
	</td>
	<td>
		<asp:TextBox id="txtWeiHuYuanYin" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		经办人：
	</td>
	<td>
		<asp:TextBox id="txtJingBanUser" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectJingBanUserConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		维护费用：
	</td>
	<td>
		<asp:TextBox id="txtWeiHuFeiYong" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		备注信息：
	</td>
	<td>
		<asp:TextBox id="txtBackInfo" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
