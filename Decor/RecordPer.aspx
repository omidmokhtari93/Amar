<%@ Page Title="رکورد پرسنلی" Language="C#" MasterPageFile="~/Decor/MasterPage.master" AutoEventWireup="true" CodeFile="RecordPer.aspx.cs" Inherits="Decor_RecordPer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../Content/kamadatepicker.js"></script>
    <link href="../Content/kamadatepicker.css" rel="stylesheet" />
    <script src="Scripts/search.js"></script>
    <link href="Scripts/search.css" rel="stylesheet" />
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
            float: right !important;
        }

            .nav-tabs > li a {
                font-size: 15pt;
                font-weight: bold;
            }
    </style>


    <ul class="nav nav-tabs" style="padding: 0px 15px 0 15px; direction: rtl!important; margin-top: 10px;">

        <li class="active"><a data-toggle="tab" href="#Personel">ثبت رکورد کاری</a></li>
        <li><a data-toggle="tab" href="#ShowRecord">مشاهده/گزارش رکورد کاری</a></li>
        <li><a data-toggle="tab" href="#ShowDetail" onclick="searchJsInitialize()">گزارش  جزئیات رکورد کاری</a></li>
        
    </ul>
    <asp:Panel id="pnlpass" runat="server" >
        <div class="panel-body" id="inputs">
                            <div class="row" style="text-align: right;">
                                <div class="col-sm-4">
                                   
                                </div>
                                <div class="col-sm-2">
                                   
                                    <asp:Button ID="btnlogin" OnClick="btnlogin_OnClick" runat="server" Text="ورود" CssClass="button" /> 
                                </div>
                                <div class="col-sm-2">
                                   
                                    <input autocomplete="off" class="form-control text-center" placeholder="رمز عبور" runat="server" style="width:100%;" type="password" id="txtpass" tabindex="2" />
                                    
                                </div>
                                <div class="col-sm-4">
                                    
                                </div>
                            </div>

            </div>
    </asp:Panel>
    <asp:Panel id="pnlaree" runat="server" Visible="False">
    <div class="tab-content">
        <div id="Personel" class="tab-pane fade in active">
            <div class="menubody">
                <div class="row" style="text-align: right;">
                    <div class="panel panel-primary" style="position: relative;">
                        <div class="panel-heading" style="text-align: center">ثبت رکورد کاری پرسنل</div>

                        <div class="panel-body" id="inputs">
                            <div class="row" style="text-align: right;">
                                <div class="col-sm-4">
                                </div>
                                <div class="col-sm-4">
                                </div>
                                <div class="col-sm-4">
                                </div>
                            </div>
                            <div class="row" style="text-align: right;">

                                <div class="col-sm-2">
                                    <label style="display: block;">تاریخ </label>
                                    <input id="txtPerDate" clientidmode="Static" runat="server" class="form-control text-center" style="cursor: pointer;" />
                                </div>
                                <div class="col-sm-4">
                                    <button type="button" class="button" onclick="Sabt();" style="margin-top: 35px; width: auto;" tabindex="3" id="btnsabt">ثبت</button>
                                    <button type="button" class="button" onclick="update();" tabindex="4" style="display: none; margin-top: 35px;" id="btnedit">ویرایش</button>
                                    <button type="button" class="button" onclick="cancel();" tabindex="5" style="display: none; margin-top: 35px;" id="btncancel">انصراف</button>
                                </div>
                                <div class="col-sm-2">
                                    <label style="display: block;">رکورد کاری</label>
                                    <input autocomplete="off" class="form-control text-center" style="width: 100%;" type="number" id="txtTedad" tabindex="2" />
                                </div>
                                <div class="col-sm-4">

                                    <label>نام پرسنلی</label>
                                    <div id="per"></div>


                                </div>
                            </div>

                        </div>
                        <div id="ModalDelete" class="modal" style="direction: rtl; top: 200px; right: 38.5%;">
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
                        </div>
                        <div class="panel-footer" id="tblarea" style="position: relative;">
                            <table class="table table-bordered" id="tblItems" style="position: relative;"></table>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div id="ShowRecord" class="tab-pane fade">
            <div class="menubody">
                <div class="row" style="text-align: right;">
                    <div class="panel panel-primary" style="position: relative;">
                        <div class="panel-heading" style="text-align: center">گزارش رکورد کاری</div>

                        <div class="panel-body" id="inputs">
                            <div class="row" style="text-align: right;">
                                <div class="col-sm-2">
                                    <button type="button" class="button" onclick="showTransfer();" style="margin-top: 35px; width: auto;" tabindex="4" id="btntransfer">انتقال آمار اضافه به ماه آینده</button>
                                </div>
                                <div class="col-sm-2">
                                    <button type="button" class="button" onclick="Show();" style="margin-top: 35px; width: auto;" tabindex="3" id="btnShow">نمایش</button>
                                </div>
                                <div class="col-sm-2">
                                    <label style="display: block;">تا تاریخ</label>
                                    <input id="txtenddate" clientidmode="Static" runat="server" class="form-control text-center" style="cursor: pointer;" />
                                </div>
                                <div class="col-sm-2">
                                    <label style="display: block;">از تاریخ</label>
                                    <input id="txtstartdate" clientidmode="Static" runat="server" class="form-control text-center" style="cursor: pointer;" />
                                </div>
                                <div class="col-sm-4">
                                </div>
                            </div>


                        </div>

                        <div class="panel-footer" id="pnltransfer"   style="text-align: left; display: none;">
                            <div class="row" style="text-align: right;">
                                <div class="col-sm-4">
                                    
                                </div>
                                
                                <div class="col-sm-2">
                                    <button type="button" class="button" onclick="Transfer();" style="margin-top: 35px; width: auto;" tabindex="4" id="btntransfering">انتقال آمار اضافه به ماه آینده</button>
                                </div>
                                <div class="col-sm-2">
                                    <label style="display: block;">روز انتقالی در ماه جدید</label>
                                    <input id="txttransferdate" clientidmode="Static" runat="server" class="form-control text-center" style="cursor: pointer;" />
                                </div>
                                <div class="col-sm-4">
                                </div>
                            </div>
                        </div>

                        <div class="panel-footer" id="tblarea" style="position: relative;">

                            <table class="table table-bordered" id="tblRecordShow" style="position: relative;"></table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div id="ShowDetail" class="tab-pane fade">

            <div class="menubody">
                <div class="row" style="text-align: right;">
                    <div class="panel panel-primary" style="position: relative;">
                        <div class="panel-heading" style="text-align: center">گزارش جزئیات رکورد پرسنل</div>

                        <div class="panel-body" id="inputs">
                            <div class="row" style="text-align: right;">
                                <div class="col-sm-2">
                                </div>
                                <div class="col-sm-2">
                                    <button type="button" class="button" onclick="Showdetail();" style="margin-top: 35px; width: auto;" tabindex="3" id="btnShowDetail">نمایش</button>
                                </div>
                                <div class="col-sm-2">
                                    <label style="display: block;">تا تاریخ</label>
                                    <input id="txtdetailenddate" clientidmode="Static" runat="server" class="form-control text-center" style="cursor: pointer;" />
                                </div>
                                <div class="col-sm-2">
                                    <label style="display: block;">از تاریخ</label>
                                    <input id="txtdetailstartdate" clientidmode="Static" runat="server" class="form-control text-center" style="cursor: pointer;" />
                                </div>
                                <div class="col-sm-4">
                                    <label>نام پرسنلی</label>
                                    <div id="perdetail"></div>
                                </div>
                            </div>


                        </div>

                        <div class="panel-footer" style="text-align: left;">
                        </div>

                        <div class="panel-footer" id="tblareadetail" style="position: relative;">

                            <table class="table table-bordered" id="tblRecorddetail" style="position: relative;"></table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    </asp:Panel>
    <script>
        function searchJsInitialize(e) {
            setTimeout(function () {
                    $('#perdetail').search({
                        url: 'ProgramDecor.asmx/FilterPersonel',
                        width: '100%',
                        placeholder: 'جستجو',
                        arg: 'partName',
                        text: 'ItemName',
                        id: 'ItemId',
                        func: perDetail
                    });

                },
                200);
            function perDetail(id, text) {
                perData.ItemId = id;
            }
        }
        $('#txtPerDate').change(function () {
            GetItemTable();
        });


        var nav;//page number 
        GetItemTable();
        function GetItemTable() {
            $('#tblItems').empty();
            AjaxData({
                url: 'ProgramDecor.asmx/GetRecordDecorTime',
                param: { tarikh: $('#txtPerDate').val() },
                func: createItemsTable
            });
            function createItemsTable(e) {
                var d = JSON.parse(e.d);
                var k = 0;
                if (d.length > 0) {
                    var b = [];
                    b.push('<tr><th>ردیف</th><th>نام پرسنل</th><th>رکورد کار روزانه</th><th></th><th></th></tr>');
                    for (var i = 0; i < d.length; i++) {

                        k = i + 1;
                        b.push('<tr>' +
                            '<td >' + k + '</td>' +
                            '<td perid="' + d[i].PerId + '">' + d[i].PerName + ' ' + d[i].PerId + '</td>' +

                            '<td style="position:relative;direction: ltr;">' + d[i].Tedad + '</td>' +

                            '<td><a name="edit" id="' + d[i].Id + '" class="glyphicon glyphicon-pencil"></a></td>' +
                            '<td><a name="del" id="' + d[i].Id + '" class="glyphicon glyphicon-trash"></a></td>' +
                            '</tr>');
                    }
                    $('#tblItems ').append(b.join(''));
                }

            }
        }

        function showTransfer() {
            $('#pnltransfer').show();
            $('#btntransfer').hide();
        }

        function Transfer() {
            if ($('#txtstartdate').val() == undefined || $('#txtenddate').val() == undefined || $('#txttransferdate').val()==undefined) {
                RedAlert('per', 'لطفا تاریخ ها را به درستی وارد نمایید');
                return;
            }
            
            AjaxData({
                url: 'ProgramDecor.asmx/AddTimeToMounth ',
                param: { tarikhS: $('#txtstartdate').val(), tarikhE: $('#txtenddate').val(), tarikhN: $('#txttransferdate').val()},
                func: saved
            });

            function saved() {
                GreenAlert('n', 'انتقال آمار با موفقیت انجام شد');
            }
            $('#pnltransfer').hide();
            $('#btntransfer').show();
        }
        function Show() {
            $('#tblRecordShow').empty();
            AjaxData({
                url: 'ProgramDecor.asmx/GetRecordDecorReport',
                param: { tarikhs: $('#txtstartdate').val(), tarikhe: $('#txtenddate').val() },
                func: createItemsTable
            });
            function createItemsTable(e) {
                var d = JSON.parse(e.d);
                var k = 0;
                if (d.length > 0) {
                    var b = [];
                    b.push('<tr><th>ردیف</th><th>نام پرسنل</th><th>مجموع رکورد</th></tr>');
                    for (var i = 0; i < d.length; i++) {

                        k = i + 1;
                        b.push('<tr>' +
                            '<td >' + k + '</td>' +
                            '<td perid="' + d[i].PerId + '">' + d[i].PerName + ' * ' + d[i].PerId + '</td>' +

                            '<td style="position:relative;direction: ltr;">' + d[i].Tedad + '</td>' +


                            '</tr>');
                    }
                    $('#tblRecordShow ').append(b.join(''));
                }

            }
        }

        function Showdetail() {
            $('#tblRecorddetail').empty();
            AjaxData({
                url: 'ProgramDecor.asmx/GetRecordDecorDetail',
                param: { tarikhs: $('#txtdetailstartdate').val(), tarikhe: $('#txtdetailenddate').val(), peridd: perData.ItemId },
                func: createItemsTable
            });
            function createItemsTable(e) {
                var d = JSON.parse(e.d);
                var k = 0;
                if (d.length > 0) {
                    var b = [];
                    b.push('<tr><th>ردیف</th><th>نام پرسنل</th><th>رکورد</th><th>تاریخ</th></tr>');
                    for (var i = 0; i < d.length; i++) {

                        k = i + 1;
                        if (k == d.length) {
                            b.push('<tr>' + '<td >' + k +  '</td>' +
                                '<td >'  +  ' جمع رکورد ' +  '</td>' +
                                '<td style="position:relative;direction: ltr;">' +  d[i].Tedad +  '</td>' +
                                '<td style="position:relative;direction: ltr;">' +  d[i].Tarikh +  '</td>' +
                                '</tr>');
                        } else {
                            b.push('<tr>' + '<td >' + k + '</td>' +
                                '<td perid="' + d[i].PerId + '">' + d[i].PerName + ' * ' + d[i].PerId + '</td>' +
                                '<td style="position:relative;direction: ltr;">' + d[i].Tedad + '</td>' +
                                '<td style="position:relative;direction: ltr;">' + d[i].Tarikh + '</td>' +
                                '</tr>');
                        }
                    }
                    $('#tblRecorddetail ').append(b.join(''));
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
                        b.push('<tr><td perid="' + d[i].ItemId + '">' + d[i].ItemName + ' ' + d[i].ItemId + '</td></tr>');
                    }

                    $('#tblsearchper').append(b.join(''));

                }

            }
        }

        var perData = {};
        var itemData = {};
        var golData = {};



        function Sabt() {
            if (perData.ItemId == undefined) {
                RedAlert('per', 'لطفا نام پرسنل را انتخاب نمایید');
                return;
            }

            if ($('#txtTedad').val() === '') {
                RedAlert('txtTedad', 'لطفا تعداد را مشخص نمایید');
                return;
            }
            var data = {

                PerID: perData.ItemId,

                Tedad: faTOen($('#txtTedad').val()),
                Tarikh: $('#txtPerDate').val()

            };
            AjaxData({
                url: 'ProgramDecor.asmx/SaveRecordPer',
                param: { obj: data },
                func: saved
            });

            function saved() {
                GreenAlert('n', 'با موفقیت ثبت شد');
                //ClearFields('inputs:not([name="txtPerDate"])');
                $('#txtTedad').val('');

                $('#per').focus();

                golData = {};
                itemData = {};
                perData = {};


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
            perData.ItemId = $(tr).find('td:eq(1)').attr('perid');
            perData.ItemName = $(tr).find('td:eq(1)').text();
            $('#txtTedad').val($(tr).find('td:eq(2)').text());


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
                url: 'ProgramDecor.asmx/DeleteRecordTime',
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


            perData = {};

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

            if ($('#txtTedad').val() === '') {
                RedAlert('txtTedad', 'لطفا تعداد را مشخص نمایید');
                return;
            }
            var data = {
                Id: id,
                PerID: perData.ItemId,

                Tedad: faTOen($('#txtTedad').val()),


            };
            AjaxData({
                url: 'ProgramDecor.asmx/UpdateDecorTime',
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
        kamaDatepicker('txtenddate', customOptions); 
        kamaDatepicker('txtstartdate', customOptions);
        kamaDatepicker('txtdetailenddate', customOptions);
        kamaDatepicker('txtdetailstartdate', customOptions);
        kamaDatepicker('txttransferdate', customOptions);
        

        
            $('#per').search({
                url: 'ProgramDecor.asmx/FilterPersonel',
                width: '100%',
                placeholder: 'جستجو',
                arg: 'partName',
                text: 'ItemName',
                id: 'ItemId',
                func: Searchper
            });

            function Searchper(id, text) {
                perData.ItemId = id;


            }    
        
    </script>
   
</asp:Content>

