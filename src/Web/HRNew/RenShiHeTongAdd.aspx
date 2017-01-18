<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RenShiHeTongAdd.aspx.cs" Inherits="HRNew_RenShiHeTongAdd" %>

<html>
<head>
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
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
        function selectUserConditionCallback(returndata) {
            $('#<%=txtHeTongUser.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectContractStatusConditionCallback(returndata) {
            $('#<%=txtNowState.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectContractNoConditionCallback(returndata) {
            $('#<%=txtSerils.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selecContractTypeConditionCallback(returndata) {
            $('#<%=txtTypeStr.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJingYeConditionCallback(returndata) {
            $('#<%=txtJingYe.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectBaoMiXieYiConditionCallback(returndata) {
            $('#<%=txtBaoMiXieYi.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectQianYueDateConditionCallback(returndata) {
            $('#<%=txtQianYueDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectManYueDateConditionCallback(returndata) {
            $('#<%=txtManYueDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJianZhengJiGuanConditionCallback(returndata) {
            $('#<%=txtJianZhengJiGuan.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectJianZhengDateConditionCallback(returndata) {
            $('#<%=txtJianZhengDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        
    </script>
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
                            <li>人力资源</li>
                            <li class="active">添加人事合同信息</li>
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
            <table style="width: 100%"  class="table">
                <tr>
                    <td style="width: 170px;" align="right">员工用户：
                    </td>
                    <td >
                        <asp:TextBox ID="txtHeTongUser" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                         <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserConditionCallback',500,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
     
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHeTongUser" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">合同状态：
                    </td>
                    <td >
                        <asp:TextBox ID="txtNowState" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=NowState&callbackFun=selectContractStatusConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
              
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">合同编号：
                    </td>
                    <td >
                        <asp:TextBox ID="txtSerils" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                         <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=Serils&callbackFun=selectContractNoConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">合同类型：
                    </td>
                    <td >
                        <asp:TextBox ID="txtTypeStr" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=TypeStr&callbackFun=selecContractTypeConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">是否有竞业条款：
                    </td>
                    <td >
                        <asp:TextBox ID="txtJingYe" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=JingYe&callbackFun=selectJingYeConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">是否有保密协议：
                    </td>
                    <td >
                        <asp:TextBox ID="txtBaoMiXieYi" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=BaoMiXieYi&callbackFun=selectBaoMiXieYiConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">签约日期：
                    </td>
                    <td >
                        <asp:TextBox ID="txtQianYueDate" runat="server" Width="350px"  CssClass="Wdate" onclick="WdatePicker()" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">满约日期：
                    </td>
                    <td >
                        <asp:TextBox ID="txtManYueDate" runat="server" Width="350px"  CssClass="Wdate" onclick="WdatePicker()" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">鉴证机关：
                    </td>
                    <td >
                        <asp:TextBox ID="txtJianZhengJiGuan" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                        <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPRenShiHeTong&LieName=JianZhengJiGuan&callbackFun=selectJianZhengJiGuanConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">鉴证日期：
                    </td>
                    <td >
                        <asp:TextBox ID="txtJianZhengDate" runat="server" Width="350px"  CssClass="Wdate" onclick="WdatePicker()" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">违约责任：
                    </td>
                    <td >
                        <asp:TextBox ID="txtWeiYueZeRen" CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 170px;" align="right">其他事宜：
                    </td>
                    <td >
                        <asp:TextBox ID="txtBackInfo"  CssClass="form-control" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td align="right" style="width: 170px;">附件：</td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                        </asp:CheckBoxList>&nbsp;
                        <asp:Button ID="ImageButton3" Text="删除文件" CssClass="btn btn-danger" runat="server" CausesValidation="False"
                             OnClick="ImageButton3_Click" />
                        &nbsp; &nbsp;
                <asp:Button ID="ImageButton4"  Text="读取文件" CssClass="btn btn-info" runat="server" CausesValidation="False" OnClick="ImageButton4_Click" />
                        &nbsp; &nbsp;&nbsp;
                <asp:Button ID="ImageButton5" Text="编辑文件" CssClass="btn btn-primary" runat="server" CausesValidation="False"  OnClick="ImageButton5_Click" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px;">上传附件：</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                        <asp:Button ID="ImageButton2" Text="上传" CssClass="btn btn-primary" runat="server" CausesValidation="False" OnClick="ImageButton2_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
