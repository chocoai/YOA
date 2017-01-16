<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormModify.aspx.cs" Inherits="WorkFlow_FormModify" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
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
    <script type="text/javascript">
        var dialog;
        function selectUserCallback(returndata) {
            $('#<%=TextBox3.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectYinZhangCallback(returndata) {
            imgidstr.src = "http://" + window.location.host + "<%=System.Configuration.ConfigurationManager.AppSettings["OARoot"] %>/UploadFile/" + returndata;
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
    </script>
    <script language="javascript">

        function selectyinzhang(imgidstr) {
            imgidstr.src = "http://" + window.location.host + "<%=System.Configuration.ConfigurationManager.AppSettings["OARoot"] %>/UploadFile/" + returndata;
            if (dialog != null) {
                dialog.dialog("close");
            }
        }


        function PrintTable() {
            document.getElementById("PrintHide").style.visibility = "hidden"
            print();
            document.getElementById("PrintHide").style.visibility = "visible"
        }

        function formset(str) {
            var myck_editor = CKEDITOR.instances.TxtContent;
            var cValue = parseInt(20000 * Math.random());
            //Math.random()

            //常规控件
            if (str == "1") {
                myck_editor.insertHtml('<input id="Text1"  name="' + cValue + '"  type="text"  style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"/>');
            }

            if (str == "2") {
                myck_editor.insertHtml('<textarea id="TextArea1" name="' + cValue + '"   cols="20" rows="2"  style="SCROLLBAR-FACE-COLOR:   #AAAAAA;   SCROLLBAR-HIGHLIGHT-COLOR:   #D8D8D8;  SCROLLBAR-SHADOW-COLOR:   #D8D8D8;   SCROLLBAR-3DLIGHT-COLOR:   #D8D8D8;   SCROLLBAR-ARROW-COLOR:   #D8D8D8;   SCROLLBAR-TRACK-COLOR:   #D8D8D8;   SCROLLBAR-DARKSHADOW-COLOR:   #D8D8D8; border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000 " ></textarea>');

            }

            if (str == "3") {
                myck_editor.insertHtml('<input id="Checkbox1"  name="' + cValue + '"   type="checkbox"  />');
            }

            if (str == "12") {
                myck_editor.insertHtml('<input id="Text1"  name="' + cValue + '"  type="text"  style="IME-MODE: disabled;border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"  onkeypress="var k=event.keyCode; return (k>=48&&k<=57)||k==46" onpaste="return !/\D/.test(clipboardData.getData(\'text\'))"  ondragenter="return false"/>');
            }

            if (str == "13") {
                var num = Math.random();
                myck_editor.insertHtml('<input id="' + num + '" name="' + cValue + '"  type="text"  onclick="setday(this)"   value=""  style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"/>');
            }

            //<input id="WorkTime" type="text"  onclick="Jscript:var sID ;sID = event.srcElement.id; DateSelect(sID);" />
            if (str == "14") {
                var num = Math.random();
                myck_editor.insertHtml('<img class="HerCss" name="img' + cValue + '" id="img' + cValue + '" onclick="selectyinzhang(img' + cValue + ');"  src="../images/NoYz.gif" />');
            }
            //宏控件




            if (str == "4") {
                myck_editor.insertHtml('<input readonly id="Text2" name="' + cValue + '"  type="text" value="宏控件-用户姓名" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"/>');
            }

            if (str == "5") {
                myck_editor.insertHtml('<input readonly id="Text2" name="' + cValue + '"  type="text" value="宏控件-用户部门" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"/>');
            }

            if (str == "6") {
                myck_editor.insertHtml('<input readonly id="Text2"  name="' + cValue + '"   type="text" value="宏控件-用户角色" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"/>');
            }

            if (str == "7") {
                myck_editor.insertHtml('<input readonly id="Text2"  name="' + cValue + '"  type="text" value="宏控件-用户职位" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"/>');
            }


            if (str == "8") {
                myck_editor.insertHtml('<input readonly id="Text2"  name="' + cValue + '"  type="text" value="宏控件-当前时间(日期)" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"/>');
            }

        }
    </script>


    <script language="javascript">
        function settiaojian() {
            var myck_editor = CKEDITOR.instances.TxtContent;
            var ziduanname = document.getElementById("DropDownList1").value.split('[')[0];
            var ziduanleixing = document.getElementById("DropDownList1").value.split('[')[1];
            if (ziduanleixing == "常规型]") {
                myck_editor.insertHtml('<input id="Text3"  name="' + "TIaoJianZiDuan_" + ziduanname + '"  type="text"  style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"/>');
            }
            else {
                myck_editor.insertHtml('<input id="Text3"  name="' + "TIaoJianZiDuan_" + ziduanname + '"  type="text"  style="IME-MODE: disabled;border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #000000"  onkeypress="var k=event.keyCode; return (k>=48&&k<=57)||k==46" onpaste="return !/\D/.test(clipboardData.getData(\'text\'))"  ondragenter="return false"/>');
            }
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
                            <li class="active">修改表单</li>
                        </ol>

                    </td>
                </tr>   
                <tr>
                     <td colspan="2" class="filter_box">
                        <div class="form-group">
                            <asp:Button ID="ImageButton1" Text="提交" CssClass="btn btn-primary" runat="server" OnClick="ImageButton1_Click" />
                            &nbsp;&nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
                </tr>
            </table>
            <table style="width: 100%" class="table">
                <tr>
                    <td align="right" style="width: 170px; ">表单名称：</td>
                    <td >
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="350px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">表单类别：</td>
                    <td >
                        <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" Width="350px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">使用范围：</td>
                    <td >
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
                         <a onclick="openDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&callbackFun=selectUserCallback',350,400);"><span class="glyphicon glyphicon-filter glyphicon-size-md"></span></a>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 170px; ">条件字段：</td>
                    <td >
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" Width="194px">
                        </asp:DropDownList>
                        <input id="Button3" class="btn btn-primary" style="width: 69px" type="button" value="插入字段" onclick="settiaojian()" />
                        <asp:Button ID="Button2" CssClass="btn btn-danger"  runat="server" OnClick="Button2_Click" Text="删除" Width="38px" />字段名：
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Width="85px"></asp:TextBox>
                        类型：<asp:DropDownList ID="DropDownList2" width="100" CssClass="form-control" runat="server">
                            <asp:ListItem>[常规型]</asp:ListItem>
                            <asp:ListItem>[数字型]</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click"
                            Text="添加字段" Width="69px" /></td>
                </tr>
                <tr>
                    <td align="center" valign="top" style="width: 170px; ">
                        <strong>标准控件</strong>
                        <hr />
                        <input id="Button4" class="btn btn-primary" onclick="formset(1)" style="width: 120px;margin-top:3px;" type="button" value="插入常规输入框" />
                        <br />
                        <input id="Button14" class="btn btn-primary" onclick="formset(12)" style="width: 120px;margin-top:3px;" type="button" value="插入数字输入框" />
                        <br />

                        <input id="Button5" class="btn btn-primary" onclick="formset(2)" style="width: 120px;margin-top:3px;" type="button" value="插入文本输入框" /><br />
                        <input id="Button15" class="btn btn-primary" onclick="formset(13)" style="width: 120px;margin-top:3px;" type="button" value="插入日期选择" /><br />
                        <input id="Button6" class="btn btn-primary" onclick="formset(3)" style="width: 120px;margin-top:3px;" type="button" value="插入复选框" /><br />
                        <hr />
                        <strong>宏控件</strong>
                        <hr />

                        <input id="Button7" class="btn btn-primary" onclick="formset(4)" style="width: 120px;margin-top:3px;" type="button" value="插入用户姓名" />
                        <br />
                        <input id="Button8" class="btn btn-primary" onclick="formset(5)" style="width: 120px;margin-top:3px;" type="button" value="插入用户部门" />
                        <br />
                        <input id="Button9" class="btn btn-primary" onclick="formset(6)" style="width: 120px;margin-top:3px;" type="button" value="插入用户角色" />
                        <br />
                        <input id="Button10" class="btn btn-primary" onclick="formset(7)" style="width:120px;margin-top:3px;" type="button" value="插入用户职位" />
                        <br />

                        <input id="Button11" class="btn btn-primary" onclick="formset(8)" style="width: 120px;margin-top:3px;" type="button" value="当前时间(日期)" />

                        <hr />
                        <strong>印章控件</strong>
                        <hr />
                        <input id="Button12" class="btn btn-primary" onclick="formset(14)" style="width: 120px;margin-top:3px;" type="button" value="插入印章域" />

                    </td>
                    <td >
                        <CKEditor:CKEditorControl ID="TxtContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
                        <br />
                        <span style="color: #ff0000">1.点击左边控件按钮将会把内容插入到编辑器中鼠标的光标所在处，如果鼠标的光标没有在编辑器中将不会插入内容。<br>
                        </span><span style="color: #ff0000">2.页面中存在重复的字段，系统在流程条件判断中将取页面上第一个控件的值。如果第一个控件没有值，系统默认为未取到值。</span></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
