<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KaoQinMingXi.aspx.cs" Inherits="HR_KaoQinMingXi" %>
<html>
	<head>
		<title>企业OA综合管理平台</title>
        <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
         <script src="../My97DatePicker/WdatePicker.js"></script>
    <link href="../My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
    <script type="text/javascript">
        var dialog;
        function selectUserConditionCallback(returndata) {
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
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
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
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;考勤管理&nbsp;>>&nbsp;考勤明细
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    &nbsp;
                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../images/Button/BtnReport.jpg" ImageAlign="AbsMiddle" OnClick="ImageButton2_Click" /><img src="../images/Button/JianGe.jpg" /><img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
         <tr>
             <td colspan="2" style="border-bottom: #006633 1px dashed; height: 30px" valign="middle">
                 &nbsp; &nbsp; 用户名：<asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="80px"></asp:TextBox><img
                     class="HerCss" onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserConditionCallback',350,400)"
                     src="../images/Button/search.gif" />&nbsp; 起至日期：<asp:TextBox ID="TextBox2" runat="server"
                         Height="20px" Width="80px"  CssClass="Wdate" onclick="WdatePicker()"></asp:TextBox>
                 ~
                 <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="80px" CssClass="Wdate" onclick="WdatePicker()"></asp:TextBox>
             
                 <asp:ImageButton ID="ImageButton4" runat="server" ImageAlign="AbsMiddle" ImageUrl="../images/Button/BtnSerch.jpg"
                     OnClick="ImageButton4_Click" />
                 &nbsp; &nbsp;</td>
         </tr>
        </table>
        
    </div>
        <table style="width: 100%">
            <tr>
            <td ><asp:GridView ID="GVData" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                    BorderStyle="Solid" BorderWidth="1px" OnRowDataBound="GVData_RowDataBound" PageSize="15"
                    Width="100%">
                    <PagerSettings Mode="NumericFirstLast" Visible="False" />
                    <PagerStyle BackColor="LightSteelBlue" HorizontalAlign="Right" />
                    <HeaderStyle BackColor="#006599" Font-Size="12px" ForeColor="White" Height="20px" /><AlternatingRowStyle BackColor="WhiteSmoke" />
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="用户名" >                         
                        </asp:BoundField>
                        <asp:BoundField DataField="KaoQinRiQi" HeaderText="考勤日期" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="False" >                         
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="第一次登记(上班)">                            
                            <ItemTemplate>
                                <asp:Label ID="Label1" Text='<%# DataBinder.Eval(Container.DataItem, "DengJiTime1") %>' ToolTip='<%# DataBinder.Eval(Container.DataItem, "GuiDingTime1") %>' runat="server"  ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="第二次登记(下班)">                            
                            <ItemTemplate>
                                <asp:Label ID="Label2"  Text='<%# DataBinder.Eval(Container.DataItem, "DengJiTime2") %>' ToolTip='<%# DataBinder.Eval(Container.DataItem, "GuiDingTime2") %>'  runat="server"  ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="第三次登记(上班)">                            
                            <ItemTemplate>
                                <asp:Label ID="Label3"  Text='<%# DataBinder.Eval(Container.DataItem, "DengJiTime3") %>' ToolTip='<%# DataBinder.Eval(Container.DataItem, "GuiDingTime3") %>'  runat="server"  ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="第四次登记(下班)">
                            <ItemTemplate>
                                <asp:Label ID="Label4" Text='<%# DataBinder.Eval(Container.DataItem, "DengJiTime4") %>' ToolTip='<%# DataBinder.Eval(Container.DataItem, "GuiDingTime4") %>'  runat="server"   ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="第五次登记(上班)">
                            <ItemTemplate>
                                <asp:Label ID="Label5"  Text='<%# DataBinder.Eval(Container.DataItem, "DengJiTime5") %>' ToolTip='<%# DataBinder.Eval(Container.DataItem, "GuiDingTime5") %>'  runat="server"  ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="第六次登记(下班)">
                            <ItemTemplate>
                                <asp:Label ID="Label6"  Text='<%# DataBinder.Eval(Container.DataItem, "DengJiTime6") %>' ToolTip='<%# DataBinder.Eval(Container.DataItem, "GuiDingTime6") %>'  runat="server"  ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>                 
                    </Columns>
                    <RowStyle HorizontalAlign="Center" Height="25px" />
                <EmptyDataTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="center" style="border-right: black 1px; border-top: black 1px;
                                border-left: black 1px; border-bottom: black 1px; background-color: whitesmoke;">
                                该列表中暂时无数据！</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                </asp:GridView>
                </td>
        </tr>
        <tr>
            <td style="border-top: #000000 1px solid;border-bottom: #000000 1px solid">
                <asp:ImageButton ID="BtnFirst" runat="server" CommandName="First" ImageUrl="../images/Button/First.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnPre" runat="server" CommandName="Pre" ImageUrl="../images/Button/Pre.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnNext" runat="server" CommandName="Next" ImageUrl="../images/Button/Next.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnLast" runat="server" CommandName="Last" ImageUrl="../images/Button/Last.jpg"
                    OnClick="PagerButtonClick" />
                &nbsp;第<asp:Label ID="LabCurrentPage" runat="server" Text="Label"></asp:Label>页&nbsp; 共<asp:Label
                    ID="LabPageSum" runat="server" Text="Label"></asp:Label>页&nbsp;
                <asp:TextBox ID="TxtPageSize" runat="server" CssClass="TextBoxCssUnder2" Height="20px"
                    Width="35px">15</asp:TextBox>
                行每页 &nbsp; 转到第<asp:TextBox ID="GoPage" runat="server" CssClass="TextBoxCssUnder2"
                    Height="20px" Width="33px"></asp:TextBox>
                页&nbsp;
                <asp:ImageButton ID="ButtonGo" runat="server" OnClientClick="javascript:return CheckValuePiece();"  ImageUrl="../images/Button/Jump.jpg" OnClick="ButtonGo_Click" /></td>
        </tr>
        </table>
    </form>
</body>
</html>