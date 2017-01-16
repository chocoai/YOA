<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SystemUserView.aspx.cs" Inherits="SystemManage_SystemUserView" %>

<html>
<head>
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script language="javascript">
        function PrintTable() {
            document.getElementById("PrintHide").style.visibility = "hidden"
            print();
            document.getElementById("PrintHide").style.visibility = "visible"
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
                            <li>系统管理</li>
                            <li class="active">查看用户信息</li>
                        </ol>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            &nbsp;&nbsp;&nbsp;
                            <button class="btn btn-primary" onclick="PrintTable()">打印</button>&nbsp;
                    &nbsp;&nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
                </tr>
            </table>
            <table style="width:100%"  class="table table-striped table-hover">
                <tr>
                    <td align="center" colspan="2" >
                        <strong>用户信息</strong></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">用户名：</td>
                    <td style="background-color: #ffffff; height: 25px; padding-left: 5px;">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [<asp:HyperLink ID="HyperLink1" runat="server"
                            ForeColor="Red" NavigateUrl="../LanEmail/LanEmailAdd.aspx">给其发送内部邮件</asp:HyperLink>]</td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">用户密码：</td>
                    <td >
                        <asp:Label ID="Label2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">登录账号：</td>
                    <td >
                        <asp:Label ID="Label3" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">用户编号：</td>
                    <td >
                        <asp:Label ID="Label4" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">所属部门：</td>
                    <td >
                        <asp:Label ID="Label5" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">所属角色：</td>
                    <td >
                        <asp:Label ID="Label6" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">职位：</td>
                    <td >
                        <asp:Label ID="Label7" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">在岗状态：</td>
                    <td >
                        <asp:Label ID="Label8" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">Email地址：</td>
                    <td >
                        <asp:Label ID="Label9" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">是否允许登陆：</td>
                    <td >
                        <asp:Label ID="Label10" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">性别：</td>
                    <td >
                        <asp:Label ID="Label11" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">备注信息：</td>
                    <td >
                        <asp:Label ID="Label12" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" >
                        <strong>人事信息</strong></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">出生日期：</td>
                    <td >
                        <asp:Label ID="Label13" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">民族：</td>
                    <td >
                        <asp:Label ID="Label14" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">身份证号：</td>
                    <td >
                        <asp:Label ID="Label15" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">婚姻状况：</td>
                    <td >
                        <asp:Label ID="Label16" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">政治面貌：</td>
                    <td >
                        <asp:Label ID="Label17" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">籍贯：</td>
                    <td >
                        <asp:Label ID="Label18" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">户口所在地：</td>
                    <td >
                        <asp:Label ID="Label19" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">学历：</td>
                    <td >
                        <asp:Label ID="Label20" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">职称：</td>
                    <td >
                        <asp:Label ID="Label21" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">毕业院校：</td>
                    <td >
                        <asp:Label ID="Label22" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">专业：</td>
                    <td >
                        <asp:Label ID="Label23" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">参加工作时间：</td>
                    <td >
                        <asp:Label ID="Label24" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">加入本单位时间：</td>
                    <td >
                        <asp:Label ID="Label25" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">手机号码：</td>
                    <td >
                        <asp:Label ID="Label26" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">家庭详细住址：</td>
                    <td >
                        <asp:Label ID="Label27" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">岗位变动情况：</td>
                    <td >
                        <asp:Label ID="Label28" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">教育背景：</td>
                    <td >
                        <asp:Label ID="Label29" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">工作简历：</td>
                    <td >
                        <asp:Label ID="Label30" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">社会关系：</td>
                    <td >
                        <asp:Label ID="Label31" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">奖惩记录：</td>
                    <td >
                        <asp:Label ID="Label32" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">职务情况：</td>
                    <td >
                        <asp:Label ID="Label33" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">培训记录：</td>
                    <td >
                        <asp:Label ID="Label34" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">担保记录：</td>
                    <td >
                        <asp:Label ID="Label35" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">劳动合同签订情况：</td>
                    <td >
                        <asp:Label ID="Label36" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">社保缴纳情况：</td>
                    <td >
                        <asp:Label ID="Label37" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">体检记录：</td>
                    <td >
                        <asp:Label ID="Label38" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">备 注：</td>
                    <td >
                        <asp:Label ID="Label39" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">附件：</td>
                    <td >
                        <asp:Label ID="Label40" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
