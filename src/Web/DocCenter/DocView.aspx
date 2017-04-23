<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DocView.aspx.cs" Inherits="DocCenter_DocView" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
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
                            <li class="active">查看文件信息</li>
                        </ol>

                    </td>
                    <td align="right" valign="middle" style="height: 30px;">
                        <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                        <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
                </tr>
        </table>
    <table style="width: 100%" class="table" >            
        <tr>
            <td align="right" style="width: 170px;">
                文件：</td>
            <td>
                <img src="../images/ico_clip.gif" />
                <asp:HyperLink ID="HyperLink1" runat="server"   Target="_blank">[HyperLink1]</asp:HyperLink>
                &nbsp; &nbsp; &nbsp; &nbsp;
                <img src="../images/Button/Read.gif" /><asp:HyperLink ID="HyperLink2" runat="server"
                      ForeColor="Blue" NavigateUrl="../DsoFramer/ReadFile.aspx"
                    Target="_blank">阅读</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                文件编号：</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                文件大小：</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>KB</td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                上传时间：</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                上传人：</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                文件类型：</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                备注信息：</td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label></td>
        </tr>
        </table></div>
    </form>
</body>
</html>