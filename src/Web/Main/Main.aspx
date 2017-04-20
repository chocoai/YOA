<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html>
<head>
    <title>OA管理系统</title>

    <link href="../Style/indexNew1.css" rel="stylesheet" />
    <link href="../Style/jquery.dialog.css" rel="stylesheet" />
    <link href="../Style/base.css" rel="stylesheet" />
    <script src="../JS/jquery-1.5.1.js"></script>
    <script src="../JS/jquery-1.11.1.min.js"></script>

    <script type="text/javascript">
        function stops() {
            return false;
        }
        document.oncontextmenu = stops;

    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            //最终菜单项权限设置
            $(".subnav li a").each(function (i, d) {
                if ($(d).attr("target") != "" && $(d).attr("target") != undefined) {
                    var liDom = $(d).parent();
                    var accesskey = $(liDom).attr("accesskey");
                    var accesslist = $("#hldQuanXian").val();
                    if (accesslist.indexOf("|" + accesskey + "|") < 0) {
                        $(liDom).remove();
                    }
                }
            });
            //第二级菜单权限设置
            $(".subnav>.bl>ul").each(function (i, d) {
                if ($(d).find("li").length == 0) {
                    $(d).parent().remove();
                }
            });
            //一级菜单权限设置
            $(".subnav").each(function (i, d) {
                if ($(d).find("li").length == 0) {
                    $(d).parent().remove();
                }
            });

            //var subnavParent = $('.subnav>.bl');//获取父层
            var subnavList = $('.subnav>.bl>ul');
            $('.subnav>.bl>a').each(function (i) {//获取列表的大标题并遍历
                $(this).click(function () {
                    if ($(subnavList[i]).css('display') == 'none') {
                        $(subnavList[i]).slideDown(100);
                    }
                    else {
                        $(subnavList[i]).slideUp(100);
                    }
                });
            });
        });
    </script>

    <%--    <script type="text/javascript">
        $(document).ready(function () {
            $('.subnav li a').click(function () {
                if ($('.subnav li ul').css('display') == 'none') {
                    $(this).siblings('ul').slideDown(200);
                    //if ($(this).children('li').css('display') == 'block') {
                    //    $(this).children('li').children('ul').slideUp(200);
                    //}
                }
                else {
                    //控制自身菜单下子菜单隐藏
                    $(this).siblings('ul').slideUp(200);
                    //控制自身菜单下子菜单隐藏
                    //$(this).siblings('ul').children('li').children('ul').slideUp(100);
                }
            })
        });
    </script>--%>

    <%--<script>
    $(".nav").on("click", "li", function () {
        $(this).siblings().removeClass("current");
        var hasChild = !!$(this).find(".subnav").size();
        if (hasChild) {
            $(this).toggleClass("hasChild");
        }
        $(this).addClass("current");
        if ($(subnav[i]).css('display') == 'none') {
            $(subnav[i]).slideDown(500);
        }
        else {
            $(subnav[i]).slideUp(500);
        }
    });
</script>--%>
</head>

