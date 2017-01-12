<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageRiCheng.aspx.cs" Inherits="Work_ManageRiCheng" %>

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
        function selectConditionCallback(returndata) {
            $('#<%=TextBox2.ClientID%>').val(returndata);
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
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>日程安排管理</li>
                        </ol>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            主题：<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="150px"></asp:TextBox>
                            业务员：<asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="100px"></asp:TextBox>
                            <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                            <asp:Button ID="ImageButton4" Text="查询" CssClass="btn btn-default" runat="server" OnClick="ImageButton4_Click" />&nbsp;&nbsp;
                            <asp:Button CssClass="btn btn-info" Text="导出" ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" />
                            &nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;

                        </div>

                    </td>

                </tr>
            </table>

        </div>
        <asp:Panel ID="Panel1" runat="server" Width="100%">
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:GridView ID="GVData" CssClass="table table-striped table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                            OnRowDataBound="GVData_RowDataBound" PageSize="15"
                            Width="100%" GridLines="None">
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
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="主题">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server"
                                            NavigateUrl='<%# "RiChengView.aspx?ID="+ DataBinder.Eval(Container.DataItem, "ID")%>'><%# DataBinder.Eval(Container.DataItem, "TitleStr")%></asp:HyperLink>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="TypeStr" HeaderText="类型"></asp:BoundField>
                                <asp:BoundField DataField="TimeStart" HeaderText="开始时间"></asp:BoundField>
                                <asp:BoundField DataField="TimeEnd" HeaderText="结束时间"></asp:BoundField>
                                <asp:BoundField DataField="TimeTiXing" HeaderText="提醒时间"></asp:BoundField>

                                <asp:BoundField DataField="UserName" HeaderText="业务员"></asp:BoundField>
                            </Columns>
                            <RowStyle HorizontalAlign="Center" Height="25px" />
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
                    <td>
                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" UrlPaging="false" CssClass="pagination" LayoutType="Ul" PagingButtonLayoutType="UnorderedList" PagingButtonSpacing="0" CurrentPageButtonClass="active" PageSize="15" OnPageChanged="AspNetPager1_PageChanged">
                        </webdiyer:AspNetPager>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
