<%@ Page Language="C#" AutoEventWireup="true" MetaDescription="��ʾ����ʾAspNetPager������Ĺ��ܣ���������ʶAspNetPager��ҳ�ؼ����˽����Ĺ���ԭ��" CodeFile="Basic.aspx.cs" Inherits="Basic_Default" MasterPageFile="AspNetPager.master" Title="��������" %>

<asp:Content runat="server" ContentPlaceHolderID="desc">
    ҪʹAspNetPager�������У�ֻ��Ҫ��������<strong>RecordCount</strong>���Ե�ֵ��������Ҫ��д<strong>PageChanged</strong>�¼��������<p>�������ķ�ҳ��ť����ʵ�ʵ�����Ч����</p>
</asp:Content>
<asp:Content runat="server" ID="content1" ContentPlaceHolderID="main">
<p><asp:Label runat="server" ID="label1" ForeColor="red" EnableViewState="false"></asp:Label>
<br /><asp:Label runat="server" ID="label2" ForeColor="red" EnableViewState="false"></asp:Label></p>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="ȡ����ҳ�¼�" />��ѡ�д˸�ѡ��ֻ����PageChanging�¼�����������PageChanged�¼���
    <p>��ҳ�ؼ�ʵ����ʾ������Ч����</p>
    <webdiyer:aspnetpager id="AspNetPager1" runat="server" 
        OnPageChanging="AspNetPager1_PageChanging" onpagechanged="AspNetPager1_PageChanged" CurrentPageButtonPosition="Center"
    Width="100%" HorizontalAlign="center" AlwaysShowFirstLastPageNumber="true" PagingButtonSpacing="10" FirstPageText="��ҳ" 
        LastPageText="βҳ" NextPageText="��һҳ" PrevPageText="��һҳ"></webdiyer:aspnetpager>

    <p>��¡�ķ�ҳ�ؼ���</p>
    <div><webdiyer:aspnetpager id="AspNetPager2" runat="server" CloneFrom="AspNetPager1"></webdiyer:aspnetpager></div>
  
</asp:Content>