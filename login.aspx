<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="main" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0"/>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="Content/bootstrap.css"/>
    <link rel="stylesheet" href="Content/bootstrap-theme.css"/>
    <link rel="stylesheet" href="Content/bootstrap-theme.min.css"/>
    <link href="Images/favicon.ico" rel="shortcut icon"/>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <title> سامانه ثبت آمار و برنامه ریزی </title>
    <style>
        @font-face {
            font-family: 'myfont';
            src: url('fonts/BYekan.eot'),
                 url('fonts/glyphicons-halflings-regular.eot')format('embedded-opentype'),
                 url('fonts/BYekan.eot?#FooAnything') format('embedded-opentype');
            src: local('☺'),
                 url('fonts/BYekan.woff') format('woff'),
                 url('fonts/BYekan.ttf') format('truetype'),
                 url('fonts/BYekan.svg') format('svg'),
                 url('fonts/glyphicons-halflings-regular.woff') format('woff'),
                 url('fonts/glyphicons-halflings-regular.ttf') format('truetype'),
                 url('fonts/glyphicons-halflings-regular.svg#glyphicons-halflingsregular') format('svg'),
                 url('fonts/glyphicons-halflings-regular.woff2')format('woff2');
        } 
        .panel {
            font-family: myfont;
        }
        @media only screen and (max-width: 1024px) {
            /* For tablets: */
            .panel {
                width: 50%;
            }
            #btnlogin_personel {
                display:none;
            }
            .middle-login-panel {
                position: relative;
                padding-top:100px ;
                width: 100%;
            }
        }
        @media only screen and (min-width: 1024px) {
            /* For desktop: */
            .panel {
                width: 25%;
            }
            .middle-login-panel {
                position: relative;
                padding-top:200px ;
                width: 100%;
            }
        }
        .backImage{
            background-image: url(Images/login-back.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            position: absolute;
            height: 100%;
            width: 100%;
            z-index: -1;
            overflow: hidden;
            outline: none;
        }
        body ,html {
            height: 100%;
        }
        .btnLogin {
            border: none;
            padding: 12px 15px;
            background-color: #008d30;
            color: white;
            font-family: myfont;
            border-radius: 5px;
            font-weight: 800;
            font-size: 12pt;
        }
        .btnLogin:hover {
            border: none;
            padding: 12px 15px;
            background-color: #007829;
            color: white;
            font-family: myfont;
            border-radius: 5px;
            font-weight: 800;
            font-size: 12pt;
        }
        .btnPersoneli {
            border: none;
            padding: 12px 15px;
            background-color: #006eca;
            color: white;
            font-family: myfont;
            border-radius: 5px;
            font-weight: 800;
            font-size: 12pt;
        }
        .btnPersoneli:hover {
            border: none;
            padding: 12px 15px;
            background-color: #005fae;
            color: white;
            font-family: myfont;
            border-radius: 5px;
            font-weight: 800;
            font-size: 12pt;
        } 
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <script>
            var images = ["Images/login-back.jpg", "Images/login-back1.jpg", "Images/login-back2.jpg", "Images/login-back3.jpg", "Images/login-back4.jpg", "Images/login-back5.jpg"];
            $(function () {
                var i = 0;
                $(".backImage").css("background-image", "url(" + images[i] + ")");
                setInterval(function () {
                    i++;
                    if (i == images.length) {
                        i = 0;
                    }
                    $(".backImage").fadeOut(800, function () {
                        $(this).css("background-image", "url(" + images[i] + ")");
                        $(this).fadeIn(2000);
                    });
                }, 10000);
            });
        </script>
        <img class="backImage"/>
        <center>
            <label style="font-family: myfont; font-size: 15pt; padding-top: 15px;">.:: شرکت صنایع چینی تقدیس ::.</label>
        <div class="middle-login-panel">
            <asp:Panel class="panel panel-primary" BackImageUrl="Images/gplaypattern.jpg" runat="server">
                <asp:Panel class="panel-heading" runat="server"><label class="label-titr" style="font-size: 15pt;">ورود به سامانه</label></asp:Panel>
                <div class="panel-body" style="padding-top: 5px;">
                    <label style="margin-bottom:5px ; padding: 0; color: #ff5252;"><asp:Label ID="lblmsg" runat="server"></asp:Label></label>
                    <div class="input-group">
                        <asp:TextBox ID="txtname" dir="ltr" CssClass="form-control input-lg" Font-Names="tahoma" runat="server" TabIndex="1" ></asp:TextBox>
                        <span class="input-group-addon"><label style="padding: 0; margin: 0;width: 60px;">نام کاربری</label></span>
                    </div>
                    <br />
                    <div class="input-group">
                        <asp:TextBox ID="txtpass" dir="ltr" CssClass="form-control input-lg" runat="server"  TextMode="Password" TabIndex="2"></asp:TextBox>
                        <span class="input-group-addon"><label style="padding: 0; margin: 0; width: 60px;">رمز عبور</label></span>
                    </div>
                    <br />
                    &nbsp;<asp:Button ID="btnlogin" runat="server" CssClass="btnLogin" Text="سامانه آمار" TabIndex="3" OnClick="btnlogin_OnClick"/>
                    <asp:Button ID="btnlogin_personel" runat="server" CssClass="btnPersoneli" Text="سامانه پرسنلی"  TabIndex="4" OnClick="btnlogin_personel_OnClick"/>
                    <br/>
                </div>
            </asp:Panel>
        </div>
        </center>
        <label>
        <asp:Label runat="server" ID="lbl_today" style="position: absolute; right: 20px; bottom: 50px; font-family: myfont; font-size: 20pt;"></asp:Label>
        <asp:Label runat="server" ID="lbl_today1" style="position: absolute; right: 20px; bottom: 10px; font-family: myfont;font-size: 18pt; direction: rtl;"></asp:Label>
        <asp:Label runat="server" style="width: 200px; position: absolute; bottom: 0px; left: 0px; font-family: myfont;font-size: 10pt; direction: rtl;" Text=".:: تهیه شده توسط واحد نرم افزار ::."></asp:Label>
        </label>
</form>
</body>
</html>
