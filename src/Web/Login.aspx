﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>政务OA</title>
    <link href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: #008ead;
            font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif;
            color: #222;
            font-size: 12px;
        }

        * {
            padding: 0px;
            margin: 0px;
        }

        .top_div {
            background: #008ead;
            width: 100%;
            height: 400px;
        }

        .ipt {
            border: 1px solid #d3d3d3;
            padding: 10px 10px;
            width: 290px;
            border-radius: 4px;
            padding-left: 35px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }

            .ipt:focus {
                border-color: #66afe9;
                outline: 0;
                -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
                box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            }

        .u_logo {
            background: url("images/username.png") no-repeat;
            padding: 10px 10px;
            position: absolute;
            top: 43px;
            left: 40px;
        }

        .p_logo {
            background: url("images/password.png") no-repeat;
            padding: 10px 10px;
            position: absolute;
            top: 12px;
            left: 40px;
        }

        a {
            text-decoration: none;
        }

        .tou {
            background: url("images/tou.png") no-repeat;
            width: 97px;
            height: 92px;
            position: absolute;
            top: -87px;
            left: 140px;
        }

        .left_hand {
            background: url("images/left_hand.png") no-repeat;
            width: 32px;
            height: 37px;
            position: absolute;
            top: -38px;
            left: 150px;
        }

        .right_hand {
            background: url("images/right_hand.png") no-repeat;
            width: 32px;
            height: 37px;
            position: absolute;
            top: -38px;
            right: -64px;
        }

        .initial_left_hand {
            background: url("images/hand.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -12px;
            left: 100px;
        }

        .initial_right_hand {
            background: url("images/hand.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -12px;
            right: -112px;
        }

        .left_handing {
            background: url("images/left-handing.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -24px;
            left: 139px;
        }

        .right_handinging {
            background: url("images/right_handing.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -21px;
            left: 210px;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            //得到焦点
            $("#password").focus(function () {
                $("#left_hand").animate({
                    left: "150",
                    top: " -38"
                }, {
                    step: function () {
                        if (parseInt($("#left_hand").css("left")) > 140) {
                            $("#left_hand").attr("class", "left_hand");
                        }
                    }
                }, 2000);
                $("#right_hand").animate({
                    right: "-64",
                    top: "-38px"
                }, {
                    step: function () {
                        if (parseInt($("#right_hand").css("right")) > -70) {
                            $("#right_hand").attr("class", "right_hand");
                        }
                    }
                }, 2000);
            });
            //失去焦点
            $("#password").blur(function () {
                $("#left_hand").attr("class", "initial_left_hand");
                $("#left_hand").attr("style", "left:100px;top:-12px;");
                $("#right_hand").attr("class", "initial_right_hand");
                $("#right_hand").attr("style", "right:-112px;top:-12px");
            });
        });
        function subMit() {
            $.post(
                "Login/Login",
                { LoginCode: $("#LoginCode").val(), Password: $("#password").val() },
                function (result) {
                    if (result == "1") {
                        window.open("Home/Main?skin=aqua", "_self");
                    } else if (result == "-1") {
                        $('#check').css("color", "red").text("用户重复，请联系管理员");
                    } else if (result == "0") {
                        $('#check').css("color", "red").text("用户和密码错误");
                    } else {
                        $('#check').css("color", "red").text(result);
                    }
                }, "text");
        }
        function register() {
            alert("暂未开放注册");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top_div">
        </div>
        <div class="login_system_name">南县交通局政务OA系统</div>
        <div style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 200px; text-align: center;">
            <div style="width: 165px; height: 96px; position: absolute;">
                <div class="tou"></div>
                <div class="initial_left_hand" id="left_hand"></div>
                <div class="initial_right_hand" id="right_hand"></div>
            </div>
            <p style="padding: 30px 0px 10px; position: relative;">
                <span
                    class="u_logo"></span>
                <asp:TextBox ID="LoginCode" class="inputtext form-control" onfocus="this.select()" onmouseover="this.focus()" runat="server" Height="30px" Width="204px"></asp:TextBox>
            </p>
            <p style="position: relative;">
                <span class="p_logo"></span>
                <asp:TextBox ID="password" class="inputtext form-control" onfocus="this.select()" onmouseover="this.focus()" runat="server" Height="30px" TextMode="Password" Width="204px"></asp:TextBox>
            </p>
            <div style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
                <p style="margin: 0px 35px 20px 45px;">
                    <span style="float: left;" id="check"></span>
                    <span style="float: right; width: 174px;"><a style="color: rgb(204, 204, 204); margin-right: 10px;"
                        href="web/index.html"></a>&nbsp;<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="登陆" Height="30px" OnClick="Button1_Click" Width="70px" />
                    </span>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
