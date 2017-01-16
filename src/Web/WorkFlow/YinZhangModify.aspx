<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YinZhangModify.aspx.cs" Inherits="WorkFlow_YinZhangModify" %>
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
                            <li>工作流程</li>
                            <li class="active">修改<%=Request.QueryString["Type"].ToString() %></li>
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
                选择印章图片：</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" Width="350px" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                现有印章图片：</td>
            <td>
                <img src="../images/ico_clip.gif" />
                <asp:HyperLink ID="HyperLink1" runat="server"   Target="_blank">[HyperLink1]</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                印章名称：</td>
            <td>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                印章使用密码：</td>
            <td>
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        </table></div>
    </form>
</body>
</html>
