<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="program.aspx.cs" Inherits="program" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <link href="Content/styles.css" rel="stylesheet" />
    <script src="../bastebandi/Scripts/notify.min.js"></script>
    <style>
        .loadingg {
            width: 20px;
            height: 20px;
            margin-bottom: 4px;
            margin-left: 15px;
        }

        table tr td a {
            color: blue;
        }

        .box {
            border: 3px solid darkgray;
            border-radius: 5px;
        }

        .halfcut-table {
            width: 120px;
        }

            .halfcut-table tr, .halfcut-table tr td {
                width: 100%;
            }

                .halfcut-table tr td:nth-child(2) {
                    padding: 0 5px 0 5px !important;
                }
    </style>
    <div class="panel panel-primary">
        <div class="panel-heading">
            برنامه
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-12">
                    <asp:Button runat="server" CssClass="button" Style="float: left; margin-bottom: 15px;" Text="بازگشت به آخرین گل جستجو شده" OnClick="OnClick" />
                    <input type="button" value="جستجو" class="button" onclick="SearchinGols()" />
                    <input type="text" class="form-control rtl" id="txtGolName" />
                    : نام گل
                    <img src="../bastebandi/Images/pIkfp.gif" class="loadingg" style="display: none;" />
                    <hr style="border-bottom: 1px solid black" />
                    <div class="mt-3" id="gozareshArea">
                        <table class="table table-bordered" id="tableGols"></table>
                    </div>
                </div>
            </div>
            <div class="row" id="ProgramArea" style="display: none;">
                <div class="col-md-2 pr-0">
                    <div class="box">
                        <div>.:: برش خورده ها ::.</div>
                        <table class="halfcut-table" id="tableBoreshkhorde"></table>
                    </div>
                </div>
                <div class="col-md-10 pl-1">
                    <div class="box mb-1">
                        <div>.:: فرم های کامل ::.</div>
                        <div id="formsArea"></div>
                    </div>
                    <div class="box">
                        <div>.:: نیم برش ها ::.</div>
                        <div id="halfcutArea"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var loading = $('.loadingg');
        function ElementRedalert(ele, pos, txt) {
            var element;
            if (typeof ele == "string") { element = $("#" + ele); } else { element = ele; }
            $(element).notify(txt, { position: pos, className: "error" });
        }

        $('#tableGols').on('click', 'tr th input[type=checkbox]',
            function () {
                if (this.checked) {
                    $('#tableGols').find('tr td input[type=checkbox]').prop('checked', true);
                } else {
                    $('#tableGols').find('tr td input[type=checkbox]').prop('checked', false);
                }
            })

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

        function SearchinGols() {
            if ($('#txtGolName').val() == '') {
                ElementRedalert('txtGolName', 'top center', 'لطفا فیلد را تکمیل کنید')
                loading.hide();
                return;
            }
            $('#ProgramArea').hide();
            loading.show()
            AjaxData({
                url: 'amar.asmx/SearchInGol',
                param: { gol: $('#txtGolName').val() },
                func: createTableGol
            })

            function createTableGol(e) {
                var data = JSON.parse(e.d);
                if (!data.length) {
                    loading.hide();
                    return
                };
                var tableBody = ['<tr><th>ردیف</th><th></th><th>نام گل</th><th>رنگ</th><th>نوع</th><th>قالب</th><th>کد</th><th>تاریخ</th>' +
                    '<th>مشتری</th><th>شرکت</th><th>توضیحات</th></tr>'];
                for (var i = 0; i < data.length; i++) {
                    tableBody.push('<tr><td>' + (i + 1) + '</td><td><a href="#" golid="' + data[i].Id + '">انتخاب</a></td>' +
                        '<td>' + data[i].GolName + '</td>' +
                        '<td>' + data[i].Color + '</td>' +
                        '<td>' + data[i].ColorType + '</td><td>' + data[i].Format + '</td><td>' + data[i].Code + '</td>' +
                        '<td>' + data[i].EnterDate + '</td><td>' + data[i].Customer + '</td>' +
                        '<td>' + data[i].Company + '</td><td>' + data[i].Comment + '</td></tr>')
                }
                $('#tableGols').empty().append(tableBody.join('')).css('width', '');
                $('#btnGozaresh').remove();
                loading.hide();
            }
        }

        var golId = 0;
        $(document).on('click', 'table tr td a',
            function () {
                golId = $(this).attr('golid');
                loading.show();
                AjaxData({
                    url: 'amar.asmx/GetItemsByGolId',
                    param: { gol: $(this).attr('golid') },
                    func: createItmsTable
                })

                function createItmsTable(e) {
                    var data = JSON.parse(e.d);
                    var body = ['<tr><th>آیتم ها</th><th><input type="checkbox"/></th></tr>'];
                    for (var i = 0; i < data.length; i++) {
                        body.push('<tr>' +
                            '<td>' + data[i].Item + '</td>' +
                            '<td><input type="checkbox" itemid="' + data[i].ItemId + '" /></td>' +
                            '</tr>')
                    }
                    var button = '<div class="mb-2" id="btnGozaresh">' +
                        '<button class="button" type="button" onclick="GetProgram()">گزارش گیری</button>' +
                        '<select class="form-control ml-2" id="drArrange">' +
                        '<option value="1">سرویسی</option>' +
                        '<option value="2">فله</option>' +
                        '<option value="-1">فله و سرویسی</option>' +
                        '</select>' +
                        '</div>'
                    $('#tableGols').empty().append(body.join('')).css('width', '15%');
                    $('#gozareshArea').prepend(button);
                    loading.hide();
                }
            })

        function GetTableCheckbox() {
            var checked = []
            $("#tableGols tr td input[type=checkbox]:checked").each(function (x, y) {
                checked.push($(this).attr('itemid'));
            });
            return checked;
        }

        function GetProgram() {
            if (!GetTableCheckbox().length) {
                ElementRedalert('tableGols', 'top center', 'حداقل یک آیتم را انتخاب نمایید')
                return;
            }
            loading.show();
            AjaxData({
                url: 'amar.asmx/GetProgram',
                param: {
                    items: GetTableCheckbox(),
                    golId: golId,
                    arrange: $('#drArrange :selected').val()
                },
                func: createProgramTables
            })

            function createProgramTables(e) {
                var data = JSON.parse(e.d);
                var tableBody = [];
                for (var i = 0; i < data.Full.length; i++) {
                    tableBody.push('<table class="halfcut-table">' +
                        '<tr><th colspan="2">' + data.Full[i].FormName + '</th></tr>' +
                        '<tr><th colspan="2">' + data.Full[i].Count + ' برگ </th></tr>');
                    for (var j = 0; j < data.Full[i].FormItemses.length; j++) {
                        tableBody.push('<tr><td>' + data.Full[i].FormItemses[j].Name + '</td>' +
                            '<td>' + data.Full[i].FormItemses[j].ItemInSheet + '</td></tr>');
                    }
                    tableBody.push('</table>');
                }
                $('#formsArea').empty().append(tableBody.join(''));
                tableBody = [];
                for (var i = 0; i < data.Half.length; i++) {
                    tableBody.push('<table class="halfcut-table">' +
                        '<tr><th>' + data.Half[i].FormName + '</th>' +
                        '<th><span class="glyphicon glyphicon-question-sign"' +
                        ' hid="' + data.Half[i].Id + '" formid="' + data.Half[i].FormId + '"></span></th>' +
                        '</tr>' +
                        '<tr><th colspan="2">' + data.Half[i].Count + ' برگ </th></tr>');
                    for (var j = 0; j < data.Half[i].FormItemses.length; j++) {
                        tableBody.push('<tr><td>' + data.Half[i].FormItemses[j].Name + '</td>' +
                            '<td>' + data.Half[i].FormItemses[j].ItemInSheet + '</td></tr>');
                    }
                    tableBody.push('</table>');
                }
                $('#halfcutArea').empty().append(tableBody.join(''));
                tableBody = [];
                for (var i = 0; i < data.Cutted.length; i++) {
                    tableBody.push('<tr>' +
                        '<td>' + data.Cutted[i].Item + '</td>' +
                        '<td>' + data.Cutted[i].Tedad + '</td>' +
                        '</tr>')
                }
                $('#tableBoreshkhorde').empty().append(tableBody.join(''));
                $('#tableGols').empty();
                $('#btnGozaresh').remove();
                loading.hide();
                $('#ProgramArea').show();
            }
        }


        $(document).on('mouseleave', 'table tr th span.glyphicon-question-sign', function () {
            $('.tooltipp').remove();
        })
        $(document).on('click', 'table tr th span.glyphicon-question-sign', function () {
            var pos = $(this).offset();
            AjaxData({
                url: 'halfcut.asmx/GetUnavailableHalfcutItem',
                param: {
                    halfCutId: $(this).attr('hid'),
                    formId: $(this).attr('formid')
                },
                func: createUnavailableHalfcutItemTable
            })

            function createUnavailableHalfcutItemTable(e) {
                var data = JSON.parse(e.d);
                var body = [];
                if (data.length) {
                    body.push('<table>');
                    data.forEach(function (e) {
                        body.push('<tr>' +
                            '<td>' + e.ItemName + '</td>' +
                            '<td>' + e.Count + '</td>' +
                            '</tr>');
                    })
                    body.push('</table>');
                }
                var element = $('<div class="tooltipp">' + body.join('') + '</div>');
                $('body').append(element);
                element.css('top', pos.top - element.height() - 15)
                element.css('left', pos.left - (element.width() / 2) + 10)
            }
        })

        $(document).on('click', function (event) {
            if (!event.target.closest('.halfcut-table')
                && !event.target.closest('.tooltipp')) {
                $('.tooltipp').remove();
            }
        });

    </script>
</asp:Content>

