<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormView.aspx.cs" Inherits="WorkFlow_FormView" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
  
<script type="text/javascript" language="javascript" src="../JS/calendar.js"></script>
 <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
  <script language="javascript">
  
  function selectyinzhang(imgidstr)
        {
            
            var wName;
            var RadNum=Math.random();
            wName=window.showModalDialog('../Main/SelectYinZhang.aspx?Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');            
            if(wName==null||wName=="")
            {}
            else
            {        
                //alert(imgidstr);
                imgidstr.src="http://"+window.location.host+"<%=System.Configuration.ConfigurationManager.AppSettings["OARoot"] %>/UploadFile/"+wName;  
            }
        }
        
        
  function PrintTable()
    {
        document.getElementById("PrintHide") .style.visibility="hidden"    
        print();
        document.getElementById("PrintHide") .style.visibility="visible"    
    }
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
     <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
            <tr>
                    <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>工作流程</li>
                            <li class="active">查看表单</li>
                        </ol>

                    </td>
                    <td align="right" valign="middle" style="height: 30px;">
                        <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                        <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
                </tr>
        </table>
    <table style="width: 100%" class="table" >            
        <tr>
            <td align="right" style="width: 170px;">
                表单名称：</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                表单类别：</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                使用范围：</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                条件字段：</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                创建人：</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                创建时间：</td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 170px;">
                表单内容：</td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label></td>
        </tr>
        </table></div>
    </form>
</body>
</html>