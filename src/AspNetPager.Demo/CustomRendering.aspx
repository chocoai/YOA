<%@ Page Language="C#" AutoEventWireup="true" MetaDescription="��ʾ����ʾ������Զ������ݳ����߼�����ʹ�����ݰ󶨿ؼ�ʱʹ��AspNetPager��ҳ�ؼ���"  CodeFile="CustomRendering.aspx.cs" Inherits="CustomRendering_Default" MasterPageFile="AspNetPager.master" Title="�Զ���������ʾ�߼�"%>

<asp:Content runat="server" ID="content1" ContentPlaceHolderID="main">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" OnPageChanged="AspNetPager1_PageChanged">
    </webdiyer:AspNetPager>

</asp:Content>
