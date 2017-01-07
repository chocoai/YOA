<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JiangChengAdd.aspx.cs" Inherits="HRNew_JiangChengAdd" %>
<html>
	<head>
		<title>企业OA综合管理平台</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
        <script src="../My97DatePicker/WdatePicker.js"></script>
    <link href="../My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
    <script type="text/javascript">
        var dialog;
        function selectJCUserConditionCallback(returndata) {
            $('#<%=txtJCUser.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJiangChengQuFenConditionCallback(returndata) {
            $('#<%=txtJiangChengQuFen.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJiangChengTypeConditionCallback(returndata) {
            $('#<%=txtJiangChengType.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectShouYuDanWeiConditionCallback(returndata) {
            $('#<%=txtShouYuDanWei.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJiangChengDateConditionCallback(returndata) {
            $('#<%=txtJiangChengDate.ClientID%>').val(returndata);
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
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;人力资源&nbsp;>>&nbsp;添加奖惩记录信息
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Button/Submit.jpg"
                        OnClick="ImageButton1_Click" />
                    <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
            <tr>
            <td height="3px" colspan="2" style="background-color: #ffffff"></td>
        </tr>
        </table>
<table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		职员用户：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtJCUser" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectJCUserConditionCallback',350,400)" src="../images/Button/search.gif" />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtJCUser" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		奖惩区分：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtJiangChengQuFen" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJiangCheng&LieName=JiangChengQuFen&callbackFun=selectJiangChengQuFenConditionCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		奖惩类别：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtJiangChengType" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJiangCheng&LieName=JiangChengType&callbackFun=selectJiangChengTypeConditionCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		授予单位：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtShouYuDanWei" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJiangCheng&LieName=ShouYuDanWei&callbackFun=selectShouYuDanWeiConditionCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		奖惩日期：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtJiangChengDate" runat="server" Width="350px"  CssClass="Wdate" onclick="WdatePicker()" ></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		奖惩名目：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtJiangChengMingMu" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		奖惩原因：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtJiangChengYuanYin" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		备注说明：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtBackInfo" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
