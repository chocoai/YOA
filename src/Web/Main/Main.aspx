<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<html>
<head>
    <title>企业OA综合管理平台</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <script language="javascript">
        function visible_click() {
            if (td1.className == "") {
                td1.className = "tddisp";
                main.middle_picture.src = "../images/Jt_right.gif";
            }
            else if (td1.className == "tddisp") {
                td1.className = "";
                main.middle_picture.src = "../images/Jt_left.gif";
            }
        }

    </script>
</head>
<body scroll="no" onload="setInterval(nowtime,1000)">
    <form id="main" method="post" runat="server">
        <table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td height="50" background="../images/TitleBg.gif" width="52%">
                    <img src="../images/product.png" /></td>
                <td height="50" background="../images/TitleBg.gif" width="48%" align="right">
                    <script language="JavaScript">
                        today = new Date();
                        function initArray() {
                            this.length = initArray.arguments.length
                            for (var i = 0; i < this.length; i++)
                                this[i + 1] = initArray.arguments[i]
                        }
                        var d = new initArray(
                          "星期日",
                          "星期一",
                          "星期二",
                          "星期三",
                          "星期四",
                          "星期五",
                          "星期六");
                        document.write(
                             "",
                             today.getYear(), "年",
                             today.getMonth() + 1, "月",
                             today.getDate(), "日   ",
                             d[today.getDay() + 1],
                             "");
                    </script>
                    &nbsp;<img align="absMiddle" src="../images/time.gif" />
                    <span id="t1">
                        <script language="javascript">todaytime1 = new Date(); t1.innerText = todaytime1.getHours() + '：' + todaytime1.getMinutes() + '：' + todaytime1.getSeconds();</script>
                    </span>
                    &nbsp;&nbsp;
                    <script language="javascript">
                        function nowtime() {
                            todaytime = new Date();
                            t1.innerText = todaytime.getHours() + '：' + todaytime.getMinutes() + '：' + todaytime.getSeconds()
                        }
                    </script>

                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="185" height="100%" valign="top" class="" id="td1">


                                <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">

                                    <tr bgcolor="#EBE9ED">

                                        <td width="185" background="../images/BackWhite.gif" style="height: 27px">&nbsp;&nbsp;<img align="absMiddle" height="18" src="../images/node_user.gif" width="18" />&nbsp;<strong><span
                                            style="color: #ffffff"><%= ZWL.Common.PublicMethod.GetSessionValue("UserName")%></span></strong>
                                            &nbsp;&nbsp;<img align="absMiddle" height="18" src="../images/U01.gif" width="18" />&nbsp;<strong><span
                                                style="color: #ffffff">联机</span></strong>
                                        </td>


                                    </tr>
                                    <tr>
                                        <td width="185" bgcolor="#D4E4F1" height="100%" style="padding-bottom: 5px;">

                                            <table width="185" height="100%" border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td height="28" background="../images/Tree_01.jpg">
                    
                                                    </td><%--                                    &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #ffffff">导航&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="hei" target="rform" href="OnlineUser.aspx">组织</a>&nbsp;&nbsp;<a class="hei" target="rform" href="../Mobile/MobileSms.aspx">短信</a>&nbsp;&nbsp;<a class="hei" target="rform" href="../LanEmail/LanEmailShou.aspx">邮件</a></span>--%>
                                                </tr>
                                                <tr>
                                                    <td background="../images/Tree_03.jpg" style="padding-bottom: 3px; padding-top: 5px; padding-left: 10px; padding-right: 10px;">
                                                        <div style="overflow: auto; height: 100%; scrollbar-face-color: #ffffff; scrollbar-highlight-color: #6fa4d0; scrollbar-shadow-color: #6fa4d0; scrollbar-3dlight-color: #e6e6e6; scrollbar-arrow-color: #6fa4d0; scrollbar-track-color: #ffffff; scrollbar-darkshadow-color: #e6e6e6;">
                                                            <asp:TreeView ID="ListTreeView" runat="server" ExpandDepth="0" ShowLines="True" ForeColor="Black">
                                                                <ParentNodeStyle HorizontalPadding="2px" />
                                                                <RootNodeStyle HorizontalPadding="2px" />
                                                                <LeafNodeStyle HorizontalPadding="2px" />
                                                                <Nodes>
                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/mytable.gif" Text="我的办公桌" Value="我的办公桌" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/email.gif" Text="内部邮件" Value="内部邮件" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/inbox.gif" Text="收件箱" Value="001" NavigateUrl="../LanEmail/LanEmailShou.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/outbox.gif" Text="草稿箱" Value="002" NavigateUrl="../LanEmail/LanEmailCao.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/sentbox.gif" Text="已发送" Value="003" NavigateUrl="../LanEmail/LanEmailYiFa.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/trash.gif" Text="已删除" Value="004" NavigateUrl="../LanEmail/LanEmailYiDel.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/webmail.gif" Text="Internet邮件" Value="Internet邮件" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/inbox.gif" Text="收件箱" Value="005" NavigateUrl="../NetMail/NetMailShou.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/outbox.gif" Text="草稿箱" Value="006" NavigateUrl="../NetMail/NetMailCao.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/sentbox.gif" Text="已发送" Value="007" NavigateUrl="../NetMail/NetMailYiFa.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/trash.gif" Text="已删除" Value="008" NavigateUrl="../NetMail/NetMailYiDel.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/mobile_sms.gif" Text="手机短信" Value="009" NavigateUrl="../Mobile/MobileSms.aspx" Target="rform"></asp:TreeNode>

                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/notify.gif" Text="公告通知" Value="公告通知" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/notify.gif" Text="单位公告通知" Value="010" NavigateUrl="../GongGao/GongGao.aspx?Type=单位" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/news.gif" Text="部门公告通知" Value="011" NavigateUrl="../GongGao/GongGao.aspx?Type=部门" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>


                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/vote.gif" Text="投票" Value="012" NavigateUrl="../GongGao/Vote.aspx" Target="rform"></asp:TreeNode>

                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/calendar.gif" Text="日程安排" Value="日程安排" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/calendar.gif" Text="日程安排" Value="013" NavigateUrl="../Work/RiCheng.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/calendar.gif" Text="日程管理" Value="R013" NavigateUrl="../Work/ManageRiCheng.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>


                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/diary.gif" Text="工作日志" Value="014" NavigateUrl="../Work/WorkRiZhi.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/address.gif" Text="通讯簿" Value="通讯簿" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/address.gif" Text="公共通讯簿" Value="015" NavigateUrl="../Work/TongXunLu.aspx?TypeStr=公共通讯簿" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/address.gif" Text="共享通讯簿" Value="016" NavigateUrl="../Work/TongXunLu.aspx?TypeStr=共享通讯簿" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/address.gif" Text="个人通讯簿" Value="017" NavigateUrl="../Work/TongXunLu.aspx?TypeStr=个人通讯簿" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>

                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/meeting.gif" Text="我的会议" Value="018" NavigateUrl="../Meeting/MyMeeting.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/person_info.gif" Text="个人设置" Value="个人设置" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/U01.gif" Text="基本资料" Value="020" NavigateUrl="../Personal/MyInfo.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/U01.gif" Text="系统提醒" Value="021" NavigateUrl="../Personal/SystemTiXing.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/U01.gif" Text="修改密码" Value="022" NavigateUrl="../Personal/ChangPwd.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/U01.gif" Text="邮件设置" Value="023" NavigateUrl="../Personal/MailSetting.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/U01.gif" Text="常用审批" Value="024" NavigateUrl="../Personal/MyShenPi.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/U01.gif" Text="常用模板" Value="025" NavigateUrl="../Personal/MyMoBan.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/U01.gif" Text="我的权限" Value="026" NavigateUrl="../Personal/MyPer.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/workflow.gif" Text="工作流程" Value="工作流程" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/workflow.gif" Text="工作管理" Value="工作管理" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/workflow.gif" Text="我的工作" Value="074" NavigateUrl="../WorkFlow/MyWorkFlow.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/workflow.gif" Text="待办工作" Value="075" NavigateUrl="../WorkFlow/NowWorkFlow.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/workflow.gif" Text="查询工作" Value="076" NavigateUrl="../WorkFlow/SerchWorkFlow.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/workflow.gif" Text="工作监控" Value="077" NavigateUrl="../WorkFlow/HelpWorkFlow.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/workflow.gif" Text="归档工作" Value="078" NavigateUrl="../WorkFlow/OkWorkFlow.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/system.gif" Text="表单定义" Value="表单定义" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/system.gif" Text="表单设计" Value="079" NavigateUrl="../WorkFlow/DesignForm.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/system.gif" Text="表单类别" Value="080" NavigateUrl="../WorkFlow/FormType.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/erp.gif" Text="工作流程" Value="081" NavigateUrl="../WorkFlow/WorkFlowManage.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@roll_manage.gif" Text="印章管理" Value="印章管理" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/@roll_manage.gif" Text="公共印章" Value="082" NavigateUrl="../WorkFlow/PublicSeal.aspx?Type=公共印章" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/@roll_manage.gif" Text="私人印章" Value="083" NavigateUrl="../WorkFlow/PublicSeal.aspx?Type=私人印章" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/@roll_manage.gif" Text="公章使用记录" Value="084" NavigateUrl="../WorkFlow/PublicSealLog.aspx?Type=公共印章" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/@roll_manage.gif" Text="私章使用记录" Value="085" NavigateUrl="../WorkFlow/PublicSealLog.aspx?Type=私人印章" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/netdisk.gif" Text="公文收发" Value="公文收发" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/netdisk.gif" Text="接收文件" Value="057" NavigateUrl="../TelFile/GetFile.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/netdisk.gif" Text="传阅文件" Value="058" NavigateUrl="../TelFile/SendFile.aspx" Target="rform"></asp:TreeNode>

                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/netdisk.gif" Text="接收文件浏览" Value="F001" NavigateUrl="../TelFile/JSFile.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/netdisk.gif" Text="传阅文件浏览" Value="F002" NavigateUrl="../TelFile/CYFile.aspx" Target="rform"></asp:TreeNode>

                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/netdisk.gif" Text="接收文件分类" Value="F003" NavigateUrl="../TelFile/JSDIC.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/netdisk.gif" Text="传阅文件分类" Value="F004" NavigateUrl="../TelFile/CYDIC.aspx" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/work_plan.gif" Text="工作管理" Value="工作管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/work_plan.gif" Text="我的计划" Value="027" NavigateUrl="../WorkPlan/MyWorkPlan.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/work_plan.gif" Text="计划管理" Value="028" NavigateUrl="../WorkPlan/ManageWorkPlan.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/work_plan.gif" Text="我的汇报" Value="A001" NavigateUrl="../WorkPlan/HuiBao.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/work_plan.gif" Text="汇报管理" Value="A002" NavigateUrl="../WorkPlan/HuiBaoOK.aspx" Target="rform"></asp:TreeNode>

                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="人力资源管理" Value="人力资源管理" SelectAction="Expand">

                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="人事档案" Value="A003" NavigateUrl="../SystemManage/SystemUser.aspx?Type=serch" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="人事合同" Value="A004" NavigateUrl="../HRNew/RenShiHeTong.aspx" Target="rform"></asp:TreeNode>

                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/pro.gif" Text="人员考核" Value="人员考核" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/pro.gif" Text="考核项目" Value="A005" NavigateUrl="../HRNew/KaoHeXM.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/pro.gif" Text="考核任务" Value="A006" NavigateUrl="../HRNew/KaoHeRW.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/pro.gif" Text="考核管理" Value="A007" NavigateUrl="../HRNew/KaoHe.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>

                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/score.gif" Text=" 奖惩记录" Value="A008" NavigateUrl="../HRNew/JiangCheng.aspx" Target="rform"></asp:TreeNode>




                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="个人考勤" Value="个人考勤" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="上下班登记" Value="029" NavigateUrl="../HR/ShangXiaBanDengJi.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="外出登记" Value="030" NavigateUrl="../HR/DengJi.aspx?TypeName=WaiChu" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="出差登记" Value="031" NavigateUrl="../HR/DengJi.aspx?TypeName=ChuChai" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="加班登记" Value="032" NavigateUrl="../HR/DengJi.aspx?TypeName=JiaBan" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="病假登记" Value="033" NavigateUrl="../HR/DengJi.aspx?TypeName=BingJia" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="事假登记" Value="034" NavigateUrl="../HR/DengJi.aspx?TypeName=ShiJia" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="考勤批示" Value="考勤批示" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="外出审批" Value="035" NavigateUrl="../HR/ShenPi.aspx?TypeName=WaiChu" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="出差审批" Value="036" NavigateUrl="../HR/ShenPi.aspx?TypeName=ChuChai" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="加班审批" Value="037" NavigateUrl="../HR/ShenPi.aspx?TypeName=JiaBan" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="病假审批" Value="038" NavigateUrl="../HR/ShenPi.aspx?TypeName=BingJia" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="事假审批" Value="039" NavigateUrl="../HR/ShenPi.aspx?TypeName=ShiJia" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/person_info.gif" Text="考勤设置" Value="040" NavigateUrl="../HR/KaoQinSetting.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/attendance.gif" Text="考勤明细" Value="041" NavigateUrl="../HR/KaoQinMingXi.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/finance.gif" Text="考勤查询统计" Value="042" NavigateUrl="../HR/KaoQingChaXunTongJi.aspx" Target="rform"></asp:TreeNode>

                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="客户管理CRM" Value="客户管理CRM" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="我的客户" Value="我的客户" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="客户信息" Value="C001" NavigateUrl="../CRM/MyCustom.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="客户联系人" Value="C002" NavigateUrl="../CRM/MyCustomLinkMan.aspx?CustomName=" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="联系记录" Value="C003" NavigateUrl="../CRM/MyCustomLinkLog.aspx?CustomName=" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="需求记录" Value="C004" NavigateUrl="../CRM/MyCustomNeed.aspx?CustomName=" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="报价记录" Value="C005" NavigateUrl="../CRM/MyCustomPrice.aspx?CustomName=" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="服务记录" Value="C006" NavigateUrl="../CRM/MyCustomService.aspx?CustomName=" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/training.gif" Text="回访记录" Value="C007" NavigateUrl="../CRM/MyCustomBack.aspx?CustomName=" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/training.gif" Text="投诉记录" Value="C008" NavigateUrl="../CRM/MyCustomHate.aspx?CustomName=" Target="rform"></asp:TreeNode>

                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/training.gif" Text="送样记录" Value="C018" NavigateUrl="../CRM/MySongYang.aspx?CustomName=" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="客户管理" Value="客户管理" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="客户信息管理" Value="C009" NavigateUrl="../CRM/CustomInfo.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="联系人管理" Value="C010" NavigateUrl="../CRM/CustomLinkMan.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="联系记录管理" Value="C011" NavigateUrl="../CRM/CustomLinkLog.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="需求记录管理" Value="C012" NavigateUrl="../CRM/CustomNeed.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="报价记录管理" Value="C013" NavigateUrl="../CRM/CustomPrice.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="服务记录管理" Value="C014" NavigateUrl="../CRM/CustomService.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/training.gif" Text="回访记录管理" Value="C015" NavigateUrl="../CRM/CustomBack.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/training.gif" Text="投诉记录管理" Value="C016" NavigateUrl="../CRM/CustomHate.aspx" Target="rform"></asp:TreeNode>

                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/training.gif" Text="送样记录管理" Value="C019" NavigateUrl="../CRM/SongYang.aspx" Target="rform"></asp:TreeNode>

                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/training.gif" Text="邮件信息群发" Value="C017" NavigateUrl="../CRM/CustomMsg.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/training.gif" Text="客户信息统计" Value="C020" NavigateUrl="../CRM/CustomSum.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/training.gif" Text="客户参数设置" Value="C021" NavigateUrl="../CRM/CustomSetting.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                    </asp:TreeNode>
                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="项目管理" Value="项目管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="项目信息" Value="X001" NavigateUrl="../Project/ProjectManage.aspx?ProjectName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="评审信息" Value="X002" NavigateUrl="../Project/PingShen.aspx?ProjectName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="项目进度" Value="X003" NavigateUrl="../Project/ProjectJinDu.aspx?ProjectName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="收款信息" Value="X004" NavigateUrl="../Project/ShouKuan.aspx?ProjectName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="项目实施" Value="X005" NavigateUrl="../Project/ShiShiRiZhi.aspx?ProjectName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="报销申请" Value="X006" NavigateUrl="../Project/BaoXiaoShenQing.aspx?ProjectName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="报销管理" Value="X007" NavigateUrl="../Project/BaoXiaoGuanLi.aspx?ProjectName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="项目利润" Value="X008" NavigateUrl="../Project/LiRuiGuanLi.aspx?ProjectName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/roll_manage.gif" Text="数据统计" Value="X009" NavigateUrl="../Project/ShuJuTongJi.aspx?ProjectName=" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/sale_manage.gif" Text="销售订单管理" Value="销售订单管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/sale_manage.gif" Text="产品信息管理" Value="A009" NavigateUrl="../Sell/Product.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="销售合同登记" Value="A010" NavigateUrl="../Sell/ContractDengJi.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="销售合同管理" Value="A011" NavigateUrl="../Sell/Contract.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="合同产品记录" Value="A012" NavigateUrl="../Sell/SellLog.aspx?HeTongName=" Target="rform"></asp:TreeNode>


                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/sale_manage.gif" Text="供应商管理" Value="供应商管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/sale_manage.gif" Text="供应商管理" Value="A013" NavigateUrl="../Supply/Supplys.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/sale_manage.gif" Text="供应商联系人" Value="A014" NavigateUrl="../Supply/SupplysLink.aspx?GongYingShang=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="采购订单登记" Value="A015" NavigateUrl="../Supply/BuyDengJi.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="采购订单管理" Value="A016" NavigateUrl="../Supply/BuyOrder.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/hrms.gif" Text="订单产品记录" Value="A017" NavigateUrl="../Supply/BuyLog.aspx?OrderName=" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>
                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/office_Product.gif" Text="办公用品管理" Value="办公用品管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/diary.gif" Text="办公用品申请" Value="A018" NavigateUrl="../Office/OfficeShengQing.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/office_Product.gif" Text="办公用品管理" Value="A019" NavigateUrl="../Office/Officething.aspx" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>
                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/@asset.gif" Text="固定资产管理" Value="固定资产管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@asset.gif" Text="固定资产管理" Value="A020" NavigateUrl="../Office/GuDing.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@asset.gif" Text="资产折旧记录" Value="A021" NavigateUrl="../Office/GuDingJiLu.aspx?GDName=" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>
                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/book.gif" Text="图书管理" Value="图书管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/book.gif" Text="图书管理" Value="A022" NavigateUrl="../Office/Book.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/book.gif" Text="图书借阅登记" Value="A023" NavigateUrl="../Office/BookJieHuan.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/book.gif" Text="图书借阅管理" Value="A024" NavigateUrl="../Office/BookJieHuanOK.aspx" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="档案文书管理" Value="档案文书管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="卷库管理" Value="A025" NavigateUrl="../DocFile/JuanKu.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="档案管理" Value="A026" NavigateUrl="../DocFile/DangAn.aspx?JuanKuName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="档案销毁" Value="A027" NavigateUrl="../DocFile/DangAnDel.aspx" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>
                                                                 <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="培训管理" Value="培训管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="培训信息" Value="A028" NavigateUrl="../DocFile/PeiXun.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="培训日志" Value="A029" NavigateUrl="../DocFile/PeiXunRiJi.aspx?PeiXunName=" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="效果评估" Value="A030" NavigateUrl="../DocFile/PeiXunXiaoGuo.aspx?PeiXunName=" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>
                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/meeting.gif" Text="网络会议管理" Value="网络会议管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/meeting.gif" Text="我的会议" Value="018" NavigateUrl="../Meeting/MyMeeting.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/meeting.gif" Text="会议申请" Value="F005" NavigateUrl="../Meeting/MeetingDengJi.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/meeting.gif" Text="会议管理" Value="019" NavigateUrl="../Meeting/Meeting.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/meeting.gif" Text="会议查询" Value="F006" NavigateUrl="../Meeting/MeetingSerch.aspx" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>
                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/@infofind.gif" Text="资源调配管理" Value="资源调配管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@infofind.gif" Text="资源申请" Value="A031" NavigateUrl="../Source/Source.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@infofind.gif" Text="资源管理" Value="A032" NavigateUrl="../Source/SourceOK.aspx" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/vehicle.gif" Text="车辆信息管理" Value="车辆信息管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/vehicle.gif" Text="车辆使用申请" Value="F007" NavigateUrl="../Car/CarShiYong.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/vehicle.gif" Text="车辆使用管理" Value="F008" NavigateUrl="../Car/CarShiYongOK.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/vehicle.gif" Text="车辆维护申请" Value="F009" NavigateUrl="../Car/CarWeiHu.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/vehicle.gif" Text="车辆维护管理" Value="F010" NavigateUrl="../Car/CarWeiHuOK.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/vehicle.gif" Text="车辆信息管理" Value="F011" NavigateUrl="../Car/CarInfo.aspx" Target="rform"></asp:TreeNode>

                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/@hrms.gif" Text="组织机构信息" Value="组织机构信息" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@hrms.gif" Text="单位信息查询" Value="043" NavigateUrl="../SystemManage/DanWeiInfo.aspx?Type=serch" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@hrms.gif" Text="部门信息查询" Value="044" NavigateUrl="../SystemManage/BuMenInfo.aspx?Type=serch&amp;DirID=0" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@hrms.gif" Text="用户信息查询" Value="045" NavigateUrl="../SystemManage/SystemUser.aspx?Type=serch" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>

                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="文件文档中心" Value="文件文档中心" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="个人文件" Value="046" NavigateUrl="../DocCenter/DocCenter.aspx?Type=个人文件&amp;DirID=0" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="电子刊物" Value="047" NavigateUrl="../DocCenter/DocCenter.aspx?Type=电子刊物&amp;DirID=0" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="单位文件" Value="048" NavigateUrl="../DocCenter/DocCenter.aspx?Type=单位文件&amp;DirID=0" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/file_folder.gif" Text="共享文件" Value="049" NavigateUrl="../DocCenter/DocCenter.aspx?Type=共享文件&amp;DirID=0" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/netdisk.gif" Text="我的硬盘" Value="050" NavigateUrl="../DocCenter/DocCenter.aspx?Type=我的硬盘&amp;DirID=0" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/netdisk.gif" Text="共享硬盘" Value="051" NavigateUrl="../DocCenter/DocCenter.aspx?Type=共享硬盘&amp;DirID=0" Target="rform"></asp:TreeNode>

                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/trash.gif" Text="回收站" Value="052" NavigateUrl="../DocCenter/DocHuiShou.aspx" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>


                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/sale_manage.gif" Text="信息综合交流" Value="信息综合交流" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/bbs2.gif" Text="论坛BBS" Value="论坛BBS" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/bbs2.gif" Text="论坛BBS" Value="053" NavigateUrl="../BBS/BanKuaiList.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/bbs2.gif" Text="版块设置" Value="054" NavigateUrl="../BBS/SettingConfig.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/chatroom.gif" Text="内部聊天室" Value="内部聊天室" SelectAction="Expand">
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/chatroom.gif" Text="内部聊天室" Value="055" NavigateUrl="../TalkRoom/TalkRoomList.aspx" Target="rform"></asp:TreeNode>
                                                                            <asp:TreeNode ImageUrl="~/images/TreeImages/chatroom.gif" Text="参数设置" Value="056" NavigateUrl="../TalkRoom/SettingConfig.aspx" Target="rform"></asp:TreeNode>
                                                                        </asp:TreeNode>

                                                                    </asp:TreeNode>

