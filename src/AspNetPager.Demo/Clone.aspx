<%@ Page Language="C#" MasterPageFile="AspNetPager.master" AutoEventWireup="true" MetaDescription="��ʾ����ʾ��ο�¡AspNetPager��ҳ�ؼ������Ժ��¼��������" CodeFile="Clone.aspx.cs" Inherits="Clone_Default" Title="��¡���Ժ��¼�" %>
<asp:Content runat="server" ContentPlaceHolderID="desc">
    ֻ������һ��AspNetPager��ҳ�ؼ������Լ��¼����������һ��ҳ�ؼ�ʹ��CloneFrom���Կ�¡�˿ؼ������Լ��¼��������������ظ��������Լ��¼��������<p>����������ã�<strong>CloneFrom="Ҫ��¡��AspNetPager��ҳ�ؼ���ID"</strong></p>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="main" Runat="Server">
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" PagingButtonSpacing="8px" onpagechanged="AspNetPager1_PageChanged"
            showcustominfosection="Left" urlpaging="True" width="100%" ShowNavigationToolTip="true" UrlPageIndexName="pageindex"></webdiyer:aspnetpager>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table table-bordered table-striped">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="�������" />
                <asp:BoundField DataField="orderdate" HeaderText="��������" DataFormatString="{0:d}" />
                <asp:BoundField DataField="companyname" HeaderText="��˾����" />
                <asp:BoundField DataField="employeename" HeaderText="��Ա����" />
            </Columns>
        </asp:GridView>
        <webdiyer:AspNetPager runat="server" ID="AspNetPager2" CloneFrom="aspnetpager1"></webdiyer:AspNetPager>
</asp:Content>