<body>
    <div id="container">
        <input type="hidden" id="hldQuanXian" value="<%=QuanXian %>" />
        <div id="hd">
            <div class="hd-wrap ue-clear">
                <div class="top-light"></div>
                <h1 class="logo">政务OA</h1>
                <div class="login-info ue-clear">
                    <div class="welcome ue-clear"><span>欢迎您,</span><a class="user-name"><%= ZWL.Common.PublicMethod.GetSessionValue("UserName")%></a></div>
                    <div class="login-msg ue-clear">
                        <a class="msg-txt">消息</a>
                        <a class="msg-num">10</a>
                    </div>
                </div>
                <div class="toolbar ue-clear">
                    <a class="home-btn" href="../Main/Main.aspx"></a>
                    <a class="quit-btn exit" href="../Login.aspx"></a>
                </div>
            </div>
        </div>
        <div id="bd">
            <div class="wrap ue-clear">
                <div class="sidebar">
                    <h2 class="sidebar-header">
                        <p>功能导航</p>
                    </h2>

                    <ul class="nav">
                        <li class="office">
                            <div class="nav-header"><a href="javascript:;" class="ue-clear"><span>我的办公桌</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li class="bl"><a style="background: url(../images/TreeImages/email.gif) no-repeat left;"><span>内部邮件</span></a>
                                    <ul>
                                        <li accesskey="001" style="background: url(../images/TreeImages/inbox.gif) no-repeat left;"><a href="../LanEmail/LanEmailShou.aspx" target="contentFrame">收件箱</a></li>
                                        <li accesskey="002" style="background: url(../images/TreeImages/outbox.gif) no-repeat left;"><a href="../LanEmail/LanEmailCao.aspx" target="contentFrame">草稿箱</a></li>
                                        <li accesskey="003" style="background: url(../images/TreeImages/sentbox.gif) no-repeat left;"><a href="../LanEmail/LanEmailYiFa.aspx" target="contentFrame">已发送</a></li>
                                        <li accesskey="004" style="background: url(../images/TreeImages/trash.gif) no-repeat left;"><a href="../LanEmail/LanEmailYiDel.aspx" target="contentFrame">已删除</a></li>
                                    </ul>
                                </li>

                                <li class="bl"><a style="background: url(../images/TreeImages/webmail.gif) no-repeat left;"><span>Internet邮件</span></a>
                                    <ul>
                                        <li accesskey="005" style="background: url(../images/TreeImages/inbox.gif) no-repeat left;"><a href="../LanEmail/LanEmailShou.aspx" target="contentFrame">收件箱</a></li>
                                        <li accesskey="006" style="background: url(../images/TreeImages/outbox.gif) no-repeat left;"><a href="../LanEmail/LanEmailCao.aspx" target="contentFrame">草稿箱</a></li>
                                        <li accesskey="007" style="background: url(../images/TreeImages/sentbox.gif) no-repeat left;"><a href="../LanEmail/LanEmailYiFa.aspx" target="contentFrame">已发送</a></li>
                                        <li accesskey="008" style="background: url(../images/TreeImages/trash.gif) no-repeat left;"><a href="../LanEmail/LanEmailYiDel.aspx" target="contentFrame">已删除</a></li>
                                    </ul>
                                </li>
                                <li accesskey="009"><a href="../Mobile/MobileSms.aspx" style="background: url(../images/TreeImages/mobile_sms.gif) no-repeat left;" target="contentFrame"><span style="background: none;">手机短信</span></a></li>
                                <li class="bl"><a style="background: url(../images/TreeImages/notify.gif) no-repeat left;"><span>公告通知</span></a>
                                    <ul>
                                        <li accesskey="010" style="background: url(../images/TreeImages/notify.gif) no-repeat left;"><a href="../GongGao/GongGao.aspx?Type=单位" target="contentFrame">单位公告通知</a></li>
                                        <li accesskey="011" style="background: url(../images/TreeImages/news.gif) no-repeat left;"><a href="../GongGao/GongGao.aspx?Type=部门" target="contentFrame">部门公告通知</a></li>
                                    </ul>
                                </li>
                                <li accesskey="012"><a href="../GongGao/Vote.aspx" style="background: url(../images/TreeImages/vote.gif) no-repeat left;" target="contentFrame"><span style="background: none;">投票</span></a></li>
                                <li class="bl"><a style="background: url(../images/TreeImages/calendar.gif) no-repeat left;"><span>日程安排</span></a>
                                    <ul>
                                        <li accesskey="013" style="background: url(../images/TreeImages/calendar.gif) no-repeat left;"><a href="../Work/RiCheng.aspx" target="contentFrame">日程安排</a></li>
                                        <li accesskey="R013" style="background: url(../images/TreeImages/calendar.gif) no-repeat left;"><a href="../Work/ManageRiCheng.aspx" target="contentFrame">日程管理</a></li>
                                    </ul>
                                </li>
                                <li accesskey="014"><a href="../Work/WorkRiZhi.aspx" style="background: url(../images/TreeImages/diary.gif) no-repeat left;" target="contentFrame"><span style="background: none;">工作日志</span></a></li>
                                <li class="bl"><a style="background: url(../images/TreeImages/address.gif) no-repeat left;"><span>通讯簿</span></a>
                                    <ul>
                                        <li accesskey="015" style="background: url(../images/TreeImages/address.gif) no-repeat left;"><a href="../Work/TongXunLu.aspx?TypeStr=公共通讯簿" target="contentFrame">公共通讯簿</a></li>
                                        <li accesskey="016" style="background: url(../images/TreeImages/address.gif) no-repeat left;"><a href="../Work/TongXunLu.aspx?TypeStr=共享通讯簿" target="contentFrame">共享通讯簿</a></li>
                                        <li accesskey="017" style="background: url(../images/TreeImages/address.gif) no-repeat left;"><a href="../Work/TongXunLu.aspx?TypeStr=个人通讯簿" target="contentFrame">个人通讯簿</a></li>
                                    </ul>
                                </li>
                                <li accesskey="018"><a href="../Meeting/MyMeeting.aspx" style="background: url(../images/TreeImages/meeting.gif) no-repeat left;" target="contentFrame"><span style="background: none;">我的会议</span></a></li>
                                <li class="bl"><a style="background: url(../images/TreeImages/person_info.gif) no-repeat left;"><span>个人设置</span></a>
                                    <ul>
                                        <li accesskey="020" style="background: url(../images/TreeImages/U01.gif) no-repeat left;"><a href="../Personal/MyInfo.aspx" target="contentFrame">基本资料</a></li>
                                        <li accesskey="021" style="background: url(../images/TreeImages/U01.gif) no-repeat left;"><a href="../Personal/SystemTiXing.aspx" target="contentFrame">系统提醒</a></li>
                                        <li accesskey="022" style="background: url(../images/TreeImages/U01.gif) no-repeat left;"><a href="../Personal/ChangPwd.aspx" target="contentFrame">修改密码</a></li>
                                        <li accesskey="023" style="background: url(../images/TreeImages/U01.gif) no-repeat left;"><a href="../Personal/MailSetting.aspx" target="contentFrame">邮件设置</a></li>
                                        <li accesskey="024" style="background: url(../images/TreeImages/U01.gif) no-repeat left;"><a href="../Personal/MyShenPi.aspx" target="contentFrame">常用审批</a></li>
                                        <li accesskey="025" style="background: url(../images/TreeImages/U01.gif) no-repeat left;"><a href="../Personal/MyMoBan.aspx" target="contentFrame">常用模板</a></li>
                                        <li accesskey="026" style="background: url(../images/TreeImages/U01.gif) no-repeat left;"><a href="../Personal/MyPer.aspx" target="contentFrame">我的权限</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="gongwen">
                            <div class="nav-header"><a href="javascript:;" class="ue-clear"><span>工作流程</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li class="bl"><a style="background: url(../images/TreeImages/workflow.gif) no-repeat left;"><span>工作管理</span></a>
                                    <ul>
                                        <li accesskey="074" style="background: url(../images/TreeImages/workflow.gif) no-repeat left;"><a href="../WorkFlow/MyWorkFlow.aspx" target="contentFrame">我的工作</a></li>
                                        <li accesskey="075" style="background: url(../images/TreeImages/workflow.gif) no-repeat left;"><a href="../WorkFlow/NowWorkFlow.aspx" target="contentFrame">代办工作</a></li>
                                        <li accesskey="076" style="background: url(../images/TreeImages/workflow.gif) no-repeat left;"><a href="../WorkFlow/SerchWorkFlow.aspx" target="contentFrame">查询工作</a></li>
                                        <li accesskey="077" style="background: url(../images/TreeImages/workflow.gif) no-repeat left;"><a href="../WorkFlow/HelpWorkFlow.aspx" target="contentFrame">工作监控</a></li>
                                        <li accesskey="078" style="background: url(../images/TreeImages/workflow.gif) no-repeat left;"><a href="../WorkFlow/OkWorkFlow.aspx" target="contentFrame">归档工作</a></li>
                                    </ul>
                                </li>
                                <li class="bl"><a style="background: url(../images/TreeImages/system.gif) no-repeat left;"><span>表单定义</span></a>
                                    <ul>
                                        <li accesskey="079" style="background: url(../images/TreeImages/system.gif) no-repeat left;"><a href="../WorkFlow/DesignForm.aspx" target="contentFrame">表单设计</a></li>
                                        <li accesskey="080" style="background: url(../images/TreeImages/system.gif) no-repeat left;"><a href="../WorkFlow/FormType.aspx" target="contentFrame">表单类别</a></li>
                                    </ul>
                                </li>
                                <li accesskey="081"><a href="../WorkFlow/WorkFlowManage.aspx" style="background: url(../images/TreeImages/erp.gif) no-repeat left;" target="contentFrame"><span style="background: none;">工作流程</span></a></li>
                                <li class="bl"><a style="background: url(../images/TreeImages/erp.gif) no-repeat left;"><span>印章管理</span></a>
                                    <ul>
                                        <li accesskey="082" style="background: url(../images/TreeImages/erp.gif) no-repeat left;"><a href="../WorkFlow/PublicSeal.aspx?Type=公共印章" target="contentFrame">公共印章</a></li>
                                        <li accesskey="083" style="background: url(../images/TreeImages/erp.gif) no-repeat left;"><a href="../WorkFlow/PublicSeal.aspx?Type=私人印章" target="contentFrame">私人印章</a></li>
                                        <li accesskey="084" style="background: url(../images/TreeImages/erp.gif) no-repeat left;"><a href="../WorkFlow/PublicSealLog.aspx?Type=公共印章" target="contentFrame">公章使用记录</a></li>
                                        <li accesskey="085" style="background: url(../images/TreeImages/erp.gif) no-repeat left;"><a href="../WorkFlow/PublicSealLog.aspx?Type=私人印章" target="contentFrame">私章使用记录</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-info">
                            <div class="nav-header"><a href="javascript:;" class="ue-clear"><span>公文收发</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="057"><a href="../TelFile/GetFile.aspx" style="background: url(../images/TreeImages/netdisk.gif) no-repeat left;" target="contentFrame"><span style="background: none;">接收文件</span></a></li>
                                <li accesskey="058"><a href="../TelFile/SendFile.aspx" style="background: url(../images/TreeImages/netdisk.gif) no-repeat left;" target="contentFrame"><span style="background: none;">传阅文件</span></a></li>
                                <li accesskey="F001"><a href="../TelFile/JSFile.aspx" style="background: url(../images/TreeImages/netdisk.gif) no-repeat left;" target="contentFrame"><span style="background: none;">接收文件浏览</span></a></li>
                                <li accesskey="F002"><a href="../TelFile/CYFile.aspx" style="background: url(../images/TreeImages/netdisk.gif) no-repeat left;" target="contentFrame"><span style="background: none;">传阅文件浏览</span></a></li>
                                <li accesskey="F003"><a href="../TelFile/JSDIC.aspx" style="background: url(../images/TreeImages/netdisk.gif) no-repeat left;" target="contentFrame"><span style="background: none;">接收文件分类</span></a></li>
                                <li accesskey="F004"><a href="../TelFile/CYDIC.aspx" style="background: url(../images/TreeImages/netdisk.gif) no-repeat left;" target="contentFrame"><span style="background: none;">传阅文件分类</span></a></li>
                            </ul>
                        </li>
                        <li class="konwledge">
                            <div class="nav-header"><a class="ue-clear"><span>工作管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="027"><a href="../WorkPlan/MyWorkPlan.aspx" style="background: url(../images/TreeImages/work_plan.gif) no-repeat left;" target="contentFrame"><span style="background: none;">我的计划</span></a></li>
                                <li accesskey="028"><a href="../WorkPlan/ManageWorkPlan.aspx" style="background: url(../images/TreeImages/work_plan.gif) no-repeat left;" target="contentFrame"><span style="background: none;">计划管理</span></a></li>
                                <li accesskey="A001"><a href="../WorkPlan/HuiBao.aspx" style="background: url(../images/TreeImages/work_plan.gif) no-repeat left;" target="contentFrame"><span style="background: none;">我的汇报</span></a></li>
                                <li accesskey="A002"><a href="../WorkPlan/HuiBaoOK.aspx" style="background: url(../images/TreeImages/work_plan.gif) no-repeat left;" target="contentFrame"><span style="background: none;">汇报管理</span></a></li>
                            </ul>
                        </li>
                        <li class="agency">
                            <div class="nav-header"><a class="ue-clear"><span>人力资源管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="A003"><a href="../SystemManage/SystemUser.aspx?Type=serch" style="background: url(../images/TreeImages/hrms.gif) no-repeat left;" target="contentFrame"><span style="background: none;">人事档案</span></a></li>
                                <li accesskey="A004"><a href="../HRNew/RenShiHeTong.aspx" style="background: url(../images/TreeImages/hrms.gif) no-repeat left;" target="contentFrame"><span style="background: none;">人事合同</span></a></li>
                                <li class="bl"><a style="background: url(../images/TreeImages/pro.gif) no-repeat left;"><span>人员考核</span></a>
                                    <ul>
                                        <li accesskey="A005" style="background: url(../images/TreeImages/pro.gif) no-repeat left;"><a href="../HRNew/KaoHeXM.aspx" target="contentFrame">考核项目</a></li>
                                        <li accesskey="A006" style="background: url(../images/TreeImages/pro.gif) no-repeat left;"><a href="../HRNew/KaoHeRW.aspx" target="contentFrame">考核任务</a></li>
                                        <li accesskey="A007" style="background: url(../images/TreeImages/pro.gif) no-repeat left;"><a href="../HRNew/KaoHe.aspx" target="contentFrame">考核管理</a></li>
                                    </ul>
                                </li>
                                <li accesskey="A008"><a href="../HRNew/JiangCheng.aspx" style="background: url(../images/TreeImages/score.gif) no-repeat left;" target="contentFrame"><span style="background: none;">奖惩记录</span></a></li>
                                <li class="bl"><a style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><span>个人考勤</span></a>
                                    <ul>
                                        <li accesskey="029" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/ShangXiaBanDengJi.aspx" target="contentFrame">上下班登记</a></li>
                                        <li accesskey="030" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/DengJi.aspx?TypeName=WaiChu" target="contentFrame">外出登记</a></li>
                                        <li accesskey="031" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/DengJi.aspx?TypeName=ChuChai" target="contentFrame">出差登记</a></li>
                                        <li accesskey="032" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/DengJi.aspx?TypeName=JiaBan" target="contentFrame">加班登记</a></li>
                                        <li accesskey="033" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/DengJi.aspx?TypeName=BingJia" target="contentFrame">病假登记</a></li>
                                        <li accesskey="034" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/DengJi.aspx?TypeName=ShiJia" target="contentFrame">事假登记</a></li>
                                    </ul>
                                </li>
                                <li class="bl"><a style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><span>考勤批示</span></a>
                                    <ul>
                                        <li accesskey="035" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/ShenPi.aspx?TypeName=WaiChu" target="contentFrame">外出审批</a></li>
                                        <li accesskey="036" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/ShenPi.aspx?TypeName=ChuChai" target="contentFrame">出差审批</a></li>
                                        <li accesskey="037" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/ShenPi.aspx?TypeName=JiaBan" target="contentFrame">加班审批</a></li>
                                        <li accesskey="038" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/ShenPi.aspx?TypeName=BingJia" target="contentFrame">病假审批</a></li>
                                        <li accesskey="039" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;"><a href="../HR/ShenPi.aspx?TypeName=ShiJia" target="contentFrame">事假审批</a></li>
                                    </ul>
                                </li>
                                <li accesskey="040"><a href="../HR/KaoQinSetting.aspx" style="background: url(../images/TreeImages/person_info.gif) no-repeat left;" target="contentFrame"><span style="background: none;">考勤设置</span></a></li>
                                <li accesskey="041"><a href="../HR/KaoQinMingXi.aspx" style="background: url(../images/TreeImages/attendance.gif) no-repeat left;" target="contentFrame"><span style="background: none;">考勤明细</span></a></li>
                                <li accesskey="042"><a href="../HR/KaoQingChaXunTongJi.aspx" style="background: url(../images/TreeImages/finance.gif) no-repeat left;" target="contentFrame"><span style="background: none;">考勤查询统计</span></a></li>
                            </ul>
                        </li>
                        <li class="email">
                            <div class="nav-header"><a class="ue-clear"><span>办公用品管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="A018"><a href="../Office/OfficeShengQing.aspx" style="background: url(../images/TreeImages/diary.gif) no-repeat left;" target="contentFrame"><span style="background: none;">办公用品申请</span></a></li>
                                <li accesskey="A019"><a href="../Office/Officething.aspx" style="background: url(../images/TreeImages/office_Product.gif) no-repeat left;" target="contentFrame"><span style="background: none;">办公用品管理</span></a></li>
                            </ul>
                        </li>
                        <li class="gdzcgl">
                            <div class="nav-header"><a class="ue-clear"><span>固定资产管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="A020"><a href="../Office/GuDing.aspx" style="background: url(../images/TreeImages/@asset.gif) no-repeat left;" target="contentFrame"><span style="background: none;">固定资产管理</span></a></li>
                                <li accesskey="A021"><a href="../Office/GuDingJiLu.aspx?GDName=" style="background: url(../images/TreeImages/@asset.gif) no-repeat left;" target="contentFrame"><span style="background: none;">资产折旧记录</span></a></li>
                            </ul>
                        </li>
                        <li class="dawsgl">
                            <div class="nav-header"><a class="ue-clear"><span>档案文书管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="A025"><a href="../DocFile/JuanKu.aspx" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">卷库管理</span></a></li>
                                <li accesskey="A026"><a href="../DocFile/DangAn.aspx?JuanKuName=" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">档案管理</span></a></li>
                                <li accesskey="A027"><a href="../DocFile/DangAnDel.aspx" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">档案销毁</span></a></li>
                            </ul>
                        </li>
                        <li class="pxgl">
                            <div class="nav-header"><a class="ue-clear"><span>培训管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="A028"><a href="../DocFile/PeiXun.aspx" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">培训信息</span></a></li>
                                <li accesskey="A029"><a href="../DocFile/PeiXunRiJi.aspx?PeiXunName=" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">培训日志</span></a></li>
                                <li accesskey="A030"><a href="../DocFile/PeiXunXiaoGuo.aspx?PeiXunName=" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">效果评估</span></a></li>
                            </ul>
                        </li>
                        <li class="wlhygl">
                            <div class="nav-header"><a class="ue-clear"><span>网络会议管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="018"><a href="../Meeting/MyMeeting.aspx" style="background: url(../images/TreeImages/meeting.gif) no-repeat left;" target="contentFrame"><span style="background: none;">我的会议</span></a></li>
                                <li accesskey="F005"><a href="../Meeting/MeetingDengJi.aspx" style="background: url(../images/TreeImages/meeting.gif) no-repeat left;" target="contentFrame"><span style="background: none;">会议申请</span></a></li>
                                <li accesskey="019"><a href="../Meeting/Meeting.aspx" style="background: url(../images/TreeImages/meeting.gif) no-repeat left;" target="contentFrame"><span style="background: none;">会议管理</span></a></li>
                                <li accesskey="F006"><a href="../Meeting/MeetingSerch.aspx" style="background: url(../images/TreeImages/meeting.gif) no-repeat left;" target="contentFrame"><span style="background: none;">会议查询</span></a></li>
                            </ul>
                        </li>
                        <li class="zytpgl">
                            <div class="nav-header"><a class="ue-clear"><span>资源调配管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="A031"><a href="../Source/Source.aspx" style="background: url(../images/TreeImages/@infofind.gif) no-repeat left;" target="contentFrame"><span style="background: none;">资源申请</span></a></li>
                                <li accesskey="A032"><a href="../Source/SourceOK.aspx" style="background: url(../images/TreeImages/@infofind.gif) no-repeat left;" target="contentFrame"><span style="background: none;">资源管理</span></a></li>
                            </ul>
                        </li>
                        <li class="clxxgl">
                            <div class="nav-header"><a class="ue-clear"><span>车辆信息管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="F007"><a href="../Car/CarShiYong.aspx" style="background: url(../images/TreeImages/vehicle.gif) no-repeat left;" target="contentFrame"><span style="background: none;">车辆使用申请</span></a></li>
                                <li accesskey="F008"><a href="../Car/CarShiYongOK.aspx" style="background: url(../images/TreeImages/vehicle.gif) no-repeat left;" target="contentFrame"><span style="background: none;">车辆使用管理</span></a></li>
                                <li accesskey="F009"><a href="../Car/CarWeiHu.aspx" style="background: url(../images/TreeImages/vehicle.gif) no-repeat left;" target="contentFrame"><span style="background: none;">车辆维护申请</span></a></li>
                                <li accesskey="F010"><a href="../Car/CarWeiHuOK.aspx" style="background: url(../images/TreeImages/vehicle.gif) no-repeat left;" target="contentFrame"><span style="background: none;">车辆维护管理</span></a></li>
                                <li accesskey="F011"><a href="../Car/CarInfo.aspx" style="background: url(../images/TreeImages/vehicle.gif) no-repeat left;" target="contentFrame"><span style="background: none;">车辆信息管理</span></a></li>
                            </ul>
                        </li>
                        <li class="zzjgxx">
                            <div class="nav-header"><a class="ue-clear"><span>组织机构信息</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="043"><a href="../SystemManage/DanWeiInfo.aspx?Type=serch" style="background: url(../images/TreeImages/@hrms.gif) no-repeat left;" target="contentFrame"><span style="background: none;">单位信息查询</span></a></li>
                                <li accesskey="044"><a href="../SystemManage/BuMenInfo.aspx?Type=serch&DirID=0" style="background: url(../images/TreeImages/@hrms.gif) no-repeat left;" target="contentFrame"><span style="background: none;">部门信息查询</span></a></li>
                                <li accesskey="045"><a href="../SystemManage/SystemUser.aspx?Type=serch" style="background: url(../images/TreeImages/@hrms.gif) no-repeat left;" target="contentFrame"><span style="background: none;">用户信息查询</span></a></li>
                            </ul>
                        </li>
                        <li class="wjwdzx">
                            <div class="nav-header"><a class="ue-clear"><span>文件文档中心</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="046"><a href="../DocCenter/DocCenter.aspx?Type=个人文件&DirID=0" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">个人文件</span></a></li>
                                <li accesskey="047"><a href="../DocCenter/DocCenter.aspx?Type=电子刊物&DirID=0" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">电子刊物</span></a></li>
                                <li accesskey="048"><a href="../DocCenter/DocCenter.aspx?Type=单位文件&DirID=0" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">单位文件</span></a></li>
                                <li accesskey="049"><a href="../DocCenter/DocCenter.aspx?Type=共享文件&DirID=0" style="background: url(../images/TreeImages/file_folder.gif) no-repeat left;" target="contentFrame"><span style="background: none;">共享文件</span></a></li>
                                <li accesskey="050"><a href="../DocCenter/DocCenter.aspx?Type=我的硬盘&DirID=0" style="background: url(../images/TreeImages/netdisk.gif) no-repeat left;" target="contentFrame"><span style="background: none;">我的硬盘</span></a></li>
                                <li accesskey="051"><a href="../DocCenter/DocCenter.aspx?Type=共享硬盘&DirID=0" style="background: url(../images/TreeImages/netdisk.gif) no-repeat left;" target="contentFrame"><span style="background: none;">共享硬盘</span></a></li>
                                <li accesskey="052"><a href="../DocCenter/DocHuiShou.aspx" style="background: url(../images/TreeImages/trash.gif) no-repeat left;" target="contentFrame"><span style="background: none;">回收站</span></a></li>
                            </ul>
                        </li>
                        <li class="xxzhjl">
                            <div class="nav-header"><a class="ue-clear"><span>信息综合交流</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li class="bl"><a style="background: url(../images/TreeImages/bbs2.gif) no-repeat left;"><span>论坛BBS</span></a>
                                    <ul>
                                        <li accesskey="053" style="background: url(../images/TreeImages/bbs2.gif) no-repeat left;"><a href="../BBS/BanKuaiList.aspx" target="contentFrame">论坛BBS</a></li>
                                        <li accesskey="054" style="background: url(../images/TreeImages/bbs2.gif) no-repeat left;"><a href="../BBS/SettingConfig.aspx" target="contentFrame">版块设置</a></li>
                                    </ul>
                                </li>
                                <li class="bl"><a style="background: url(../images/TreeImages/chatroom.gif) no-repeat left;"><span>内部聊天室</span></a>
                                    <ul>
                                        <li accesskey="055" style="background: url(../images/TreeImages/chatroom.gif) no-repeat left;"><a href="../TalkRoom/TalkRoomList.aspx" target="contentFrame">内部聊天室</a></li>
                                        <li accesskey="056" style="background: url(../images/TreeImages/chatroom.gif) no-repeat left;"><a href="../TalkRoom/SettingConfig.aspx" target="contentFrame">参数设置</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="system">
                            <div class="nav-header"><a class="ue-clear"><span>系统管理</span><i class="icon"></i></a></div>
                            <ul class="subnav">
                                <li accesskey="068"><a href="../SystemManage/DanWeiInfo.aspx" style="background: url(../images/TreeImages/@netmeeting.gif) no-repeat left;" target="contentFrame"><span style="background: none;">单位信息管理</span></a></li>
                                <li accesskey="069"><a href="../SystemManage/BuMenInfo.aspx?Type=&DirID=0" style="background: url(../images/TreeImages/@netmeeting.gif) no-repeat left;" target="contentFrame"><span style="background: none;">部门信息管理</span></a></li>
                                <li accesskey="070"><a href="../SystemManage/SystemUser.aspx" style="background: url(../images/TreeImages/@netmeeting.gif) no-repeat left;" target="contentFrame"><span style="background: none;">用户信息管理</span></a></li>
                                <li accesskey="071"><a href="../SystemManage/SystemJiaoSe.aspx" style="background: url(../images/TreeImages/@netmeeting.gif) no-repeat left;" target="contentFrame"><span style="background: none;">角色信息管理</span></a></li>
                                <li accesskey="072"><a href="../SystemManage/RedHeadFile.aspx" style="background: url(../images/TreeImages/score.gif) no-repeat left;" target="contentFrame"><span style="background: none;">红头文件管理</span></a></li>
                                <li accesskey="073"><a href="../SystemManage/SystemLog.aspx" style="background: url(../images/TreeImages/score.gif) no-repeat left;" target="contentFrame"><span style="background: none;">系统日志管理</span></a></li>
                                <li accesskey="074"><a href="../SystemManage/SystemSetting.aspx" style="background: url(../images/TreeImages/test.gif) no-repeat left;" target="contentFrame"><span style="background: none;">系统参数设置</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="content">
                    <iframe src="MyDesk.aspx" id="iframe" name="contentFrame" width="100%" height="100%" frameborder="0"></iframe>
                </div>
            </div>
        </div>
        <div id="ft" class="ue-clear">
            <div class="ft-left">
                <span>政务</span>
                <em>OA</em>
            </div>
            <div class="ft-right">
                <span>Automation</span>
                <em>V2.0&nbsp;2017</em>
            </div>
        </div>
    </div>

    <script src="../JS/jquery.js"></script>
    <script src="../JS/common.js"></script>
    <script src="../JS/core.js"></script>
    <script src="../JS/jquery.dialog.js"></script>
    <script src="../JS/index.js"></script>
    <div style="position: fixed; z-index: 9999; top: 0; left: 0; right: 0; bottom: 0; display: none"></div>
    <div class="ui-dialog-panel" style="display: none; position: fixed; left: 478px; top: 194px;">
        <div class="ui-dialog">
            <div class="ui-dialog-hd" style="cursor: move;">
                <h6><span class="dialog-hd-lc"></span>提示信息<span class="dialog-hd-rc"></span></h6>
                <a href="javascript:;" class="ui-dialog-close ue-state-default"><i></i></a>
            </div>
            <div class="exitDialog ui-dialog-content" style="display: block; width: 400px; height: 200px;">
                <div class="dialog-content">
                    <div class="ui-dialog-icon"></div>
                    <div class="ui-dialog-text">
                        <p class="dialog-content">你确定要退出系统？</p>
                        <p class="tips">如果是请点击“确定”，否则点“取消”</p>

                        <div class="buttons">
                            <input type="button" class="button long2 ok" value="确定">
                            <input type="button" class="button long2 normal" value="取消">
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="ui-dialog-leftYY"></div>
        <div class="ui-dialog-rightYY"></div>
        <div class="ui-dialog-bottomLeft"></div>
        <div class="ui-dialog-bottomRight"></div>
        <div class="ui-dialog-bottomCenter"></div>
    </div>


</body>
</html>
