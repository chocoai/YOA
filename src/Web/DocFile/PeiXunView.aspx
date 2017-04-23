<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PeiXunView.aspx.cs" Inherits="DocFile_PeiXunView" %>
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
                            <li>培训管理</li>
                            <li class="active">查看培训信息</li>
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
	<td style="width: 170px;" align="right">
		培训名称：
	</td>
	<td>
		<asp:Label id="lblPeiXunName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		培训人：
	</td>
	<td>
		<asp:Label id="lblPeiXunUser" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		参与人：
	</td>
	<td>
		<asp:Label id="lblCanYuUser" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		开始时间：
	</td>
	<td>
		<asp:Label id="lblStartDate" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		结束时间：
	</td>
	<td>
		<asp:Label id="lblEndDate" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		培训目的：
	</td>
	<td>
		<asp:Label id="lblPeiXunMuDi" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		培训内容：
	</td>
	<td>
		<asp:Label id="lblPeiXunNeiRong" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		培训效果：
	</td>
	<td>
		<asp:Label id="lblXiaoGuo" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		备注说明：
	</td>
	<td>
		<asp:Label id="lblBackInfo" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		附件文件：
	</td>
	<td>
		<asp:Label id="lblFuJianList" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		录入人：
	</td>
	<td>
		<asp:Label id="lblUserName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		录入时间：
	</td>
	<td>
		<asp:Label id="lblTimeStr" runat="server"></asp:Label>
	</td></tr>
</table>

<hr style="height:1px; color: #003333;">
    &nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="PeiXunRiJi.aspx?PeiXunName=<%=PeiXunName %>">培训日志记录</a>&nbsp;&nbsp;
    &nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="PeiXunXiaoGuo.aspx?PeiXunName=<%=PeiXunName %>">培训效果记录</a>&nbsp;&nbsp;
    
    <hr style="height:1px; color: #003333;">
    <IFRAME name="RMid" frameBorder="0" marginHeight="0" marginWidth="0" width="100%" height="500"
													BORDERCOLOR="#ffffFF"  src="PeiXunRiJi.aspx?PeiXunName=<%=PeiXunName %>" border="0"></IFRAME>


		</div>
	</form>
</body>
</html>
