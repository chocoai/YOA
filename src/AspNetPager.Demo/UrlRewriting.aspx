<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UrlRewriting.aspx.cs"  MetaDescription="��ʾ����ʾ��ʹ��AspNetPager��url��ҳ��ʽʱ��дurl��" Inherits="UrlRewriting_Default" MasterPageFile="AspNetPager.master" Title="Url��д"%>
<asp:Content runat="server" ContentPlaceHolderID="desc">
    ��Ҫ���õ���������У�<strong>EnableUrlRewriting="true" UrlRewritePattern="urlrewriting/page_{0}.aspx"</strong>��
<div class="text-danger">ע�⣺����EnableUrlRewriting="true"���Զ�����UrlPaging="true"��Ĭ��Ϊfalse���������ٵ������ø����Ե�ֵ��</div>
</asp:Content>
<asp:Content runat="server" ID="content1" ContentPlaceHolderID="main">
        <asp:DataList ID="DataList1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="2" Width="100%">
        <ItemStyle Width="50%"/>
<ItemTemplate>
������ţ�<%#DataBinder.Eval(Container.DataItem,"orderid")%>&nbsp;&nbsp;&nbsp;&nbsp;
�������ڣ�<font color="red"><%#DataBinder.Eval(Container.DataItem,"orderdate","{0:d}")%></font><br>
��˾���ƣ�<%#DataBinder.Eval(Container.DataItem,"companyname")%><br>
��Ա������<%#DataBinder.Eval(Container.DataItem,"employeename")%><br>
<hr>
</ItemTemplate>
        </asp:DataList>
        <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" width="100%" ShowPageIndexBox="Always"
        EnableUrlRewriting="true" UrlRewritePattern="urlrewriting/page_{0}.aspx" FirstPageUrlRewritePattern="urlrewriting.aspx" OnPageChanged="AspNetPager1_PageChanged" NumericButtonTextFormatString="-{0}-"></webdiyer:aspnetpager>
    
</asp:Content>