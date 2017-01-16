<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TongXunLuAdd.aspx.cs" Inherits="Work_TongXunLuAdd" %>
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
        <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript">
        var dialog;
        function selectConditionCategoryCallback(returndata) {
            $('#<%=TextBox1.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionSexCallback(returndata) {
            $('#<%=TextBox3.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectCalendarCallback(returndata) {
            $('#<%=TextBox4.ClientID%>').val(returndata);
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
                            <li>通讯簿</li>
                            <li class="active">添加联系人</li>
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
    <table style="width: 100%"  class="table table-striped table-hover">            
        
        <tr>
            <td align="right" style="width: 170px; " >
                所属类别：</td>
                <td>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                    <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPTongXunLu&LieName=FenZu&callbackFun=selectConditionCategoryCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                </td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                是否共享：</td>
            <td >
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem CssClass="form-control">是</asp:ListItem>
                    <asp:ListItem CssClass="form-control" Selected="True">否</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:left">
                <strong>个人信息</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                姓名：</td>
            <td >
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                性别：</td>
            <td >
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPTongXunLu&LieName=Sex&callbackFun=selectConditionSexCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                生日：</td>
            <td >
                <asp:TextBox ID="TextBox4" runat="server" Width="350px"  CssClass="Wdate form-control" onclick="WdatePicker()" ></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                昵称：</td>
            <td >
                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                职务：</td>
            <td >
                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width:170px; ">
                配偶：</td>
            <td >
                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                子女：</td>
            <td >
                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:left">
                <strong>联系方式（单位）</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                单位名称：</td>
            <td >
                <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                单位地址：</td>
            <td >
                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                单位邮编：</td>
            <td >
                <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                单位电话：</td>
            <td >
                <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                单位传真：</td>
            <td >
                <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:left">
                <strong>联系方式（家庭）</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                家庭住址：</td>
            <td >
                <asp:TextBox ID="TextBox14" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                家庭邮编：</td>
            <td >
                <asp:TextBox ID="TextBox15" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                家庭电话：</td>
            <td >
                <asp:TextBox ID="TextBox16" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                手机：</td>
            <td >
                <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                小灵通：</td>
            <td >
                <asp:TextBox ID="TextBox18"  CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                电子邮件：</td>
            <td >
                <asp:TextBox ID="TextBox19" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                QQ号码：</td>
            <td >
                <asp:TextBox ID="TextBox20" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                MSN：</td>
            <td >
                <asp:TextBox ID="TextBox21" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; ">
                备注：</td>
            <td >
                 <CKEditor:CKEditorControl ID="TxtContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
            </td>
        </tr>
        </table></div>
    </form>
</body>
</html>