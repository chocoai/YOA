﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KaoQingChaXunTongJi.aspx.cs" Inherits="HR_KaoQingChaXunTongJi" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
        <script src="../My97DatePicker/WdatePicker.js"></script>
    <link href="../My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
        <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript">
        var dialog;
        function selectDepartConditionCallback(returndata) {
            $('#<%=TextBox1.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectStartDateConditionCallback(returndata) {
            $('#<%=TextBox2.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectEndDateConditionCallback(returndata) {
            $('#<%=TextBox3.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
    </script>
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
                            <li class="active">考勤统计</li>
                        </ol>
                    </td>
                </tr>    
         <tr>
               <td colspan="2" class="filter_box">
                        <div class="form-group">
                 &nbsp; &nbsp; 所属部门：<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="100px"></asp:TextBox>
                             <a onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPBuMen&LieName=BuMenName&callbackFun=selectDepartConditionCallback',350,400)"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                           &nbsp; 起至日期：<asp:TextBox ID="TextBox2" runat="server"
                             Width="80px" CssClass="form-control Wdate" onclick="WdatePicker()"></asp:TextBox>
                    ~
                    <asp:TextBox ID="TextBox3" runat="server"  Width="80px" CssClass="form-control Wdate" onclick="WdatePicker()"></asp:TextBox>
      
                    <asp:Button
                        ID="ImageButton4" runat="server" 
                        OnClick="ImageButton4_Click" Text="查询" CssClass="btn btn-default" />&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;<asp:Button ID="ImageButton2" runat="server"  Text="导出" CssClass="btn btn-info" OnClick="ImageButton2_Click" />
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
             </div>
                    </td>
         </tr>
        </table>
        
    </div>
        <table style="width: 100%">
            <tr>
            <td ><asp:GridView ID="GVData" runat="server" CssClass="table table-striped table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                     OnRowDataBound="GVData_RowDataBound" PageSize="15"
                    Width="100%" GridLines="None">
                    <HeaderStyle BackColor="#006599" Font-Size="12px" ForeColor="White" Height="20px" />
                    <Columns>
                         <asp:BoundField DataField="UserName" HeaderText="用户名" >                         
                        </asp:BoundField>                        
                        <asp:BoundField DataField="Department" HeaderText="部门" >
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="正常">
                            <ItemTemplate>
                                <asp:Label ID="Label1" ToolTip='<%# DataBinder.Eval(Container.DataItem, "UserName") %>' runat="server"  ForeColor="Blue"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="迟到">                            
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server"  ForeColor="Red"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="早退">                            
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server"  ForeColor="Red"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="未登记">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server"   ForeColor="Blue"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="工作日数">
                            <ItemTemplate>
                                <asp:Label ID="Label44" runat="server"   ForeColor="Blue"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>                    
                    </Columns>
                    <PagerSettings Visible="False" />
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
            <td>
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" UrlPaging="false" CssClass="pagination" LayoutType="Ul" PagingButtonLayoutType="UnorderedList" PagingButtonSpacing="0" CurrentPageButtonClass="active" PageSize="15" OnPageChanged="AspNetPager1_PageChanged">
                    </webdiyer:AspNetPager>
                </td>
        </tr>
        </table>
    </form>
</body>
</html>