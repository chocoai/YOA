<%@ Page Language="C#" MasterPageFile="AspNetPager.master" MetaDescription="��ʾ����ʾ���ʹ���Զ���AspNetPager��ҳ�ؼ��ķ�ҳ������ť�ı�����ʽ��" AutoEventWireup="true" CodeFile="ButtonsFormat.aspx.cs" Inherits="ButtonsFormat_Default" Title="��ʽ��������ť" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" Runat="Server">
        <asp:DataList ID="DataList1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="2" Width="100%">
        <ItemStyle Width="50%"/>
<ItemTemplate>
������ţ�<%#DataBinder.Eval(Container.DataItem,"orderid")%>&nbsp;&nbsp;&nbsp;&nbsp;
�������ڣ�<font color="blue"><%#DataBinder.Eval(Container.DataItem,"orderdate","{0:d}")%></font><br>
��˾���ƣ�<%#DataBinder.Eval(Container.DataItem,"companyname")%><br>
��Ա������<%#DataBinder.Eval(Container.DataItem,"employeename")%><br>
<hr>
</ItemTemplate>
        </asp:DataList>
    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center"  PagingButtonSpacing="0" NumericButtonCount="8" onpagechanged="AspNetPager1_PageChanged"
        width="100%"  PageIndexBoxStyle="width:19px" FirstPageText="����ҳ��" LastPageText="��βҳ��" NextPageText="����ҳ��" PrevPageText="��ǰҳ��" NumericButtonTextFormatString="��{0}��"
        TextAfterPageIndexBox="ҳ" TextBeforePageIndexBox="ת����"  CustomInfoHTML="Page  <font color='red'><b>%CurrentPageIndex%</b></font> of  %PageCount%&nbsp;&nbsp;Order %StartRecordIndex%-%EndRecordIndex%"></webdiyer:aspnetpager>
</asp:Content>

