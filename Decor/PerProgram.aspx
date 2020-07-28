<%@ Page Title="ثبت آمار پرسنل" Language="C#" MasterPageFile="~/Decor/MasterPage.master" AutoEventWireup="true" CodeFile="PerProgram.aspx.cs" Inherits="Decor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../Content/kamadatepicker.js"></script>
    <link href="../Content/kamadatepicker.css" rel="stylesheet" />
    <script>
        function AjaxData(obj) {
            $.ajax({
                type: 'POST',
                url: obj.url,
                data: JSON.stringify(obj.param),
                contentType: 'application/json;',
                dataType: 'json',
                success: obj.func,
                error: function () {
                    console.log('error');
                }
            });
        }

        function faTOen(str) {
            var persianNumbers = [/۰/g, /۱/g, /۲/g, /۳/g, /۴/g, /۵/g, /۶/g, /۷/g, /۸/g, /۹/g],
                englishNumbers = [/0/g, /1/g, /2/g, /3/g, /4/g, /5/g, /6/g, /7/g, /8/g, /9/g];
            if (typeof str === 'string') {
                for (var i = 0; i < 10; i++) {
                    str = str.replace(persianNumbers[i], i).replace(englishNumbers[i], i);
                }
            }
            return str;
        }

        $.fn.Getlocation = function () {
            var i = { x: $(this).offset().left - 40, y: $(this).offset().top - 25 };
            return i;
        }
        $.fn.FilterTable = function () {
            var val = $(this).val().toUpperCase();
            $('#tblItems > tr > td').each(function (index, element) {
                if ($(this).parent().text().toUpperCase().indexOf(val) < 0)
                    $(this).parent().hide();
                else
                    $(this).parent().show();
            });
        };
    </script>
    <style>
        .tooltipp {
            direction: ltr;
            position: absolute;
            cursor: pointer;
            left: -40px;
            max-width: 500px;
            font-family: tahoma;
            font-weight: 200;
            font-size: 8pt;
            top: 40px;
            border: solid 1px #969696;
            border-radius: 5px;
            background-color: #ffffdd;
            padding: 2px 2px 1px 2px;
            z-index: 1000;
        }

            .tooltipp div {
                padding: 3px;
                background-color: #e3e3e3;
                border-radius: 3px;
                margin: 1px;
                display: inline-block;
                white-space: nowrap;
                direction: rtl;
            }

            .tooltipp input[type="number"] {
                width: 100px;
                height: 35px;
                margin-bottom: 3px;
                display: inline-block;
            }

            .tooltipp button {
                height: 35px;
                margin: 3px;
                display: inline-block;
            }

            .tooltipp::after {
                content: "";
                position: absolute;
                top: -10px;
                left: 70px;
                margin-left: -5px;
                border-width: 5px;
                border-style: solid;
                border-color: transparent transparent #969696 transparent;
            }

        .glyphicon-pencil {
            color: blue;
        }

        .glyphicon-trash {
            color: red;
        }

        .itembadge, .golbadge, .perbadge, .peridbadge {
            background-color: white;
            color: black;
            font-weight: 800;
            border-radius: 2px;
            position: absolute;
            right: 20px;
            top: 40px;
            font-size: 16pt;
            cursor: pointer;
            white-space: nowrap;
        }

        .col-sm-4 {
            position: relative;
        }

        #Panel1 {
            width: 99% !important;
        }

        label {
            font-size: 15pt;
            font-weight: 800;
        }

        .stable {
            width: 100%;
        }

            .stable tr {
                border-bottom: 2px solid darkgray;
                cursor: pointer;
            }

                .stable tr td {
                    background: lightblue;
                    color: black;
                    padding: 1px 2px;
                    font-size: 12pt;
                    font-weight: 800;
                    padding-right: 20px;
                }

        .tablescroll {
            overflow: auto;
            max-height: 300px;
            width: 90%;
            z-index: 999;
            position: absolute
        }

        table tr td {
            font-size: 15pt;
            font-weight: 800;
        }

        table tr th {
            font-size: 15pt;
            font-weight: 800;
        }

        table tr td a {
            cursor: pointer;
        }

        .searcharea {
            margin: 0;
            border: 1px solid rgb(190, 190, 190);
            border-radius: 5px;
            background-color: #dfecfe;
            margin-top: 5px;
        }

        .brdr {
            border: 1px solid darkgray;
            border-radius: 5px;
            position: relative;
        }

        .searchbox {
            border: none;
            border-radius: 5px;
            width: 100%;
            direction: rtl;
            outline: none;
            font-weight: 800;
            height: 40px;
            font-size: 17pt;
            padding: 2px 5px;
        }

        .lbl {
            display: block;
            text-align: right;
        }

        .panel-heading {
            font-size: 18pt;
        }

        #tblItems td:nth-child(5) {
            cursor: pointer;
        }
        .nav-tabs > li {
            float: right!important;
        }
        .nav-tabs>li a {
            font-size: 15pt;
            font-weight: bold;
        }
    </style>

    
    <ul class="nav nav-tabs" style="padding: 0px 15px 0 15px; direction: rtl!important; margin-top: 10px;">

        <li class="active"><a data-toggle="tab" href="#Personel">آمار پرسنل دکور</a></li>
        <li><a data-toggle="tab" >برنامه دکور</a></li>

    </ul>
    <div class="tab-content">
        <div id="Personel" class="tab-pane fade in active">
            <div class="menubody">
                <div class="row" style="text-align: right;">
                    <div class="panel panel-primary" style="position: relative;">
                        <div class="panel-heading" style="text-align: center">آمار پرسنل دکور</div>

                        <div class="panel-body" id="inputs">
                            <div class="row" style="text-align: right;">
                                <div class="col-sm-4">
                                    <label style="display: block;">تاریخ </label>
                                    <input id="txtPerDate" clientidmode="Static" runat="server" class="form-control text-center" style="cursor: pointer;" />
                                </div>
                                <div class="col-sm-4">
                                    <label>شماره پرسنلی</label>
                                    <label class="form-control" id="lblPerid" style="width: 100%; direction: rtl;"></label>
                                    <div class="peridbadge"></div>
                                </div>
                                <div class="col-sm-4">
                                    <label>نام پرسنلی</label>
                                    <input type="text" autocomplete="off" onkeyup="PersonelFilter();" class="form-control" placeholder="جستجو" id="txtsearchPer" style="width: 100%; direction: rtl;" tabindex="1" />
                                    <div class="perbadge"></div>
                                    <div class="tablescroll">
                                        <table class="stable" id="tblsearchper"></table>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="text-align: right;">
                                <div class="col-sm-2" id="tedadArea">
                                    <label style="display: block;">تعداد</label>
                                    <input autocomplete="off" class="form-control text-center" style="width: 100%;" type="number" id="txtTedad" tabindex="5" />
                                </div>
                                <div class="col-sm-2">
                                    <label style="display: block;">درجه</label>
                                    <asp:DropDownList runat="server" ID="drDarage" CssClass="form-control text-right" ClientIDMode="Static" DataSourceID="SqlDarage" DataTextField="grade" DataValueField="id" Width="100%" TabIndex="4" />
                                    <asp:SqlDataSource ID="SqlDarage" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT id,grade FROM grade_level"></asp:SqlDataSource>
                                </div>
                                <div class="col-sm-4">
                                    <label>نام گل</label>
                                    <input type="text" autocomplete="off" onkeyup="FilterGol();" class="form-control" placeholder="جستجو" id="txtsearchGol" style="width: 100%; direction: rtl; font-size: 12pt;" tabindex="3" />
                                    <div class="golbadge"></div>
                                    <div class="tablescroll">
                                        <table class="stable" id="tblgol"></table>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <label>نام آیتم</label>
                                    <input type="text" autocomplete="off" onkeyup="FilterItem();" class="form-control" placeholder="جستجو" id="txtsearchItem" style="width: 100%; direction: rtl;" tabindex="2" />
                                    <div class="itembadge"></div>
                                    <div class="tablescroll">
                                        <table class="stable" id="tblsearchitem"></table>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div id="ModalDelete" class="modal" style="direction: rtl; top: 200px; right: 300px;">
                            <div class="modal-content" style="width: 400px;">
                                <div class="panel panel-danger" style="margin-bottom: 0;">
                                    <div class="panel-heading" style="font-weight: 600;">حذف آمار</div>
                                    <div class="panel-body" style="text-align: center;">

                                        <p style="font-size: 14pt; padding: 5px;" class="label label-primary">آیا میخواهید رکورد زیر را حذف کنید؟</p>

                                        <div style="text-align: center; margin-top: 10px;">
                                            <button class="button" type="button" onclick="deleterecord();">حذف</button>
                                            <button class="button" type="button" onclick="$('#ModalDelete').hide();cancel();">انصراف</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer" style="text-align: left;">
                            <button type="button" class="button" onclick="Sabt();" id="btnsabt">ثبت</button>
                            <button type="button" class="button" onclick="update();" style="display: none;" id="btnedit">ویرایش</button>
                            <button type="button" class="button" onclick="cancel();" style="display: none;" id="btncancel">انصراف</button>


                        </div>

                        <div class="panel-footer" id="tblarea" style="position: relative;">
                            <div class="row searcharea">

                                <div class="col-sm-4" style="padding: 5px;">
                                    <label class="lbl">طرح</label>
                                    <div class="brdr">
                                        <input type="text" placeholder="جستجو ..." id="golsearch" class="searchbox" onkeyup="$(this).FilterTable();" />
                                    </div>
                                </div>
                                <div class="col-sm-4" style="padding: 5px;">
                                    <label class="lbl">آیتم</label>
                                    <div class="brdr">
                                        <input type="text" placeholder="جستجو ..." id="itemsearch" class="searchbox" onkeyup="$(this).FilterTable();" />
                                    </div>
                                </div>
                                <div class="col-sm-4" style="padding: 5px;">
                                    <label class="lbl">پرسنل</label>
                                    <div class="brdr">
                                        <input type="text" placeholder="جستجو ..." id="persearch" class="searchbox" onkeyup="$(this).FilterTable();" />
                                    </div>
                                </div>
                            </div>
                            <table class="table table-bordered" id="tblItems" style="position: relative;"></table>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div id="Program" class="tab-pane fade">
            <div class="menubody">
            </div>
        </div>
    </div>




    <style>
        #nav {
            text-align: center;
        }

            #nav a {
                font-size: 15pt;
                font-weight: bolder;
            }

        #tblItems {
            margin-bottom: 0;
        }
    </style>
    <script>

        $('#txtPerDate').change(function () {
            GetItemTable();
        });


        var nav;//page number 
        GetItemTable();
        function GetItemTable() {
            $('#tblItems').empty();
            AjaxData({
                url: 'ProgramDecor.asmx/GetPersonel',
                param: { tarikh: $('#txtPerDate').val() },
                func: createItemsTable
            });
            function createItemsTable(e) {
                var d = JSON.parse(e.d);

                if (d.length > 0) {
                    var b = [];
                    b.push('<tr><th>نام پرسنل</th><th>نام آیتم</th><th>نام طرح</th><th>درجه</th>' +
                        '<th>تعداد دکور</th><th></th><th></th></tr>');
                    for (var i = 0; i < d.length; i++) {
                        if (i % 10 === 0 && i !== 0) {
                            b.push('<tr><th>نام پرسنل</th><th>نام آیتم</th><th>نام طرح</th><th>درجه</th>' +
                                '<th>تعداد دکور</th><th></th><th></th></tr>');
                        }
                        b.push('<tr>' +
                            '<td perid="' + d[i].PerId + '">' + d[i].PerName + '</td>' +
                            '<td itemid="' + d[i].ItemId + '">' + d[i].ItemName + '</td>' +
                            '<td golid="' + d[i].GolId + '">' + d[i].GolName + '</td>' +

                            '<td did="' + d[i].DarageId + '">' + d[i].Darag + '</td>' +
                            '<td style="position:relative;">' + d[i].Tedad + '</td>' +

                            '<td><a name="edit" id="' + d[i].Id + '" class="glyphicon glyphicon-pencil"></a></td>' +
                            '<td><a name="del" id="' + d[i].Id + '" class="glyphicon glyphicon-trash"></a></td>' +
                            '</tr>');
                    }
                    $('#tblItems ').append(b.join(''));
                }
                if (nav !== undefined) {
                    $('#nav').remove();
                }
                nav = $('<div id="nav"></div>');
                $('#tblItems').after(nav);
                var rowsShown = 11;
                var rowsTotal = $('#tblItems  tr').length;
                var numPages = rowsTotal / rowsShown;
                for (i = 0; i < numPages; i++) {
                    var pageNum = i + 1;
                    $('#nav').append('<a  href="#" rel="' + i + '">' + pageNum + '</a> ');
                }
                $('#tblItems  tr').hide();
                $('#tblItems  tr').slice(0, rowsShown).show();
                $('#nav a:first').addClass('active');
                $('#nav a').bind('click', function () {

                    $('#nav a').removeClass('active');
                    $(this).addClass('active');
                    var currPage = $(this).attr('rel');
                    var startItem = currPage * rowsShown;
                    var endItem = startItem + rowsShown;
                    $('#tblItems  tr').css('opacity', '0.0').hide().slice(startItem, endItem).
                        css('display', 'table-row').animate({ opacity: 1 }, 300);
                });
            }
        }

        function FilterGol() {
            if ($('#txtsearchGol').val() === '') {
                $('#tblgol').empty();
                return;
            }
            if ($('#txtsearchGol').val().length < 3) {
                return;
            }
            $('#tblgol').empty();
            AjaxData({
                url: 'ProgramDecor.asmx/FilterGol',
                param: { golName: $('#txtsearchGol').val() },
                func: golSearch
            });
            function golSearch(e) {
                var d = JSON.parse(e.d);
                if (d.length > 0) {
                    var b = [];
                    for (var i = 0; i < d.length; i++) {
                        b.push('<tr><td golid="' + d[i].Id + '">' + d[i].Name + '</td></tr>');
                    }

                    $('#tblgol').append(b.join(''));
                }
            }
        }

        function FilterItem() {
            if ($('#txtsearchItem').val() === '') {
                $('#tblsearchitem').empty();
                return;
            }
            if ($('#txtsearchItem').val().length < 2) {
                return;
            }
            $('#tblsearchitem').empty();
            AjaxData({
                url: 'ProgramDecor.asmx/FilterItems',
                param: { partName: $('#txtsearchItem').val() },
                func: itemsSearch
            });
            function itemsSearch(e) {
                var d = JSON.parse(e.d);
                if (d.length > 0) {
                    var b = [];
                    for (var i = 0; i < d.length; i++) {
                        b.push('<tr><td itemid="' + d[i].ItemId + '">' + d[i].ItemName + '</td></tr>');
                    }
                    $('#tblsearchitem').append(b.join(''));
                }
            }
        }

        function PersonelFilter() {
            if ($('#txtsearchPer').val() === '') {
                $('#tblsearchper').empty();
                return;
            }
            if ($('#txtsearchPer').val().length < 2) {
                return;
            }
            $('#tblsearchper').empty();
            AjaxData({
                url: 'ProgramDecor.asmx/FilterPersonel',
                param: { partName: $('#txtsearchPer').val() },
                func: perSearch
            });
            function perSearch(e) {
                var d = JSON.parse(e.d);
                if (d.length > 0) {
                    var b = [];
                    for (var i = 0; i < d.length; i++) {
                        b.push('<tr><td perid="' + d[i].ItemId + '">' + d[i].ItemName + '</td></tr>');
                    }

                    $('#tblsearchper').append(b.join(''));

                }

            }
        }

        var perData = {};
        var itemData = {};
        var golData = {};
        $('#tblsearchitem').on('click', 'tr td', function () {
            itemData.ItemId = $(this).attr('itemid');
            itemData.ItemName = $(this).text();
            $('#tblsearchitem').empty();
            $('#txtsearchItem').val('');
            $('.itembadge').append(itemData.ItemName);
        });
        $('#tblsearchper').on('click', 'tr td', function () {
            perData.ItemId = $(this).attr('perid');
            perData.ItemName = $(this).text();
            $('#tblsearchper').empty();
            $('#txtsearchPer').val('');
            $('.perbadge').append(perData.ItemName);
            $('.peridbadge').append(perData.ItemId);
        });
        $('#tblgol').on('click', 'tr td', function () {
            golData.Id = $(this).attr('golid');
            golData.GolName = $(this).text();
            $('#tblgol').empty();
            $('#txtsearchGol').val('');
            $('.golbadge').append(golData.GolName);
        });

        $('.golbadge').on('click', function () {
            $(this).empty();
            golData = {};
        });

        $('.itembadge').on('click', function () {
            $(this).empty();
            itemData = {};
        });
        $('.perbadge').on('click', function () {
            $(this).empty();

            $('#txtsearchPer').text('');
            $('#txtsearchPer').val('');
            $('.peridbadge').empty();
            perData = {};
        });

        function Sabt() {
            if (perData.ItemId == undefined) {
                RedAlert('txtsearchPer', 'لطفا نام پرسنل را انتخاب نمایید');
                return;
            }
            if (itemData.ItemId == undefined) {
                RedAlert('txtsearchItem', 'لطفا آیتم را انتخاب نمایید');
                return;
            }
            if (golData.Id == undefined) {
                RedAlert('txtsearchGol', 'لطفا طرح را انتخاب نمایید');
                return;
            }
            if ($('#txtTedad').val() === '') {
                RedAlert('txtTedad', 'لطفا تعداد را مشخص نمایید');
                return;
            }
            var data = {

                PerID: perData.ItemId,
                ItemId: itemData.ItemId,
                GolId: golData.Id,
                Darage: $('#drDarage :selected').val(),
                Tedad: faTOen($('#txtTedad').val()),
                Tarikh: $('#txtPerDate').val()

            };
            AjaxData({
                url: 'ProgramDecor.asmx/SaveItem',
                param: { obj: data },
                func: saved
            });

            function saved() {
                GreenAlert('n', 'با موفقیت ثبت شد');
                //ClearFields('inputs:not([name="txtPerDate"])');
                $('#txtTedad').val('');
                $('#txtsearchPer').val('');

                golData = {};
                itemData = {};
                perData = {};
                $('.itembadge').empty();
                $('.golbadge').empty();
                $('.perbadge').empty();
                $('.peridbadge').empty();
                GetItemTable();
            }
        }

        var td, tr, id, ele;
        $('#tblItems').on('click', 'tr td a[name=edit]', function () {


            if (perData.ItemId) {
                return;
            }

            id = $(this).attr('id');
            tr = $(this).parent().parent();
            $(tr).css('background-color', 'lightgreen');
            perData.ItemId = $(tr).find('td:eq(0)').attr('perid');
            perData.ItemName = $(tr).find('td:eq(0)').text();
            itemData.ItemId = $(tr).find('td:eq(1)').attr('itemid');
            itemData.ItemName = $(tr).find('td:eq(1)').text();
            golData.Id = $(tr).find('td:eq(2)').attr('golid');
            golData.GolName = $(tr).find('td:eq(2)').text();



            $('#drDarage').val($(tr).find('td:eq(3)').attr('did'));
            $('#txtTedad').val($(tr).find('td:eq(4)').text());

            $('.golbadge').append(golData.GolName);
            $('.itembadge').append(itemData.ItemName);
            $('.perbadge').append(perData.ItemName);
            $('.peridbadge').append(perData.ItemId);
            $('#btnsabt').hide();
            $('#btnedit').show();
            $('#btncancel').show();
        });
        var targetTr;
        var ID;

        var _editCode = 0;
        $('#tblItems').on('click', 'tr td a[name=del]', function () {
            ID = $(this).attr('id');
            tr = $(this).parent().parent();
            $(tr).css('background-color', 'lightgreen');
            targetTr = $(this).closest('tr');
            $('#subname').text($(this).closest('tr').find('td:eq(0)').text());

            $('#ModalDelete').show();
        });
        function deleterecord() {

            AjaxData({
                url: 'ProgramDecor.asmx/DeleteRecord',
                param: { recid: ID },
                func: deleteDone
            });

            function deleteDone() {
                GreenAlert('n', 'با موفقیت حذف شد');
                $('#ModalDelete').hide();

                cancel();
                GetItemTable();
            }
        }
        function cancel() {
            $(tr).css('background-color', '');
            $('#txtTedad').val('');
            $('#txtsearchPer').val('');

            golData = {};
            itemData = {};
            perData = {};
            $('.itembadge').empty();
            $('.golbadge').empty();
            $('.perbadge').empty();
            $('.peridbadge').empty();

            id = 0;

            $('#btnsabt').show();
            $('#btnedit').hide();
            $('#btncancel').hide();
        }

        function update() {
            if (perData.ItemId == undefined) {
                RedAlert('txtsearchPer', 'لطفا نام پرسنل را انتخاب نمایید');
                return;
            }
            if (itemData.ItemId == undefined) {
                RedAlert('txtsearchItem', 'لطفا آیتم را انتخاب نمایید');
                return;
            }
            if (golData.Id == undefined) {
                RedAlert('txtsearchGol', 'لطفا طرح را انتخاب نمایید');
                return;
            }
            if ($('#txtTedad').val() === '') {
                RedAlert('txtTedad', 'لطفا تعداد را مشخص نمایید');
                return;
            }
            var data = {
                Id: id,
                PerID: perData.ItemId,
                ItemId: itemData.ItemId,
                GolId: golData.Id,
                Darage: $('#drDarage :selected').val(),
                Tedad: faTOen($('#txtTedad').val()),
                Tarikh: $('#txtPerDate').val()

            };
            AjaxData({
                url: 'ProgramDecor.asmx/UpdateItem',
                param: { obj: data },
                func: updated
            });

            function updated() {
                GreenAlert('n', 'با موفقیت ثبت شد');
                cancel();
                GetItemTable();
            }
        }







        $(document).click(function (event) {
            if (!$(event.target).closest('td').length) {
                $(ele).remove();
                if (td !== undefined) {
                    td.css({ 'background-color': '' });
                }
            }
        });
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
        kamaDatepicker('txtPerDate', customOptions);
    </script>




</asp:Content>

