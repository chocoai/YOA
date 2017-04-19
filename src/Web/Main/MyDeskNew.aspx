<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyDeskNew.aspx.cs" Inherits="Main_Default" %>

<!DOCTYPE html>

<html>
<head>
    <link href="../Style/home.css" rel="stylesheet" />
    <link href="../Style/base.css" rel="stylesheet" />
    <title>OA系统</title>
    <script type="text/javascript">
        function stops() {
            return false;
        }
        document.oncontextmenu = stops;
    </script>
</head>

<body>
    <div class="article toolbar">
        <div class="title ue-clear">
            <h2>常用工具</h2>
            <a href="javascript:;" class="more">更多</a>
        </div>
        <div class="content">
            <ul class="toollist ue-clear">
                <li>
                    <a href="../GongGao/GongGao.aspx?Type=单位" class="img">
                        <img src="../images/indexNew/icon01.png"></a>
                    <p><a href="../GongGao/GongGao.aspx?Type=单位">通知公告</a></p>
                </li>
                <li>
                    <a href="../DocFile/JuanKu.aspx" class="img">
                        <img src="../images/indexNew/icon02.png"></a>
                    <p><a href="../DocFile/JuanKu.aspx">档案文书</a></p>
                </li>
                <li>
                    <a href="../Personal/ChangPwd.aspx" class="img">
                        <img src="../images/indexNew/icon03.png"></a>
                    <p><a href="../Personal/ChangPwd.aspx">密码修改</a></p>
                </li>
                <li>
                    <a href="../Work/ManageRiCheng.aspx" class="img">
                        <img src="../images/indexNew/icon04.png"></a>
                    <p><a href="../Work/ManageRiCheng.aspx">日程安排</a></p>
                </li>
                <li>
                    <a href="../Work/WorkRiZhiAdd.aspx" class="img">
                        <img src="../images/indexNew/icon05.png"></a>
                    <p><a href="../Work/WorkRiZhiAdd.aspx">添加日志</a></p>
                </li>
                <li>
                    <a href="../Meeting/MyMeeting.aspx" class="img">
                        <img src="../images/indexNew/icon06.png"></a>
                    <p><a href="../Meeting/MyMeeting.aspx">网络会议</a></p>
                </li>
                <li>
                    <a href="../SystemManage/SystemSetting.aspx" class="img">
                        <img src="../images/indexNew/icon07.png"></a>
                    <p><a href="../SystemManage/SystemSetting.aspx">参数信息</a></p>
                </li>
                <%--   <li>
                    <a href="javascript:;" class="img">
                        <img src="../images/indexNew/icon08.png"></a>
                    <p><a href="javascript:;">回收站</a></p>
                </li>--%>
                <li>
                    <a href="../SystemManage/SystemJiaoSe.aspx" class="img">
                        <img src="../images/indexNew/icon09.png"></a>
                    <p><a href="../SystemManage/SystemJiaoSe.aspx">系统配置</a></p>
                </li>
                <li class="add-btn">
                    <img src="../images/indexNew/add.png">
                </li>
            </ul>

        </div>
    </div>
    <div class="article half notice">
        <div class="wrap-l">
            <div class="title ue-clear">
                <h2>通知公告</h2>
                <a href="../GongGao/GongGao.aspx?Type=单位" class="more">更多</a>
            </div>
            <div class="content">
                <ul class="notice-list">
                    <asp:Repeater ID="rptNotice" runat="server">
                        <ItemTemplate>
                            <li class="ue-clear">
                                <a href="../GongGao/GongGaoView.aspx?ID=<%# Eval("ID") %>" class="notice-title"><%# Eval("TitleStr") %></a>
                                <div class="notice-time"><%# Convert.ToDateTime(Eval("TimeStr")).ToString("MM-dd") %></div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <div class="article half matter">
        <div class="wrap-r">
            <div class="title ue-clear">
                <h2 class="title-list">
                    <ul class="ue-clear">
                        <li class="current"><a href="javascript:void(0);">单位通告</a></li>
                        <li><a href="javascript:void(0);">部门通告</a></li>
                    </ul>
                </h2>
                <a href="../GongGao/GongGao.aspx?Type=单位" class="more">更多</a>
            </div>
            <div class="content">
                <div class="matter-content current ue-clear">
                    <div class="today">
                        <p class="year"><%=DateTime.Now.ToString("yyyy年M月") %></p>
                        <p class="date"><%=DateTime.Now.Day %></p>
                    </div>
                    <ul class="matter-list">
                        <asp:Repeater ID="rtpNoticeOfCompany" runat="server">
                            <ItemTemplate>
                                <li class="ue-clear">
                                    <span class="matter-time"><%# Convert.ToDateTime(Eval("TimeStr")).ToString("MM-dd") %></span>
                                    <a href="../GongGao/GongGaoView.aspx?ID=<%# Eval("ID") %>" class="matter-title"><%# Eval("TitleStr") %></a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="matter-content ue-clear">
                    <div class="today">
                        <p class="year"><%=DateTime.Now.ToString("yyyy年M月") %></p>
                        <p class="date"><%=DateTime.Now.Day %></p>
                    </div>
                    <ul class="matter-list">
                        <asp:Repeater ID="rtpNoticeOfDepart" runat="server">
                            <ItemTemplate>
                                <li class="ue-clear">
                                    <span class="matter-time"><%# Convert.ToDateTime(Eval("TimeStr")).ToString("MM-dd") %></span>
                                    <a href="../GongGao/GongGaoView.aspx?ID=<%# Eval("ID") %>" class="matter-title"><%# Eval("TitleStr") %></a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="article half duty">
        <div class="wrap-l">
            <div class="title ue-clear">
                <h2>领导值岗</h2>
                <a href="javascript:;" class="more">更多</a>
            </div>
            <div class="content">
                <table>
                    <thead>
                        <tr>
                            <th class="date">日期</th>
                            <th class="week">星期</th>
                            <th class="leader">值班领导</th>
                            <th class="contact">联系方式</th>
                            <th class="remark">备注</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color: rgb(239, 246, 250);">
                            <td class="date">05-08</td>
                            <td class="week">星期一</td>
                            <td class="leader">刘秀全</td>
                            <td class="contact">139039409876</td>
                            <td class="remark"></td>
                        </tr>
                        <tr>
                            <td class="date">05-09</td>
                            <td class="week">星期一</td>
                            <td class="leader">刘秀全</td>
                            <td class="contact">139039409876</td>
                            <td class="remark"></td>
                        </tr>
                        <tr style="background-color: rgb(239, 246, 250);">
                            <td class="date">05-10</td>
                            <td class="week">星期一</td>
                            <td class="leader">刘秀全</td>
                            <td class="contact">139039409876</td>
                            <td class="remark"></td>
                        </tr>
                        <tr>
                            <td class="date">05-08</td>
                            <td class="week">星期一</td>
                            <td class="leader">刘秀全</td>
                            <td class="contact">139039409876</td>
                            <td class="remark"></td>
                        </tr>
                        <tr style="background-color: rgb(239, 246, 250);">
                            <td class="date">05-08</td>
                            <td class="week">星期一</td>
                            <td class="leader">刘秀全</td>
                            <td class="contact">139039409876</td>
                            <td class="remark"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="article half email">
        <div class="wrap-r">
            <div class="title ue-clear">
                <h2>未读邮件</h2>
                <a href="../LanEmail/LanEmailShou.aspx" class="more">更多</a>
            </div>
            <div class="content">
                <table>
                    <thead>
                        <tr>
                            <th class="icon"></th>
                            <th class="sender">发件人</th>
                            <th class="subject">主题</th>
                            <th class="time last-item">时间</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%-- <tr class="tody">
                            <td colspan="4">
                                <div class="td-wrap"><em>今天</em><a href="javascript:;">(3封)</a></div>
                            </td>
                        </tr>--%>
                        <asp:Repeater ID="rtpInnerMail" runat="server">
                            <ItemTemplate>
                                <li class="ue-clear">
                                    <tr  class="<%#Eval("EmailState").ToString()=="已读"?"":"open" %>">
                                        <td class="icon">
                                            <div class="td-wrap"></div>
                                        </td>
                                        <td class="sender">
                                            <div class="td-wrap"><%#Eval("FromUser") %></div>
                                        </td>
                                        <td class="subject">
                                            <div class="td-wrap"><a href="../LanEmail/EmailView.aspx?ID=<%#Eval("Id") %>"><%#Eval("EmailTitle") %></a></div>
                                        </td>
                                        <td class="time">
                                            <div class="td-wrap"><%# Eval("TimeStr") %></div>
                                        </td>
                                    </tr>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="../JS/jquery.js"></script>
    <script src="../JS/common.js"></script>
    <!--<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>-->
    <script type="text/javascript">
        $(".title-list ul").on("click", "li", function () {
            var aIndex = $(this).index();
            $(this).addClass("current").siblings().removeClass("current");
            $(".matter-content").removeClass("current").eq(aIndex).addClass("current");
        });

        $(".duty").find("tbody").find("tr:even").css("backgroundColor", "#eff6fa");
    </script>

</body>
</html>
