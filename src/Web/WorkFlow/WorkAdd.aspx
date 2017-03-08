<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WorkAdd.aspx.cs" Inherits="WorkFlow_WorkAdd" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
         <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
        <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript">
        var dialog;
        function selectUserCallback(returndata) {
            $('#<%=TextBox5.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectyinzhangCallback(returndata) {
            if (returndata == null || returndata == "")
            {
            }
            else
            {
                $("#img6698").attr("src", "http://" + window.location.host + "/UploadFile/" + returndata); 
                if (dialog != null) {
                    dialog.dialog("close");
                }
            }
        }
    </script>
  <script language="javascript">
      function selectyinzhang(imgidstr)
        {
          openDialog('../Main/SelectYinZhang.aspx?callbackFun=selectyinzhangCallback', 350, 400);
        }
  function PrintTable()
    {
        document.getElementById("PrintHide") .style.visibility="hidden"    
        print();
        document.getElementById("PrintHide") .style.visibility="visible"    
    }
  </script>
</head>
<body onload="Load_Do();" >
    <form id="form1" runat="server">
    <div>    
     <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
         <tr>
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>工作流程</li>
                            <li class="active">添加新工作</li>
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
    <table style="width: 100%"  class="table">            
        <tr>
            <td align="right" colspan="2" style="text-align: center">
                <strong>工作基本属性</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                选择工作流程：</td>
            <td >
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" Width="171px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" Width="171px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>&nbsp; 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2"
                    Display="Dynamic" ErrorMessage="*工作流程未选择"></asp:RequiredFieldValidator><span style="color: darkgray">*先选择表单类型，再选择流程。</span></td>
        </tr>
        
        <tr>
            <td align="right" style="width: 170px;" >
                工作名称：</td>
                <td  >
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="2" style="border-right: #000000 1px solid; border-top: #000000 1px solid;padding-left: 5px; border-left: #000000 1px solid; border-bottom: #000000 1px solid;">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" style="DISPLAY: none" ></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                附件：</td>
            <td >
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                </asp:CheckBoxList>&nbsp;
                <asp:Button ID="ImageButton3" Text="删除文件" CssClass="btn btn-danger" runat="server" CausesValidation="False"
                     OnClick="ImageButton3_Click" />
                &nbsp; &nbsp;
                <asp:Button ID="ImageButton5" Text="读取文件" CssClass="btn btn-info"  runat="server" CausesValidation="False"
                     OnClick="ImageButton5_Click" />
                &nbsp; &nbsp;&nbsp;
                <asp:Button ID="ImageButton6" Text="编辑文件" CssClass="btn btn-primary" runat="server" CausesValidation="False"
                    OnClick="ImageButton6_Click" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                上传附件：</td>
            <td >
                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" Width="303px" />
                <asp:Button ID="ImageButton2"  CssClass="btn btn-primary" runat="server" CausesValidation="False"  Text="上传" OnClick="ImageButton2_Click" /></td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="text-align: center">
                <strong>流程附加属性</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                下一节点选择：</td>
            <td >
                <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" AutoPostBack="True" Width="350px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                条件跳转选择：</td>
            <td >
                <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="根据条件字段自动决定下一节点" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                节点审批模式：</td>
            <td >
                <asp:Label ID="Label2" runat="server"></asp:Label>                
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="28px" style="DISPLAY: none"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                经办人列表：</td>
            <td >
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                审批人选择：</td>
            <td >
                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Width="349px"></asp:TextBox>
                <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&Condition='+document.getElementById('TextBox2').value+'&callbackFun=selectUserCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                <asp:CheckBox ID="CHKSMS" runat="server" Checked="True" /><img
                        src="../images/TreeImages/@sms.gif" />短消息<asp:CheckBox ID="CHKMOB" runat="server" /><img
                            src="../images/TreeImages/mobile_sms.gif" />短信</td>
        </tr>
        </table></div>
         <SCRIPT>
function Load_Do()
{
setTimeout("Load_Do()",0);
var content = document.getElementById("Label1").innerHTML
document.getElementById("TextBox3").value=content;
}
</SCRIPT> 

    </form>
</body>
</html>