<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DocModify.aspx.cs" Inherits="DocCenter_DocModify" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
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
                            <li>文件中心</li>
                            <li class="active">修改</li>
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
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                现有文件：</td>
            <td>
                <img src="../images/ico_clip.gif" />
                <asp:HyperLink ID="HyperLink1" runat="server"   Target="_blank">[HyperLink1]</asp:HyperLink>&nbsp;
                &nbsp;<img src="../images/Button/Read.gif" /><asp:HyperLink ID="HyperLink2" runat="server"
                      ForeColor="Blue" NavigateUrl="../DsoFramer/ReadFile.aspx"
                    Target="_blank">阅读</asp:HyperLink>&nbsp;
                <img src="../images/Button/Read.gif" /><asp:HyperLink ID="HyperLink3" runat="server"
                      ForeColor="Blue" Target="_blank" NavigateUrl="../DsoFramer/ReadFile.aspx">编辑</asp:HyperLink>
                &nbsp;<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                </td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                文件编号：</td>
            <td>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                备注信息：</td>
            <td>
               <CKEditor:CKEditorControl ID="TxtContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
            </td>
        </tr>
        </table></div>
    </form>
</body>
</html>