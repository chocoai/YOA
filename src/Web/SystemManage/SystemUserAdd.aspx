<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SystemUserAdd.aspx.cs" Inherits="SystemManage_SystemUserAdd" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">  
         <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
        <script src="../My97DatePicker/WdatePicker.js"></script>
    <link href="../My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
         <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var dialog;
        function selectDepartConditionCallback(returndata) {
            $('#<%=TextBox5.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectRoleConditionCallback(returndata) {
            $('#<%=TextBox6.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectTitleConditionCallback(returndata) {
            $('#<%=TextBox7.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectOnlineConditionCallback(returndata) {
            $('#<%=TextBox8.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectSexConditionCallback(returndata) {
            $('#<%=TextBox10.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectNationConditionCallback(returndata) {
            $('#<%=TextBox13.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectMarrierConditionCallback(returndata) {
            $('#<%=TextBox15.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectPolicyConditionCallback(returndata) {
            $('#<%=TextBox16.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectBorthPlaceConditionCallback(returndata) {
            $('#<%=TextBox17.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectDegreeConditionCallback(returndata) {
            $('#<%=TextBox19.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectWorkLevelConditionCallback(returndata) {
            $('#<%=TextBox20.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectSchoolConditionCallback(returndata) {
            $('#<%=TextBox21.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectProfesionConditionCallback(returndata) {
            $('#<%=TextBox22.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
    </script>
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
                            <li>系统管理</li>
                            <li class="active">添加用户</li>
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
            <td align="center" colspan="2">
                <strong>用户信息</strong></td>
        </tr>
        
        <tr>
            <td align="right" style="width: 170px;" >
                用户名：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                用户密码：</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="350px" Height="23px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                登录账号：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                用户编号：</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                所属部门：</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPBuMen&LieName=BuMenName&callbackFun=selectDepartConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                所属角色：</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPJiaoSe&LieName=JiaoSeName&callbackFun=selectRoleConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                职位：</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=ZhiWei&callbackFun=selectTitleConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                在岗状态：</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=ZaiGang&callbackFun=selectOnlineConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                Email地址：</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                是否允许登陆：</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                性别：</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=Sex&callbackFun=selectSexConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                备注信息：</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <strong>人事信息</strong></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                出生日期：</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Width="350px"  CssClass="Wdate" onclick="WdatePicker()"></asp:TextBox>
             </td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                民族：</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=MingZu&callbackFun=selectNationConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                身份证号：</td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                婚姻状况：</td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=HunYing&callbackFun=selectMarrierConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                政治面貌：</td>
            <td>
                <asp:TextBox ID="TextBox16" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=ZhengZhiMianMao&callbackFun=selectPolicyConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                籍贯：</td>
            <td>
                <asp:TextBox ID="TextBox17" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&callbackFun=selectBorthPlaceConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                户口所在地：</td>
            <td>
                <asp:TextBox ID="TextBox18" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                学历：</td>
            <td>
                <asp:TextBox ID="TextBox19" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=XueLi&callbackFun=selectDegreeConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                职称：</td>
            <td>
                <asp:TextBox ID="TextBox20" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=ZhiCheng&callbackFun=selectWorkLevelConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                毕业院校：</td>
            <td>
                <asp:TextBox ID="TextBox21" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=BiYeYuanXiao&callbackFun=selectSchoolConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                专业：</td>
            <td>
                <asp:TextBox ID="TextBox22" runat="server" Width="350px"></asp:TextBox>
                <img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPUser&LieName=ZhuanYe&callbackFun=selectProfesionConditionCallback',350,400);"
                    src="../images/Button/search.gif" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                参加工作时间：</td>
            <td>
                <asp:TextBox ID="TextBox23" runat="server" Width="350px"  CssClass="Wdate" onclick="WdatePicker()"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                加入本单位时间：</td>
            <td>
                <asp:TextBox ID="TextBox24" runat="server" Width="350px" CssClass="Wdate" onclick="WdatePicker()"></asp:TextBox>
               </td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                手机号码：</td>
            <td>
                <asp:TextBox ID="TextBox25" runat="server" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                家庭详细住址：</td>
            <td>
                <asp:TextBox ID="TextBox26" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                岗位变动情况：</td>
            <td>
                <asp:TextBox ID="TextBox27" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                教育背景：</td>
            <td>
                <asp:TextBox ID="TextBox28" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                工作简历：</td>
            <td>
                <asp:TextBox ID="TextBox29" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                社会关系：</td>
            <td>
                <asp:TextBox ID="TextBox30" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                奖惩记录：</td>
            <td>
                <asp:TextBox ID="TextBox31" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                职务情况：</td>
            <td>
                <asp:TextBox ID="TextBox32" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                培训记录：</td>
            <td>
                <asp:TextBox ID="TextBox33" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                担保记录：</td>
            <td>
                <asp:TextBox ID="TextBox34" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                劳动合同签订情况：</td>
            <td>
                <asp:TextBox ID="TextBox35" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                社保缴纳情况：</td>
            <td>
                <asp:TextBox ID="TextBox36" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                体检记录：</td>
            <td>
                <asp:TextBox ID="TextBox37" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                备 注：</td>
            <td>
                <asp:TextBox ID="TextBox38" runat="server" Height="75px" TextMode="MultiLine" Width="350px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                附件：</td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                </asp:CheckBoxList>&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="False"
                    ImageAlign="AbsMiddle" ImageUrl="../images/Button/DelFile.jpg" OnClick="ImageButton3_Click" /></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                上传附件：</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="AbsMiddle" ImageUrl="../images/Button/UpLoad.jpg" OnClick="ImageButton2_Click" CausesValidation="False" /></td>
        </tr>
        </table></div>
    </form>
</body>
</html>