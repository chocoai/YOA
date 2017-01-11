<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PagedRepeater.aspx.cs"  MetaDescription="��ʾ����ʾ���ʹ��AspNetPager��ҳ�ؼ���Repeater�ؼ����з�ҳ��" Inherits="PagedRepeater_Default" MasterPageFile="AspNetPager.master" Title="Repeater��ҳʾ��" %>

<asp:Content runat="server" ContentPlaceHolderID="main">
        <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
        <table width="100%" class="table table-bordered table-striped table-hover">
        <tr><th style="width:15%">�������</th><th style="width:15%">��������</th><th style="width:30%">��˾����</th><th style="width:20%">�ͻ����</th><th style="width:20%">��Ա����</th></tr>
        </HeaderTemplate>
        <ItemTemplate>
        <tr>
        <td><%#DataBinder.Eval(Container.DataItem,"orderid")%></td>
        <td><%#DataBinder.Eval(Container.DataItem,"orderdate","{0:d}")%></td>
        <td><%#DataBinder.Eval(Container.DataItem, "companyname")%></td>
        <td><%#DataBinder.Eval(Container.DataItem,"customerid")%></td>
        <td><%#DataBinder.Eval(Container.DataItem,"employeename")%></td>
        </tr>
        </ItemTemplate>
        <FooterTemplate>
        </table>
        </FooterTemplate>
        </asp:Repeater>
    
    <div class="pull-right">
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" UrlPaging="true" CssClass="pagination" LayoutType="Ul" PagingButtonLayoutType="UnorderedList" PagingButtonSpacing="0" CurrentPageButtonClass="active" PageSize="12" OnPageChanged="AspNetPager1_PageChanged">
        </webdiyer:AspNetPager></div>
</asp:Content>