<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UrlPaging.aspx.cs" MetaDescription="��ʾ����ʾ���ʹ��AspNetPager��ҳ�ؼ�ͨ��Url���з�ҳ��"  Inherits="UrlPaging_Default" MasterPageFile="AspNetPager.master" Title="Url��ҳ"%>

<asp:Content runat="server" ContentPlaceHolderID="desc">����������ã�<strong>UrlPaging="true"</strong></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="main">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table table-bordered table-striped">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="�������" />
                <asp:BoundField DataField="orderdate" HeaderText="��������" DataFormatString="{0:d}" />
                <asp:BoundField DataField="companyname" HeaderText="��˾����" />
                <asp:BoundField DataField="employeename" HeaderText="��Ա����" />
            </Columns>
        </asp:GridView>
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" PagingButtonSpacing="8px" onpagechanged="AspNetPager1_PageChanged"
            showcustominfosection="Right" urlpaging="True" width="100%" ShowNavigationToolTip="true" UrlPageIndexName="pageindex"></webdiyer:aspnetpager>
        
    </asp:Content>
