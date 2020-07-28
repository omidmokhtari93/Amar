<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/MasterPage.master" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <label class="welcome">.:: سامانه ثبت آمار انبار گل ::.</label>
    <style>
        .mybadge {
            height: 30px;
            border-radius:50px;
            background-color: #006ca9;
            padding: 3px;
            text-align: left;
            display: inline-block;
            padding-right: 5px;
            font-family: myfont;
        }
        .innerbadge {
            display: inline-block;
            height: 24px;
            border-radius: 15px;
            background-color: white;
            padding: 2px;
            padding-left: 3px;
            padding-right: 3px;
            color:#006ca9;
            margin-right: 5px;
            vertical-align: middle;
        }
        .noselect {
            -webkit-touch-callout: none; /* iOS Safari */
            -webkit-user-select: none; /* Safari */
            -moz-user-select: none; /* Firefox */
            -ms-user-select: none; /* Internet Explorer/Edge */
            user-select: none; /* Non-prefixed version, currently
                                  supported by Chrome and Opera */
        }
    </style>
    <div class="row" style="margin: 0;">
        <div class="col-lg-3">
            <div class="mybadge noselect">
                <label style="padding: 0; margin: 0; color: white; float: right; line-height: 24px;">تعداد کل برگ ها</label>
                <div class="innerbadge"><label style="margin: 0; padding: 0;" id="lblKol"></label></div>
            </div> 
        </div>
        <div class="col-lg-3">
            <div class="mybadge noselect">
                <label style="padding: 0; margin: 0; color: white; float: right; line-height: 24px;">تعداد برش خورده ها</label>
                <div class="innerbadge"><label style="margin: 0; padding: 0;" id="lblboresh"></label></div>
            </div> 
        </div>
        <div class="col-lg-3">
            <div class="mybadge noselect">
                <label style="padding: 0; margin: 0; color: white; float: right; line-height: 24px;">تعداد کل نیم برش ها</label>
                <div class="innerbadge"><label style="margin: 0; padding: 0;" id="lblNimboresh"></label></div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="mybadge noselect">
                <label style="padding: 0; margin: 0; color: white; float: right; line-height: 24px;">تعداد گل ها</label>
                <div class="innerbadge"><label style="margin: 0; padding: 0;" id="lblGol"></label></div>
            </div>
        </div>
    </div>
    <script>
        $(function() {
            $.ajax({
                type: "POST",
                url: "amar.asmx/GetTotal",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (e) {
                    var data = JSON.parse(e.d);
                    $('#lblGol').text(data.tedadGol.toLocaleString());
                    $('#lblKol').text(data.totalforms.toLocaleString());
                    $('#lblboresh').text(data.boresh.toLocaleString());
                    $('#lblNimboresh').text(data.halfcut.toLocaleString());
                },
                error: function () {
                    //alert('خطا!!!');
                }
            });
        });
    </script>
</asp:Content>

