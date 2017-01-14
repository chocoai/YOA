<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShenPi.aspx.cs" Inherits="HR_ShenPi" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
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
                  alert("请选择需要审批的项！");
                  return false;
                }
               if (window.confirm("你确认将选中项设置为未通过吗？"))
				{
				  return true;
				}
				else
				{
				  return false;
				}
             } 
             function CheckDel1(){
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
                  alert("请选择需要审批的项！");
                  return false;
                }
               if (window.confirm("你确认将选中项设置为通过吗？"))
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
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>考勤管理</li>
                            <li class="active">考勤审批</li>
                        </ol>

                    </td>
                </tr>         
            <tr>
               <td colspan="2" class="filter_box">
                        <div class="form-group">
                    查询：<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"  Width="100px"></asp:TextBox>
                            <asp:Button ID="ImageButton4" Text="查询"  CssClass="btn btn-default"  runat="server"  OnClick="ImageButton4_Click" />&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="ImageButton1" runat="server" CssClass="btn btn-success"  Text="通过"   OnClientClick="javascript:return CheckDel1();"  OnClick="ImageButton1_Click" />&nbsp;
                    &nbsp;
                    <asp:Button ID="ImageButton3" CssClass="btn btn-danger"  Text="拒绝"  runat="server" OnClientClick="javascript:return CheckDel();" OnClick="ImageButton3_Click" />&nbsp;
                    &nbsp;<asp:Button ID="ImageButton2" CssClass="btn btn-info"  Text="导出"  runat="server"  OnClick="ImageButton2_Click" />
                   <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                             </div>
                    </td>
            </tr>
        </table>
        
    </div>
        <table style="width: 100%">
            <tr>
            <td ><asp:GridView ID="GVData"  CssClass="table table-striped table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
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
                         <asp:BoundField DataField="UserName" HeaderText="申请人" >
                        </asp:BoundField>
                         <asp:BoundField DataField="ShenPiRen" HeaderText="审批人" >
                        </asp:BoundField>     
                       <asp:BoundField DataField="ShenQingTime" HeaderText="申请时间" >
                        </asp:BoundField>
                        <asp:BoundField DataField="BackInfo" HeaderText="申请原因" >
                        </asp:BoundField>
                        <asp:BoundField DataField="StartTime" HeaderText="开始时间" >
                        </asp:BoundField>
                        <asp:BoundField DataField="EndTime" HeaderText="结束时间" >
                        </asp:BoundField>
                        <asp:BoundField DataField="StateNow" HeaderText="状态" >
                        </asp:BoundField>
                    </Columns>
                    <PagerSettings Visible="False" />
                    <RowStyle HorizontalAlign="Center" Height="25px" />
                <EmptyDataTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="center" >
                                该列表中暂时无数据！</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                </asp:GridView>
                </td>
        </tr>
        <tr>
            <td>
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" UrlPaging="false" CssClass="pagination" LayoutType="Ul" PagingButtonLayoutType="UnorderedList" PagingButtonSpacing="0" CurrentPageButtonClass="active" PageSize="15" OnPageChanged="AspNetPager1_PageChanged">
                    </webdiyer:AspNetPager>
                </td>
        </tr>
        </table>
    </form>
</body>
</html>