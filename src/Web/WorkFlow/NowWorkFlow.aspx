<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NowWorkFlow.aspx.cs" Inherits="WorkFlow_NowWorkFlow" %>

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
        function selectNameConditionCallback(returndata) {
            $('#<%=TextBox1.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectFormConditionCallback(returndata) {
            $('#<%=TextBox2.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectCreaterConditionCallback(returndata) {
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
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>工作流程</li>
                            <li class="active">待办工作</li>
                        </ol>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="filter_box">
                        <div class="form-group">
                            工作名称：<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="100px"></asp:TextBox>
                            <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPWorkToDo&LieName=WorkName&callbackFun=selectNameConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                            表单：<asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="100px"></asp:TextBox>
                            <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPWorkToDo&LieName=FormName&callbackFun=selectFormConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                            创建人：<asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Width="100px"></asp:TextBox>
                            <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectCreaterConditionCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                            <asp:Button ID="ImageButton4" OnClick="ImageButton4_Click" CssClass="btn btn-default" runat="server" Text="查询" />&nbsp;
                            &nbsp;<asp:Button ID="ImageButton2" CssClass="btn btn-info" runat="server" OnClick="ImageButton2_Click" Text="导出" />&nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
                </tr>
            </table>

        </div>
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
                            <asp:TemplateField HeaderText="工作名称">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server"
                                        NavigateUrl='<%# "WorkView.aspx?ID="+ DataBinder.Eval(Container.DataItem, "ID")%>'><%# DataBinder.Eval(Container.DataItem, "WorkName")%></asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="FormName" HeaderText="所用表单"></asp:BoundField>
                            <asp:BoundField DataField="UserName" HeaderText="创建人"></asp:BoundField>
                            <asp:BoundField DataField="TimeStr" HeaderText="创建时间"></asp:BoundField>
                            <asp:TemplateField HeaderText="节点名称">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink11" runat="server" Target="_blank"
                                        NavigateUrl='<%# "JustShowWorkFlow.aspx?ID="+ DataBinder.Eval(Container.DataItem, "WorkFlowID")%>'><%# DataBinder.Eval(Container.DataItem, "JieDianName")%></asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="StateNow" HeaderText="当前状态"></asp:BoundField>
                            <asp:TemplateField HeaderText="办理">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink2" runat="server"
                                        NavigateUrl='<%# "WorkToDo.aspx?ID="+ DataBinder.Eval(Container.DataItem, "ID") %>' ForeColor="Blue">[办理]</asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings Visible="False" />
                         <RowStyle HorizontalAlign="Left" Height="25px" />
                        <EmptyDataTemplate>
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td>该列表中暂时无数据！</td>
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
    </form>
</body>
</html>
