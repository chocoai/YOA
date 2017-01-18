<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JiangChengModify.aspx.cs" Inherits="HRNew_JiangChengModify" %>
<html>
	<head>
		<title>政务OA</title>
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
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
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
                            <li>人力资源</li>
                            <li class="active">修改奖惩记录信息</li>
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
<table style="width: 100%"  class="table"1">
	<tr>
                    <td style="width: 170px;" align="right">职员用户：
                    </td>
                    <td>
                        <asp:TextBox ID="txtJCUser" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectJCUserConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtJCUser" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">奖惩区分：
                    </td>
                    <td>
                        <asp:TextBox ID="txtJiangChengQuFen" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJiangCheng&LieName=JiangChengQuFen&callbackFun=selectJiangChengQuFenConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">奖惩类别：
                    </td>
                    <td>
                        <asp:TextBox ID="txtJiangChengType" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJiangCheng&LieName=JiangChengType&callbackFun=selectJiangChengTypeConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">授予单位：
                    </td>
                    <td>
                        <asp:TextBox ID="txtShouYuDanWei" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJiangCheng&LieName=ShouYuDanWei&callbackFun=selectShouYuDanWeiConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">奖惩日期：
                    </td>
                    <td>
                        <asp:TextBox ID="txtJiangChengDate" runat="server" Width="350px" CssClass="Wdate form-control" onclick="WdatePicker()"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">奖惩名目：
                    </td>
                    <td>
                        <asp:TextBox ID="txtJiangChengMingMu" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">奖惩原因：
                    </td>
                    <td>
                        <asp:TextBox ID="txtJiangChengYuanYin" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">备注说明：
                    </td>
                    <td>
                        <asp:TextBox ID="txtBackInfo" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
	<tr>
	<td style="width: 170px;" align="right">
		录入人：
	</td>
	<td >
		<asp:TextBox id="txtUserName" CssClass="form-control" runat="server" Width="350px" Enabled="False"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		录入时间：
	</td>
	<td >
		<asp:TextBox id="txtTimeStr" CssClass="form-control" runat="server" Width="350px" Enabled="False"></asp:TextBox></td></tr>
</table>
		</div>
	</form>
</body>
</html>
