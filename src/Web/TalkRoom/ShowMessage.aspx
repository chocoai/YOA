﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowMessage.aspx.cs" Inherits="TalkRoom_ShowMessage" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
  <meta http-equiv="refresh" content="5;url=ShowMessage.aspx?TalkRoomName=<%=Request.QueryString["TalkRoomName"].ToString()%>" >
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:Label ID="Label1" runat="server"></asp:Label>
    <a name="aaaaa"></a>
     </div>
    </form>
</body>
</html>