<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_eqpaykcv" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>企业OA综合管理平台</title>
    <LINK href="Style/Style.css" type="text/css" rel="STYLESHEET">
    <LINK href="Style/index.css" type="text/css" rel="STYLESHEET">
</head>
<body onload="javascript:form1.TxtUserName.focus();" background="images/ZM.jpg">
    <form id="form1" runat="server">
   <DIV align=center>       
       <br />
       <br />
       <br />
       <br />
       <br />
<TABLE cellSpacing=0 cellPadding=0 align=center >  
  <TR><TD align="center" height=408 width=591 >
  
      <table width="100%">
          <tr><td height="30"></td></tr>
          <tr>
              <td style="text-align: right; width: 229px;">
                  <strong>用户账户：</strong></td>
              <td>
                  <asp:TextBox ID="TxtUserName" class="inputtext" onfocus="this.select()" onmouseover="this.focus()" runat="server" Height="20px" Width="130px"></asp:TextBox></td>
          </tr>
          <tr><td height="7"></td></tr>
          <tr>
              <td style="text-align: right; width: 229px;">
                  <strong>用户密码：</strong></td>
              <td>
        <asp:TextBox ID="TxtUserPwd" class="inputtext" onfocus="this.select()" onmouseover="this.focus()" runat="server" Height="20px" TextMode="Password" Width="130px" ></asp:TextBox></td>
          </tr>
          <tr><td height="7"></td></tr>
          <tr>
              <td style="width: 229px">
              </td>
              <td>
              <asp:Button ID="ImageButton2" runat="server" class="inputsubmit"   OnClick="ImageButton1_Click" Text="登 录" />
              
                  </td>
          </tr>
      </table>
    
  </TD></TR>
  </TABLE>  
       </DIV>
    </form>
</body>
</html>
