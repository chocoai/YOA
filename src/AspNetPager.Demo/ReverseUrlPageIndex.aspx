<%@ Page Language="C#" MasterPageFile="AspNetPager.master" MetaDescription="��ʾ����ʾ���ʹ��AspNetPager��ҳ�ؼ�����Url�����ҳ��"  AutoEventWireup="true" CodeFile="ReverseUrlPageIndex.aspx.cs" Inherits="ReverseUrlPageIndex_Default" Title="Url�����ҳ" %>
<asp:Content runat="server" ContentPlaceHolderID="desc">
    ����������ã�<strong>UrlPaging="true" ReverseUrlPageIndex="true"</strong> <p><strong>ע��</strong>��ʾ���л�����˵�������ʹ���һҳ������ҳ��ʾ��ͬ�ļ�¼�����繲��101�����ݣ�ÿҳ��ʾ10������Ĭ�����һҳ��ֻ��һ�����ݣ�ʹ�ø�ʾ���еķ���������ʹ���һҳͬ����ʾʮ����¼�������ּ�¼��ǰһҳ�ظ���</p>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="main" Runat="Server">
   <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" PagingButtonSpacing="8px" onpagechanged="AspNetPager1_PageChanged"
            showcustominfosection="Right" urlpaging="True" width="100%" ShowNavigationToolTip="true" UrlPageIndexName="page" ReverseUrlPageIndex="true" PageIndexBoxType="DropDownList"></webdiyer:aspnetpager>
        <br /><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table table-bordered table-striped">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="�������" />
                <asp:BoundField DataField="orderdate" HeaderText="��������" DataFormatString="{0:d}" />
                <asp:BoundField DataField="companyname" HeaderText="��˾����" />
                <asp:BoundField DataField="employeename" HeaderText="��Ա����" />
            </Columns>
        </asp:GridView>
        <br />
        <webdiyer:AspNetPager runat="server" ID="AspNetPager2" CloneFrom="aspnetpager1"></webdiyer:AspNetPager>
</asp:Content>

