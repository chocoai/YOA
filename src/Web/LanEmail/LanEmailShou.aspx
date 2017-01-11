<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LanEmailShou.aspx.cs" Inherits="LanEmail_LanEmailShou" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<html>
<head>
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript">
        var dialog;
        function selectUserConditionCallback(returndata) {
            $('#<%=TextBox2.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectStatusConditionCallback(returndata) {
            $('#<%=TextBox3.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
    </script>
</head>
<script language="JavaScript">
    var a;
    function CheckValuePiece() {
        if (window.document.form1.GoPage.value == "") {
            alert("请输入跳转的页码！");
            window.document.form1.GoPage.focus();
            return false;
        }
        return true;
    }
    function CheckAll() {
        if (a == 1) {
            for (var i = 0; i < window.document.form1.elements.length; i++) {
                var e = form1.elements[i];
                e.checked = false;
            }
            a = 0;
        }
        else {
            for (var i = 0; i < window.document.form1.elements.length; i++) {
                var e = form1.elements[i];
                e.checked = true;
            }
            a = 1;
        }
    }
    function CheckDel() {
        var number = 0;
        for (var i = 0; i < window.document.form1.elements.length; i++) {
            var e = form1.elements[i];
            if (e.Name != "CheckBoxAll") {
                if (e.checked == true) {
                    number = number + 1;
                }
            }
        }
        if (number == 0) {
            alert("请选择需要删除的项！");
            return false;
        }
        if (window.confirm("你确认删除吗？")) {
            return true;
        }
        else {
            return false;
        }
    }

    function CheckModify() {
        var Modifynumber = 0;
        for (var i = 0; i < window.document.form1.elements.length; i++) {
            var e = form1.elements[i];
            if (e.Name != "CheckBoxAll") {
                if (e.checked == true) {
                    Modifynumber = Modifynumber + 1;
                }
            }
        }
        if (Modifynumber == 0) {
            alert("请至少选择一项！");
            return false;
        }
        if (Modifynumber > 1) {
            alert("只允许选择一项！");
            return false;
        }

        return true;
    }



</script>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                        <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;内部邮件&nbsp;>>&nbsp;收件箱
                    </td>
                    <td align="right" valign="middle" style="border-bottom: #006633 1px dashed;">
                        <div class="form-group">
                            主题：<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="150px">
                            </asp:TextBox>
                            &nbsp;&nbsp;
                            &nbsp;发送人：<asp:TextBox CssClass="form-control"
                                ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
                            <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>

                            &nbsp;&nbsp;&nbsp;
                            状态：<asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Width="100px"></asp:TextBox>
                            <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPLanEmail&LieName=EmailState&callbackFun=selectStatusConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ImageButton4" OnClick="ImageButton4_Click" CssClass="btn btn-default" runat="server" Text="查询" />&nbsp;
                    <asp:Button ID="ImageButton1" runat="server" CssClass="btn btn-primary" OnClick="ImageButton1_Click" Text="添加" />&nbsp;
                    <asp:Button ID="ImageButton3" runat="server" CssClass="btn btn-danger" OnClientClick="javascript:return CheckDel();" Text="删除" OnClick="ImageButton3_Click" />
                            &nbsp;<asp:Button ID="ImageButton2" CssClass="btn btn-info" runat="server" OnClick="ImageButton2_Click" Text="导出" />&nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
                </tr>
            </table>
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:GridView ID="GVData" CssClass="table-striped table-hover table-condensed" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                            OnRowDataBound="GVData_RowDataBound" PageSize="15"
                            Width="100%">
                            <%--<PagerSettings Mode="NumericFirstLast" Visible="False" />
                    <PagerStyle BackColor="LightSteelBlue" HorizontalAlign="Right" />--%>
                            <HeaderStyle BackColor="#006599" Font-Size="12px" ForeColor="White" Height="20px" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="LabVisible" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ID")%>'
                                            Visible="False"></asp:Label><asp:CheckBox ID="CheckSelect" runat="server" />
                                    </ItemTemplate>
                                    <HeaderStyle Width="20px" />
                                    <HeaderTemplate>
                                        <input id="CheckBoxAll" onclick="CheckAll()" type="checkbox" />
                                    </HeaderTemplate>
                                    <HeaderTemplate>
                                        <input id="CheckBoxAll" onclick="CheckAll()" type="checkbox" />
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="邮件主题">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True"
                                            NavigateUrl='<%# "EmailView.aspx?ID="+ DataBinder.Eval(Container.DataItem, "ID")%>'><%# DataBinder.Eval(Container.DataItem, "EmailTitle")%></asp:HyperLink>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="FromUser" HeaderText="发送人">
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TimeStr" HeaderText="发送时间">
                                    <ItemStyle Width="130px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="EmailState" HeaderText="邮件状态">
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>
                            </Columns>
                            <PagerSettings Visible="False" />
                            <RowStyle HorizontalAlign="Center" />
                            <EmptyDataTemplate>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td align="center" style="border-right: black 1px; border-top: black 1px; border-left: black 1px; border-bottom: black 1px; background-color: whitesmoke;">该列表中暂时无数据！</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td style="border-top: #000000 1px solid; border-bottom: #000000 1px solid">
                       <%-- <webdiyer:AspNetPager ID="AspNetPager1" runat="server"
                             OnPageChanged="AspNetPager1_PageChanged" CurrentPageButtonPosition="Center"
                            Width="100%" HorizontalAlign="center" AlwaysShowFirstLastPageNumber="true" PagingButtonSpacing="10" FirstPageText="首页"
                            LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页">
                        </webdiyer:AspNetPager>--%>

                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" UrlPaging="false" CssClass="pagination" LayoutType="Ul" PagingButtonLayoutType="UnorderedList" PagingButtonSpacing="0" CurrentPageButtonClass="active" PageSize="2" OnPageChanged="AspNetPager1_PageChanged">
        </webdiyer:AspNetPager>
                      
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
