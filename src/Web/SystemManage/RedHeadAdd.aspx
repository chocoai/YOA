<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RedHeadAdd.aspx.cs" Inherits="SystemManage_RedHeadAdd" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
         <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
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
                            <li>红头文件</li>
                            <li class="active">添加文件</li>
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
            <td align="right" style="width: 170px;" >
                选择文件：</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1"
                        ErrorMessage="*请选择文件"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                文件名称：</td>
            <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*文件名称不可以为空"></asp:RequiredFieldValidator></td>
        </tr>
        </table></div>
    </form>
</body>
</html>