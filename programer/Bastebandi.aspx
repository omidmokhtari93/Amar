<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Bastebandi.aspx.vb" Inherits="programer_Bastebandi" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../bastebandi/Scripts/jquery-3.2.1.min.js"></script>
    <link href="../bastebandi/Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../bastebandi/Scripts/bootstrap.js"></script>
    <script src="../bastebandi/Scripts/notify.min.js"></script>
    <link href="../bastebandi/Content/kamadatepicker.css" rel="stylesheet" />
    <script src="../bastebandi/Scripts/kamadatepicker.js"></script>
    <style>
        @font-face {
            font-family: 'nazanin';
            src: url('../bastebandi/fonts/Far_Nazanin.eot'),
                 url('../bastebandi/fonts/glyphicons-halflings-regular.eot')format('embedded-opentype'),
                 url('../bastebandi/fonts/Far_Nazanin.eot?#FooAnything') format('embedded-opentype');
            src: local('☺'),
                 url('../bastebandi/fonts/Far_Nazanin.woff') format('woff'),
                 url('../bastebandi/fonts/Far_Nazanin.ttf') format('truetype'),
                 url('../bastebandi/fonts/Far_Nazanin.svg') format('svg'),
                 url('../bastebandi/fonts/glyphicons-halflings-regular.woff') format('woff'),
                 url('../bastebandi/fonts/glyphicons-halflings-regular.ttf') format('truetype'),
                 url('../bastebandi/fonts/glyphicons-halflings-regular.svg#glyphicons-halflingsregular') format('svg'),
                 url('../bastebandi/fonts/glyphicons-halflings-regular.woff2')format('woff2');
            font-weight: 400;
        }
        html *{ font-family: nazanin;font-size: 13pt;font-weight: 800;}
        .row{ margin: 0;}
        body{background-color: #fee9e9}
        .mainBody{ padding: 40px;}
    </style>

    <div class="mainBody">
        <div class="row">
            <div class="col-lg-4">

            </div>
            <div class="col-lg-4">
                <button type="button" class="btn btn-primary">ثبت</button>
            </div>
            <div class="col-lg-4">
                <input class="form-control" id="txt"/>
            </div>
        </div>
    </div>
    
    <script>
        var customOptions = {
            placeholder: "روز / ماه / سال"
            , twodigit: true
            , closeAfterSelect: true
            , nextButtonIcon: "fa fa-arrow-circle-right"
            , previousButtonIcon: "fa fa-arrow-circle-left"
            , buttonsColor: "blue"
            , forceFarsiDigits: true
            , markToday: true
            , markHolidays: true
            , highlightSelectedDay: true
            , sync: true
            , gotoToday: true
        }
        kamaDatepicker('txt', customOptions);
    </script>
</asp:Content>

