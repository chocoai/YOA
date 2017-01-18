<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OfficethingModify.aspx.cs" Inherits="Office_OfficethingModify" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
         <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var dialog;
        function selectConditionThingCallback(returndata) {
            $('#<%=txtShenQingThing.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionCategoryCallback(returndata) {
            $('#<%=txtTypeStr.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionNumberCallback(returndata) {
            $('#<%=txtShengQingNum.ClientID%>').val(returndata);
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
                            <li>办公用品</li>
                            <li class="active">修改办公用品信息</li>
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
                    <td style="width: 170px;" align="right">申请物品：
                    </td>
                    <td>
                        <asp:TextBox ID="txtShenQingThing" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPOfficething&LieName=ShenQingThing&callbackFun=selectConditionThingCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtShenQingThing" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">申请类别：
                    </td>
                    <td>
                        <asp:TextBox ID="txtTypeStr" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPOfficething&LieName=TypeStr&callbackFun=selectConditionCategoryCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">申请数量：
                    </td>
                    <td>
                        <asp:TextBox ID="txtShengQingNum" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPOfficething&LieName=ShengQingNum&callbackFun=selectConditionNumberCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
	<tr>
	<td style="width: 170px;" align="right">
		当前状态：
	</td>
	<td>
		<asp:TextBox id="txtNowState" CssClass="form-control" runat="server" Width="350px" Enabled="False"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		申请人：
	</td>
	<td>
		<asp:TextBox id="txtUserName" CssClass="form-control" runat="server" Width="350px" Enabled="False"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		申请时间：
	</td>
	<td>
		<asp:TextBox id="txtTimeStr" CssClass="form-control" runat="server" Width="350px" Enabled="False"></asp:TextBox>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
