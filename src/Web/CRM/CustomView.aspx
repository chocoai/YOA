<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomView.aspx.cs" Inherits="CRM_CustomView" %>
<html>
	<head>
		<title>企业OA综合管理平台</title>
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
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;客户管理&nbsp;>>&nbsp;查看客户信息
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                    &nbsp;<img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
            <tr>
            <td height="3px" colspan="2" style="background-color: #ffffff"></td>
        </tr>
        </table>
    
    <table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        客户名称：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblCustomName" runat="server"></asp:Label>
	</td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        客户编号：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblCustomSerils" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        负责人：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblChargeMan" runat="server"></asp:Label>
	</td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        客户地址：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblAddress" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        客户单位网站：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblUrlLink" runat="server"></asp:Label>
	</td>
       <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        邮编：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblYouBian" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        联系电话：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblTelStr" runat="server"></asp:Label>
	</td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        客户性质：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblXingZhi" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        客户来源：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblLaiYuan" runat="server"></asp:Label>
	</td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        所在区域：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblQuYu" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        客户状态：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblZhuangTai" runat="server"></asp:Label>
	</td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        人数：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblRenShu" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        办公面积：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblBanGongMianJi" runat="server"></asp:Label>
	</td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        客户类别：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblLeiBie" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        客户级别：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblJiBie" runat="server"></asp:Label>
	</td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        业务范围：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblYeWuFanWei" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        所属行业：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblHangYe" runat="server"></asp:Label>
	</td>
       <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        </td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		</td>
    </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
        目前主要问题：</td>
            <td colspan="3" style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblMuQianWenTi" runat="server"></asp:Label></td>
        </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        预计下达订单时间：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblYuJiDingDanDate" runat="server"></asp:Label>
	</td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        信息化管理：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblBackInfoA" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        设备情况：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblBackInfoB" runat="server"></asp:Label>
	</td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        原有供应商：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblBackInfoC" runat="server"></asp:Label></td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        创建时间：</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblTimeStr" runat="server"></asp:Label></td>
        <td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        所属业务员：</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblUserName" runat="server"></asp:Label></td>
    </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                提醒时间：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                订单及利润情况：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                收款情况：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:Label ID="Label7" runat="server"></asp:Label></td>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                综合评分：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:Label ID="Label8" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                共享人员：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                客户自定义A：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                客户自定义B：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
            <td align="right" style="width: 170px; height: 25px; background-color: #cccccc">
                客户自定义C：</td>
            <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
                <asp:Label ID="Label6" runat="server"></asp:Label></td>
        </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        备注说明：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" colspan="3" >
		<asp:Label id="lblBackInfoD" runat="server"></asp:Label></td>
    </tr>        
</table>

    <hr style="height:1px; color: #003333;">
    &nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="MyCustomLinkMan.aspx?CustomName=<%=CustomNameStr %>">客户联系人</a>&nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="MyCustomLinkLog.aspx?CustomName=<%=CustomNameStr %>">联系记录</a>&nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="MyCustomNeed.aspx?CustomName=<%=CustomNameStr %>">需求记录</a>&nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="MyCustomPrice.aspx?CustomName=<%=CustomNameStr %>">报价记录</a>&nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="MyCustomService.aspx?CustomName=<%=CustomNameStr %>">服务记录</a>&nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="MyCustomBack.aspx?CustomName=<%=CustomNameStr %>">回访记录</a>&nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="MyCustomHate.aspx?CustomName=<%=CustomNameStr %>">投诉记录</a>&nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="MySongYang.aspx?CustomName=<%=CustomNameStr %>">送样记录</a>&nbsp;&nbsp;
    
    <hr style="height:1px; color: #003333;">
    <IFRAME name="RMid" frameBorder="0" marginHeight="0" marginWidth="0" width="100%" height="500"
													BORDERCOLOR="#ffffFF"  src="MyCustomLinkMan.aspx?CustomName=<%=CustomNameStr %>" border="0"></IFRAME>
    
    </div>
    </form>
</body>
</html>