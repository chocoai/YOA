<%@ Page Language="C#" MasterPageFile="AspNetPager.master" AutoEventWireup="true" MetaDescription="��ʾ����ʾ�������AspNetPager ��ҳ�ظ��ѵ�ǰҳ������ť����������ҳ������ť�е�λ�á�" CodeFile="CurrentPageButtonPosition.aspx.cs" Inherits="CenterCurrentPageButton_Default" Title="���õ�ǰҳ������ťλ��" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main" Runat="Server">

    <div class="text-danger">��ע����ǰ�汾��ͨ������CenterCurrentPageButton="true"ʹ��ǰҳ��ť���еķ�����Ȼ�����ã���CenterCurrentPageButton�����ѱ����Ϊ��ֹ���Ժ�İ汾�н����ٿ��á���
       </div>
        <hr /><b>Ĭ��ֵ����ǰҳ������ťλ�ù̶����䣩</b>��<br />
        <br /><webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: " 
        PageSize="10" RecordCount="299" CurrentPageIndex="19" FirstPageText="��ҳ" LastPageText="βҳ" PrevPageText="��ҳ" NextPageText="��ҳ">
        </webdiyer:AspNetPager><br />
        <hr /><b>��ǰҳ������ť��������������ҳ������ť�Ŀ�ͷ</b>��<br />
        ������ʽ���ã�&lt;webdiyer:AspNetPager <strong>CurrentPageButtonPosition="Beginning"</strong> ... <br />��̷�ʽ���ã�AspNetPager2.CurrentPageButtonPosition=<strong>Wuqi.Webdiyer.PagingButtonPosition.Beginning</strong><br />
        <br /><webdiyer:AspNetPager ID="AspNetPager2" runat="server" Width="100%" ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: " 
        PageSize="10" RecordCount="299" ShowDisabledButtons="false" CurrentPageButtonPosition="Beginning" FirstPageText="��ҳ" LastPageText="βҳ" PrevPageText="��ҳ" NextPageText="��ҳ">
        </webdiyer:AspNetPager><br />
        <hr /><strong>��ǰҳ������ť��������������ҳ������ť���м�</strong>��<br />
        ������ʽ���ã�&lt;webdiyer:AspNetPager <strong>CurrentPageButtonPosition="Center"</strong><br />��̷�ʽ���ã�AspNetPager3.CurrentPageButtonPosition=<b>Wuqi.Webdiyer.PagingButtonPosition.Center</b><br />
        <br /><webdiyer:AspNetPager ID="AspNetPager3" runat="server" Width="100%" ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: " 
        PageSize="10" RecordCount="299" CurrentPageButtonPosition="Center" CurrentPageIndex="15" NumericButtonCount="9" FirstPageText="��ҳ" LastPageText="βҳ" PrevPageText="��ҳ" NextPageText="��ҳ">
        </webdiyer:AspNetPager><br />
        <hr /><strong>��ǰҳ������ť��������������ҳ������ť�Ľ�β</strong>��<br />
        ������ʽ���ã�&lt;webdiyer:AspNetPager ID="AspNetPager4" runat="server" <strong>CurrentPageButtonPosition="End"</strong><br />��̷�ʽ���ã�AspNetPager4.CurrentPageButtonPosition=<strong>Wuqi.Webdiyer.PagingButtonPosition.End</strong><br />
        <br /><webdiyer:AspNetPager ID="AspNetPager4" runat="server" Width="100%" ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: " 
        PageSize="10" RecordCount="299" CurrentPageButtonPosition="End" CurrentPageIndex="19" FirstPageText="��ҳ" LastPageText="βҳ" PrevPageText="��ҳ" NextPageText="��ҳ">
        </webdiyer:AspNetPager>
</asp:Content>

