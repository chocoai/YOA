<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LanEmailYiDel.aspx.cs" Inherits="LanEmail_LanEmailYiDel" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<html>
	<head>
		<title>政务OA</title>
  <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
</head>
<SCRIPT LANGUAGE="JavaScript">
		  		  var a;    
          function CheckValuePiece(){
           if(window.document.form1.GoPage.value == "")
            {
              alert("请输入跳转的页码！");
              window.document.form1.GoPage.focus();
              return false; 
            }
           return true;
           }
           function CheckAll(){            
            if(a==1)
            {
            for(var i=0;i<window.document.form1.elements.length;i++)
               {                
                  var e = form1.elements[i];
                  e.checked =false;                  
               }
               a=0;
           }       
           else
           {
                for(var i=0;i<window.document.form1.elements.length;i++)
               {                
                  var e = form1.elements[i];
                  e.checked =true;                  
               }
               a=1;
           }     
         }
           function CheckDel(){
             var number=0;
             for(var i=0;i<window.document.form1.elements.length;i++)
               {
                  var e = form1.elements[i];
                  if (e.Name != "CheckBoxAll")
                  {
                    if(e.checked==true)
                    {
                        number=number+1;
                    }
                  }
               }
               if(number==0)
                {
                  alert("请选择需要删除的项！");
                  return false;
                }
               if (window.confirm("你确认删除吗？"))
				{
				  return true;
				}
				else
				{
				  return false;
				}
             } 
             function CheckHuiFu(){
             var number=0;
             for(var i=0;i<window.document.form1.elements.length;i++)
               {
                  var e = form1.elements[i];
                  if (e.Name != "CheckBoxAll")
                  {
                    if(e.checked==true)
                    {
                        number=number+1;
                    }
                  }
               }
               if(number==0)
                {
                  alert("请选择需要恢复的项！");
                  return false;
                }
               if (window.confirm("你确认恢复选定的项吗？"))
				{
				  return true;
				}
				else
				{
				  return false;
				}
             } 
             
             function CheckModify(){
             var Modifynumber=0;
             for(var i=0;i<window.document.form1.elements.length;i++)
               {
                  var e = form1.elements[i];
                  if (e.Name != "CheckBoxAll")
                  {
                    if(e.checked==true)
                    {
                        Modifynumber=Modifynumber+1;
                    }
                  }
               }
               if(Modifynumber==0)
                {
                  alert("请至少选择一项！");
                  return false;
                }
                if(Modifynumber>1)
                {
                  alert("只允许选择一项！");
                  return false;
                }
               
				  return true;							
             }
             
             
             
		</SCRIPT>  
<body>
    <form id="form1" runat="server">
    <div>    
     <table style="width: 100%" border="0" cellpadding="0" cellspacing="0">    
          <tr>
                    <td colspan="2" valign="middle" style="height: 30px;" >
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>内部邮件</li>
                            <li class="active">已删除</li>
                        </ol>

                    </td>
                </tr>        
            <tr>
                <td  colspan="2"  class="filter_box" >
                    <div class="form-group">
                    查询：<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="200px"></asp:TextBox>
                    <asp:Button CssClass="btn btn-default"
                        ID="ImageButton4" runat="server" 
                        OnClick="ImageButton4_Click"  Text="查询" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ImageButton1" Text="添加" runat="server"  OnClick="ImageButton1_Click"  CssClass="btn btn-primary"  />&nbsp;
                    <asp:Button ID="ImageButton5" Text="恢复" runat="server" OnClientClick="javascript:return CheckHuiFu();"  CssClass="btn btn-warning"   OnClick="ImageButton5_Click" />&nbsp;
                    <asp:Button ID="ImageButton3" Text="删除" runat="server" OnClientClick="javascript:return CheckDel();"  CssClass="btn btn-danger"   OnClick="ImageButton3_Click" />
                    &nbsp;<asp:Button ID="ImageButton2"  Text="导出" runat="server" OnClick="ImageButton2_Click" CssClass="btn btn-info"   />
                    <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                         </div>
                </td>
            </tr>
        </table>
    <table style="width: 100%">            
        <tr>
            <td ><asp:GridView ID="GVData"  CssClass="table table-striped table-hover"  runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                   OnRowDataBound="GVData_RowDataBound" PageSize="15"
                    Width="100%" GridLines="None">
                    <HeaderStyle BackColor="#006599" Font-Size="12px" ForeColor="White" Height="20px" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="LabVisible" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ID")%>'
                                    Visible="False"></asp:Label><asp:CheckBox ID="CheckSelect" runat="server" />
                            </ItemTemplate>
                            <HeaderStyle Width="20px" />
                            <HeaderTemplate>
                                <input id="CheckBoxAll" onclick="CheckAll()"  type="checkbox" />
                            </HeaderTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="邮件主题">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server"  
                                    NavigateUrl='<%# "EmailView.aspx?ID="+ DataBinder.Eval(Container.DataItem, "ID")%>'><%# DataBinder.Eval(Container.DataItem, "EmailTitle")%></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="FromUser" HeaderText="发送人" >                           
                            <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TimeStr" HeaderText="发送时间" >                            
                            <ItemStyle Width="130px" />
                        </asp:BoundField> 
                        <asp:BoundField DataField="EmailState" HeaderText="邮件状态" >                            
                            <ItemStyle Width="100px" />
                        </asp:BoundField> 
                    </Columns>
                     <RowStyle HorizontalAlign="Left" Height="25px" />
                <EmptyDataTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="center">
                                该列表中暂时无数据！</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                </asp:GridView>
                </td>
        </tr>
        <tr>
            <td >
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" UrlPaging="false" CssClass="pagination" LayoutType="Ul" PagingButtonLayoutType="UnorderedList" PagingButtonSpacing="0" CurrentPageButtonClass="active" PageSize="15" OnPageChanged="AspNetPager1_PageChanged">
                        </webdiyer:AspNetPager>
            </td>
        </tr>
        </table>
        
    </div>
    </form>
</body>
</html>