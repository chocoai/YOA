<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JSDICAdd.aspx.cs" Inherits="Car_JSDICAdd" %>
<html>
	<head>
		<title>政务OA</title>
   <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
        <script type="text/javascript">
        var dialog;
        function selectDicNameCallback(returndata) {
            $('#<%=txtDicName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
            function selectBackinfoConditionCallback(returndata) {
            $('#<%=txtBackinfo.ClientID%>').val(returndata);
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
                            <li>公文收发</li>
                            <li class="active">添加签收文件夹信息</li>
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
		文件夹名称：
	</td>
	<td  >
		<asp:TextBox id="txtDicName" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJSDIC&LieName=DicName&callbackFun=selectDicNameCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDicName" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width:170px;" align="right">
		简要说明：
	</td>
	<td  >
		<asp:TextBox CssClass="form-control" id="txtBackinfo" runat="server" Width="350px"></asp:TextBox>
		<a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJSDIC&LieName=Backinfo&callbackFun=selectBackinfoConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