<%--
                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/vote.gif" Text="附件程序" Value="附件程序" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/system.gif" Text="电话区号查询" Value="059" NavigateUrl="../Appendix/TelCode.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/system.gif" Text="邮政编码查询" Value="060" NavigateUrl="../Appendix/YouZhengCode.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/system.gif" Text="列车时刻查询" Value="061" NavigateUrl="http://qq.ip138.com/train/" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/system.gif" Text="公交线路查询" Value="062" NavigateUrl="http://www.8684.cn/" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/system.gif" Text="法律法规查询" Value="063" NavigateUrl="http://law.law-star.com/html/lawsearch.htm" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/game.gif" Text="休闲游戏" Value="064" NavigateUrl="http://www.4399.com" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/calendar2.gif" Text="万年历" Value="065" NavigateUrl="http://site.baidu.com/list/wannianli.htm" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/fldb.gif" Text="世界时钟" Value="066" NavigateUrl="http://www.hao123.com/haoserver/wotime.htm" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/fav.gif" Text="常用网址" Value="067" NavigateUrl="http://www.hao123.com/" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>--%>
                                                                    <asp:TreeNode ImageUrl="~/images/TreeImages/@score.gif" Text="系统管理" Value="系统管理" SelectAction="Expand">
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@netmeeting.gif" Text="单位信息管理" Value="068" NavigateUrl="../SystemManage/DanWeiInfo.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@netmeeting.gif" Text="部门信息管理" Value="069" NavigateUrl="../SystemManage/BuMenInfo.aspx?Type=&amp;DirID=0" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@netmeeting.gif" Text="用户信息管理" Value="070" NavigateUrl="../SystemManage/SystemUser.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/@netmeeting.gif" Text="角色信息管理" Value="071" NavigateUrl="../SystemManage/SystemJiaoSe.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/score.gif" Text="红头文件管理" Value="086" NavigateUrl="../SystemManage/RedHeadFile.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/score.gif" Text="系统日志管理" Value="072" NavigateUrl="../SystemManage/SystemLog.aspx" Target="rform"></asp:TreeNode>
                                                                        <asp:TreeNode ImageUrl="~/images/TreeImages/test.gif" Text="系统参数设置" Value="073" NavigateUrl="../SystemManage/SystemSetting.aspx" Target="rform"></asp:TreeNode>
                                                                    </asp:TreeNode>
                                                                </Nodes>
                                                            </asp:TreeView>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="25" background="../images/Tree_04.jpg">&nbsp;			</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="0%">
                                <table width="0%" border="0" cellpadding="0" cellspacing="0" height="100%">
                                    <tr>
                                        <td background="../images/BackWhite.gif" height="27px"></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#D4E4F1">
                                            <img onclick="visible_click()" style="cursor: hand;" src="../images/Jt_left.gif" id="middle_picture"></td>
                                    </tr>
                                </table>


                            </td>
                            <td width="100%" height="100%">


                                <table border="0" width="100%" cellspacing="0" cellpadding="0" height="100%">
                                    <tr>
                                        <td>

                                            <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
                                                <tr>
                                                    <td height="27" background="../images/BackWhite.gif">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                            <tr>
                                                                <td>&nbsp;&nbsp;&nbsp; &nbsp;<a class="bai" target="rform" href="../NetMail/NetMailShou.aspx"><img align="absMiddle" height="16" border="0" src="../images/TreeImages/webmail.gif" width="16" />&nbsp;Internet 邮件&nbsp;</a>
                                                                    &nbsp;&nbsp;<a class="bai" target="rform" href="../Meeting/MyMeeting.aspx"><img align="absMiddle" height="16" border="0" src="../images/TreeImages/vmeet.gif" width="16" />&nbsp;我的会议&nbsp;</a>
                                                                    &nbsp;&nbsp;<a class="bai" target="rform" href="../DocCenter/DocCenter.aspx?Type=个人文件&DirID=0"><img align="absMiddle" height="16" border="0" src="../images/TreeImages/file_folder.gif" width="16" />&nbsp;个人文件柜&nbsp;</a>
                                                                    &nbsp;&nbsp;<a class="bai" target="rform" href="../LanEmail/LanEmailShou.aspx"><img align="absMiddle" height="16" border="0" src="../images/TreeImages/email.gif" width="16" />&nbsp;内部邮件&nbsp;</a>
                                                                    &nbsp;&nbsp;<a class="bai" target="rform" href="../HR/ShangXiaBanDengJi.aspx"><img align="absMiddle" height="16" border="0" src="../images/TreeImages/attendance.gif" width="16" />&nbsp;上下班登记&nbsp;</a>
                                                                    &nbsp;&nbsp;<a class="bai" target="rform" href="../WorkFlow/MyWorkFlow.aspx"><img align="absMiddle" height="16" border="0" src="../images/TreeImages/workflow.gif" width="16" />&nbsp;我的工作&nbsp;</a>
                                                                </td>
                                                                <td align="right">
                                                                    <a class="bai" href="MyDesk.aspx" target="rform">
                                                                        <img align="absMiddle" alt="我的办公桌" border="0" height="16" src="../images/TreeImages/mytable.gif"
                                                                            width="16" />&nbsp;桌面</a>&nbsp;
                                <a class="bai" href="../Personal/SystemTiXing.aspx" target="rform">
                                    <img align="absMiddle" alt="更改界面主题风格" border="0" height="16" src="../images/TreeImages/theme.gif"
                                        width="16" />&nbsp;提醒</a>&nbsp;
                                <a class="bai" href="../Login.aspx">
                                    <img align="absMiddle" alt="注销用户" border="0" src="../images/login.gif" />&nbsp;注销</a>&nbsp;&nbsp;&nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" width="100%" height="100%" style="padding-bottom: 5px; padding-top: 5px; padding-left: 5px;">
                                                        <iframe name="rform" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%"
                                                            bordercolor="#ffffFF" src="MyDesk.aspx" border="0"></iframe>
                                                    </td>

                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                </table>




                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="20" colspan="2" background="../images/BottomBg.gif" valign="middle">
                    <table border="0" cellpadding="0" cellspacing="0" class="small" width="100%">
                        <tr>
                            <td valign="middle">&nbsp;&nbsp;<iframe name="bform" frameborder="0" marginheight="0" marginwidth="0" width="150px" height="20px"
                                src="Blank.aspx" border="0"></iframe>

                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp;
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text=""
                                        Visible="True"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
