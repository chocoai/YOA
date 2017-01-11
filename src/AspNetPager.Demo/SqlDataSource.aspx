<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDataSource.aspx.cs" MetaDescription="��ʾ����ʾ���ʹ��AspNetPager��ҳ�ؼ���SqlDataSource�ؼ����з�ҳ��"  Inherits="DataSources_Default" MasterPageFile="AspNetPager.master" Title="SqlDataSource��ҳʾ��"%>

<asp:Content runat="server" ID="content1" ContentPlaceHolderID="main">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
        <table width="100%" class="table table-bordered table-striped">
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
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" Width="100%" CssClass="pagination" LayoutType="Ul" PagingButtonLayoutType="UnorderedList" PagingButtonSpacing="0" CurrentPageButtonClass="active"></webdiyer:aspnetpager>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SqlConnection %>"
        SelectCommand="<%$ AppSettings:pagedSPName %>" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="AspNetPager1" DefaultValue="1" Name="startIndex"
                PropertyName="StartRecordIndex" Type="Int32" />
            <asp:ControlParameter ControlID="AspNetPager1" DefaultValue="10" Name="endIndex"
                PropertyName="EndRecordIndex" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>
