<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="halfcut_test.aspx.cs" Inherits="flower_depot_halfcut_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <link href="Content/styles.css" rel="stylesheet" />
    <script src="Scripts/scripts.js"></script>
    <script src="../bastebandi/Scripts/notify.min.js"></script>
    <div class="loading" style="display: none;">
        <img src="Images/load.gif" />
    </div>

    <div class="panel panel-primary">
        <div class="panel-heading" style="position: relative;">
            ثبت نیم برش
        </div>
    </div>
    <div id="information" class="rtl" style="position: relative;">
        <asp:Button runat="server" ID="btnBack" CssClass="button" OnClick="btnBack_OnClick" Text="بازگشت" Style="float: left;" />

        نام گل :
        <asp:Label ID="lbl_flowname" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        کد گل :
        <asp:Label ID="lbl_flowcode" Font-Names="tahoma" dir="ltr" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        رنگ :
        <asp:Label ID="lbl_color" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        نوع :
        <asp:Label ID="lbl_colortype" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        قالب :
        <asp:Label ID="lbl_format" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        مشتری :
        <asp:Label ID="lbl_customer" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        شرکت :
        <asp:Label ID="lbl_company" runat="server"></asp:Label>
    </div>
    <div class="mt-3 rtl">
        شماره فرم : 
        <asp:DropDownList runat="server" AppendDataBoundItems="True" CssClass="form-control ml-3 ltr" ClientIDMode="Static" ID="drForms" DataSourceID="SqlForms" DataTextField="form_number" DataValueField="id">
            <asp:ListItem Value="-1">انتخاب کنید</asp:ListItem>
        </asp:DropDownList>
        تعداد برگ موجود : 
        <input type="text" readonly class="form-control text-center ml-3" id="txtTedadBargMojood" />
        تعداد برگ نیم برش شده : 
        <input type="number" class="form-control text-center ml-3" id="txtTedadBargNimBoresh" dir="ltr" />
        برش کامل : 
        <button class="button" type="button" onclick="ChangeBoreshKamel(true)">+</button>
        <input class="form-control text-center ltr" type="number" id="txtBoreshKamel" placeholder="تعداد" />
        <button class="button ml-3" type="button" onclick="ChangeBoreshKamel(false)">-</button>
        <input type="checkbox" id="chOldGol" class="mt-0" style="vertical-align: middle" />
        گل قدیمی 
    </div>
    <div id="formInfoArea" class="mt-3 rtl">
    </div>
    <div class="row mt-3" style="position: relative;">
        <div class="col-md-4" id="historyArea">
            <table id="tableFormItemsHistory" class="table table-bordered paginated mt-1"></table>
        </div>
        <div class="col-md-4" id="formItemsArea">
            <table id="tableFormItems" class="table table-bordered"></table>
            <button class="button" type="button" id="sabtHalfCut" onclick="SabtHalfCut();">ثبت</button>
        </div>
        <div class="col-md-4" style="position: relative;"></div>
    </div>
    <div class="row mt-3">
        <div class="col-md-12" id="HalfCutTablesArea">
        </div>
    </div>
    <asp:SqlDataSource ID="SqlForms" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT id, form_number FROM flower_forms_entry WHERE (flower_id = @fid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="fid" QueryStringField="fid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <script>
        var loading = $('.loading');
        $(function () {
            $(document).on('change', 'input#checkAllFormItems', function (x) {
                if (x.target.checked) {
                    $('#tableFormItems').find('tr td input[type=checkbox]').prop('checked', true);
                } else {
                    $('#tableFormItems').find('tr td input[type=checkbox]').prop('checked', false);
                }
            })

            $('#drForms').change(function () {
                if ($('#drForms :selected').val() == '-1') {
                    return;
                }
                GetFormInformation();
            })

            $(document).on('click', 'table tr th span.glyphicon-question-sign', function () {
                $('.tooltipp').remove();
                var pos = $(this).offset();
                AjaxData({
                    url: 'halfcut.asmx/GetUnavailableHalfcutItem',
                    param: {
                        halfCutId: $(this).parent().attr('hid'),
                        formId: $('#drForms :selected').val()
                    },
                    func: createUnavailableHalfcutItemTable
                })

                function createUnavailableHalfcutItemTable(e) {
                    var data = JSON.parse(e.d);
                    var body = [];
                    if (data.length) {
                        body.push('<table>');
                        data.forEach(function (e) {
                            body.push('<tr><td>' + e.ItemName + '</td><td>' + e.Count + '</td></tr>');
                        })
                        body.push('</table>');
                    }
                    var element = $('<div class="tooltipp">' + body.join('') + '</div>');
                    $('body').append(element);
                    element.css('top', pos.top - element.height() - 15)
                    element.css('left', pos.left - (element.width() / 2) + 10)
                }
            })

            $(document).on('click', 'table tr th span.glyphicon-trash', function () {
                $('#editElements').remove();
                $('.tooltipp').remove();
                var pos = $(this).offset();
                var element = $('<div class="tooltipp"><div class="mb-1 text-center">حذف شود ؟</div><div class="text-center">' +
                    '<button class="button ml-1" onclick="AcceptDeleteHalfcut(' + $(this).parent().attr('hid') + ')">بله</button>' +
                    '<button class="button" onclick="IgnoreDeleteHalfcut(' + $(this).parent().attr('hid') + ')">خیر</button>' +
                    '</div></div>');
                $('body').append(element);
                element.css('top', pos.top - element.height() - 15)
                element.css('left', pos.left - (element.width() / 2) + 10)
            })

            $(document).on('click', 'table tr th span.glyphicon-pencil', function () {
                $('#HalfCutTablesArea table tr th').css('background-color', '');
                $('.tooltipp').remove();
                $('#sabtHalfCut').hide();
                var halfCutId = $(this).parent().attr('hid');
                var tedadNimboreshMojood = $(this).parent().parent().parent().find('th[tedad]').attr('tedad');
                $(this).parent().css('background-color', '#feafaf')
                loading.show();
                AjaxData({
                    url: 'halfcut.asmx/GetHalfCutItems',
                    param: { halfCutId: halfCutId },
                    func: createHalfCutTableOnEdit
                })

                function createHalfCutTableOnEdit(e) {
                    $('#formItemsArea').find('#editElements').remove();
                    var data = JSON.parse(e.d);
                    $('#tableFormItems').empty();
                    var tableBody = [];
                    tableBody.push('<tr>' +
                        '<th>نام آیتم</th>' +
                        '<th>تعداد آیتم</th>' +
                        '<th><input type="checkbox" id="checkAllFormItems" /></th>' +
                        '<th>تعداد آیتم موجود</th>' +
                        '</tr>');
                    data.forEach(function (e) {
                        tableBody.push('<tr><td itemid="' + e.Id + '">' + e.Name + '</td>' +
                            '<td>' + e.ItemInSheet + '</td><td><input type="checkbox" /></td>' +
                            '<td><input type="number" class="form-control text-center"/></td></tr>')
                    })
                    $('#tableFormItems').append(tableBody.join(''));
                    var editElements = $('<div class="row mb-2" style="margin:0" id="editElements"><div class="col-md-2 pl-0 ">' +
                        '&nbsp;<button class="button" style="width:100%;padding:5px 5px;" onclick="cancelEditHalfCut();" type="button">انصراف</button>' +
                        '</div><div class="col-md-2 pl-0 pr-0">&nbsp;<button class="button" style="width:100%;padding:5px 5px;" ' +
                        'onclick="editHalfCut(' + halfCutId + ')" type="button">ویرایش</button></div><div class="col-md-4 pr-0">' +
                        'تعداد برگ<input type="number" id="txtEditTedadBarg" style="width:100%;" class="form-control text-center"/>' +
                        '</div><div class="col-md-4 pr-0">تعداد برگ موجود<input readonly style="width:100%;" id="txtEditAvailableHalfcut" ' +
                        'class="form-control text-center"/></div></div>')
                    $('#formItemsArea').prepend(editElements);
                    $('#txtEditAvailableHalfcut').val(tedadNimboreshMojood);
                    loading.hide();
                }
            })

            $(document).on('click', 'table tr:nth-child(2) th', function () {
                var tedad = parseInt($(this).attr('tedad'));
                var hid = $(this).parent().parent().find('th[hid]').attr('hid');
                console.log(hid);
                $('#editElements').remove();
                $('.tooltipp').remove();
                var pos = $(this).offset();
                var element = $('<div class="tooltipp text-center">' +
                    '<button class="button" type="button" style="display:inline-block;width:28px;" ' +
                    'onclick="EditTedadHalfCut(false ,' + tedad + ' , ' + hid + ');">-</button>' +
                    '<input type="number" style="width:80px;display:inline-block;height:28px;vertical-align:middle;font-family:myfont;" ' +
                    'class="form-control text-center ml-1 mr-1" id="txtEditTedadHalfCut"/>' +
                    '<button class="button" type="button" style="display:inline-block;width:28px;" ' +
                    'onclick="EditTedadHalfCut(true ,' + tedad + ',' + hid + ');">+</button></div>');
                $('body').append(element);
                element.css('top', pos.top - element.height() - 40)
                element.css('left', pos.left - (element.width() / 2) + 40)
                $('#txtEditTedadHalfCut').focus();
            });
        })

        function EditTedadHalfCut(e, tedad, hid) {
            if (!e && tedad < parseInt($('#txtEditTedadHalfCut').val())) {
                RedAlert('txtEditTedadHalfCut', 'خطا در مقدار وارد شده');
                return;
            }
            AjaxData({
                url: 'halfcut.asmx/EditTedadHalfCut',
                param: {
                    tedad: e ? $('#txtEditTedadHalfCut').val() : -$('#txtEditTedadHalfCut').val(),
                    hid: hid
                },
                func: editTedadSuccess
            })

            function editTedadSuccess(e) {
                $('.tooltipp').remove();
                GetFormInformation();
            }
        }

        function checkInputs() {
            if ($('#drForms :selected').val() == '-1') {
                RedAlert('drForms', 'لطفا فرم مورد نظر را انتخاب نمایید')
                loading.hide();
                return false;
            }
            if ($('#txtBoreshKamel').val() == '' ||
                parseInt($('#txtBoreshKamel').val()) < 0 ||
                parseInt($('#txtBoreshKamel').val()) == 0) {
                RedAlert('txtBoreshKamel', 'خطا در مقدار وارد شده');
                loading.hide();
                return false;
            }
            return true;
        }

        function ChangeBoreshKamel(e) {
            loading.show();
            if (checkInputs()) {
                AjaxData({
                    url: 'halfcut.asmx/ChangeBoreshKamel',
                    param: {
                        flowerId: <%=Request.Params["fid"]%>,
                        formId: $('#drForms :selected').val(),
                        formName: $('#drForms :selected').text(),
                        tedad: $('#txtBoreshKamel').val(),
                        increase: e
                    },
                    func: successfullyChangeBoreshKamel
                })
            }

            function successfullyChangeBoreshKamel(s) {
                $('#txtBoreshKamel').val('');
                GreenAlert('n', 'تعداد برگ با موفقیت ویرایش شد')
                GetFormInformation();
            }
        }

        function CheckFormsTableInputs() {
            var flag = false;
            var elemets = $('#tableFormItems tr td input[type=number]');
            for (var i = 0; i < elemets.length; i++) {
                if (parseFloat(elemets[i].value) <= 0) {
                    RedAlert(elemets[i], '')
                    flag = true;
                }
            }
            return flag;
        }

        function SabtHalfCut() {
            var halfCutData = {
                FlowerId: <%=Request.Params["fid"]%>,
                FormId: $('#drForms :selected').val(),
                Tedad: $('#txtTedadBargNimBoresh').val(),
                OldGol: $('#chOldGol').is(':checked'),
                FormItemses: []
            };
            if ($('#drForms :selected').val() == '-1') {
                RedAlert('drForms', 'لطفا فرم مورد نظر را انتخاب نمایید')
                return;
            }
            if ($('#txtTedadBargNimBoresh').val() == '' ||
                parseInt($('#txtTedadBargNimBoresh').val()) < 0 ||
                parseInt($('#txtTedadBargNimBoresh').val()) == 0 ||
                (parseInt($('#txtTedadBargNimBoresh').val()) > parseInt($('#txtTedadBargMojood').val()))
                && !$('#chOldGol').is(':checked')) {
                RedAlert('txtTedadBargNimBoresh', 'خطا در مقدار وارد شده');
                return;
            }
            if (!$('#tableFormItems').find('input[type=checkbox]').is(':checked')) {
                RedAlert('tableFormItems', 'حداقل یک مورد را در جدول انتخاب نمایید')
                return;
            }
            if (CheckFormsTableInputs()) {
                RedAlert('n', 'لطفا مقادیر داخل جدول را چک کنید')
                return;
            }
            loading.show();
            $('#tableFormItems tr').each(function (x, y) {
                if (x !== 0) {
                    if ($(y).find('input[type=checkbox]').is(':checked')) {
                        if ($(y).find('input[type=number]').val() == '') {
                            halfCutData.FormItemses.push({
                                Id: $(y).find('td:eq(0)').attr('itemid'),
                                Name: $(y).find('td:eq(0)').text(),
                                ItemInSheet: $(y).find('td:eq(1)').text()
                            });
                        } else {
                            halfCutData.FormItemses.push({
                                Id: $(y).find('td:eq(0)').attr('itemid'),
                                Name: $(y).find('td:eq(0)').text(),
                                ItemInSheet: $(y).find('input[type=number]').val()
                            });
                        }
                    }
                }
            })
            AjaxData({
                url: 'halfcut.asmx/SabtHalfCut',
                param: { data: halfCutData },
                func: successSabtHalfCut
            })

            function successSabtHalfCut(e) {
                $('#txtTedadBargNimBoresh').val('');
                $('#chOldGol').prop('checked', false);
                GetFormInformation();
            }
        }

        function editHalfCut(halfcutId) {
            var halfCutData = {
                FlowerId: <%=Request.Params["fid"]%>,
                FormId: $('#drForms :selected').val(),
                Tedad: $('#txtEditTedadBarg').val(),
                HalfCutId: halfcutId,
                TedadMojood: $('#txtEditAvailableHalfcut').val(),
                FormItemses: []
            }
            if ($('#txtEditTedadBarg').val() == '' ||
                parseInt($('#txtEditTedadBarg').val()) < 0 ||
                parseInt($('#txtEditTedadBarg').val()) == 0 ||
                parseInt($('#txtEditTedadBarg').val()) > parseInt($('#txtEditAvailableHalfcut').val())) {
                RedAlert('txtEditTedadBarg', 'لطفا ورودی ها را چک کنید');
                return;
            }
            if (CheckFormsTableInputs()) {
                RedAlert('n', 'لطفا مقادیر داخل جدول را چک کنید')
                return;
            }
            loading.show();
            $('#tableFormItems tr').each(function (x, y) {
                if (x !== 0) {
                    if ($(y).find('input[type=checkbox]').is(':checked')) {
                        if ($(y).find('input[type=number]').val() == '') {
                            halfCutData.FormItemses.push({
                                Id: $(y).find('td:eq(0)').attr('itemid'),
                                Name: $(y).find('td:eq(0)').text(),
                                ItemInSheet: $(y).find('td:eq(1)').text()
                            });
                        } else {
                            halfCutData.FormItemses.push({
                                Id: $(y).find('td:eq(0)').attr('itemid'),
                                Name: $(y).find('td:eq(0)').text(),
                                ItemInSheet: $(y).find('input[type=number]').val()
                            });
                        }
                    }
                }
            })
            AjaxData({
                url: 'halfcut.asmx/EditHalfCut',
                param: { items: halfCutData },
                func: editHalfCutSuccefull
            })

            function editHalfCutSuccefull(e) {
                GreenAlert('n', 'نیم برش با موفقیت ویرایش شد');
                GetFormInformation();
                $('#editElements').remove();
                $('#sabtHalfCut').show()
            }
        }

        function cancelEditHalfCut(halfcutId) {
            GetFormInformation();
        }

        function AcceptDeleteHalfcut(hid) {
            loading.show()
            AjaxData({
                url: 'halfcut.asmx/DeleteHalfCut',
                param: {
                    halfCutId: hid,
                    flowerId: <%=Request.Params["fid"]%>,
                    formId: $('#drForms :selected').val(),
                },
                func: successfullyDeleted
            })

            function successfullyDeleted(e) {
                GreenAlert('n', 'نیم برش با موفقیت حذف شد')
                $('.tooltipp').remove();
                GetFormInformation();
            }
        }

        function IgnoreDeleteHalfcut(hid) {
            $('.tooltipp').remove();
        }

        function GetFormInformation() {
            $('#editElements').remove();
            $('#editElements').remove();
            $('#sabtHalfCut').show();
            loading.show();
            AjaxData({
                url: 'halfcut.asmx/GetFormInfo',
                param: {
                    flowerId: <%=Request.Params["fid"]%>,
                    formId: $('#drForms :selected').val()
                },
                func: getFormInfo
            })

            function getFormInfo(e) {
                var data = JSON.parse(e.d);
                $('#txtTedadBargMojood').val(data.Count);
                $('#formInfoArea').empty().append(
                    ' نوع چیدمان : ' + data.ArrangeType + ' &nbsp;&nbsp;&nbsp;&nbsp;' +
                    'ابعاد : ' + data.Dimension + ' &nbsp;&nbsp;&nbsp;&nbsp;' +
                    'تعداد برگ : ' + data.Count + ' &nbsp;&nbsp;&nbsp;&nbsp;' +
                    'نوع مارک و تعداد : ' + data.Mark + ' &nbsp;&nbsp;&nbsp;&nbsp;' +
                    'تاریخ ورود : ' + data.EnterDate + ' &nbsp;&nbsp;&nbsp;&nbsp;' +
                    'توضیحات :  ' + data.Comment + ' ');

                var tableBody = ['<tr>' +
                    '<th>نام آیتم</th>' +
                    '<th>تعداد آیتم</th>' +
                    '<th>تعداد لنت</th>' +
                    '<th><input type="checkbox" id="checkAllFormItems" /></th>' +
                    '<th>تعداد آیتم موجود</th>' +
                    '</tr>'];
                data.FormItemses.forEach(function (e) {
                    tableBody.push('<tr>' +
                        '<td itemid="' + e.Id + '">' + e.Name + '</td>' +
                        '<td>' + e.ItemInSheet + '</td>' +
                        '<td>' + e.LentInSheet + '</td>' +
                        '<td><input type="checkbox" /></td>' +
                        '<td><input type="number" class="form-control text-center"/></td>' +
                        '</tr>')
                })
                $('#tableFormItems').empty().append(tableBody.join(''));

                if (data.FormsHistories.length) {
                    tableBody = ['<tr><th>زمان</th><th>تغییر</th></tr>']
                    data.FormsHistories.forEach(function (e) {
                        tableBody.push('<tr><td>' + e.DateTime + '</td><td>' + e.History + '</td></tr>')
                    })
                    $('#tableFormItemsHistory').empty().append(tableBody.join(''));
                } else {
                    $('#tableFormItemsHistory').empty();
                }
                $('#HalfCutTablesArea').empty();
                if (data.HalfCutItemses.length) {
                    for (var i = 0; i < data.HalfCutItemses.length; i++) {
                        tableBody = ['<table class="halfcut-table">' +
                            '<tr><th colspan="2" hid="' + data.HalfCutItemses[i].HalfCutId + '">' +
                            '<span title="ویرایش" class="glyphicon glyphicon-pencil"></span>' +
                            '<span title="حذف" class="glyphicon glyphicon-trash"></span>' +
                            '<span class="glyphicon glyphicon-question-sign"></span></th>' +
                            '</tr><tr><th colspan="2" tedad="' + data.HalfCutItemses[i].Tedad + '">' +
                            '' + data.HalfCutItemses[i].Tedad + ' برگ </th></tr>']
                        for (var j = 0; j < data.HalfCutItemses[i].FormItemses.length; j++) {
                            tableBody.push('<tr><td>' + data.HalfCutItemses[i].FormItemses[j].Name + '</td>' +
                                '<td>' + data.HalfCutItemses[i].FormItemses[j].ItemInSheet + '</td></tr>');
                        }
                        tableBody.push('</table>');
                        $('#HalfCutTablesArea').append(tableBody.join(''));
                    }
                }
                if ($('#tableFormItemsHistory tr').length) {
                    PaginateTable();
                } else {
                    $('#historyArea').find('span').remove();
                }
                loading.hide();
            }
        }

        $(document).on('click', function (event) {
            if (!event.target.closest('.halfcut-table') && !event.target.closest('.tooltipp')) {
                $('.tooltipp').remove();
            }
        });

        function PaginateTable() {
            $('#historyArea').find('span').remove(); $('#historyArea').prepend('<span class="next noselect">صفحه بعد</span> <span class="prev noselect">صفحه قبل</span>'); var maxRows = 3;
            $(".paginated").each(function () { var s = $(this), i = s.find("tr:gt(0)"); if (!(i.length < maxRows)) { i.each(function (a) { $(this).find("td:first").text(function (s, i) { return i }) }), i.filter(":gt(" + (maxRows - 1) + ")").hide(); var a = s.siblings(".prev"), e = s.siblings(".next"); a.addClass("disabled"), a.click(function () { var s = i.index(i.filter(":visible")); return a.hasClass("disabled") || (i.hide(), 0 < s - maxRows - 1 ? i.filter(":lt(" + s + "):gt(" + (s - maxRows - 1) + ")").show() : i.filter(":lt(" + s + ")").show(), s - maxRows <= 0 && a.addClass("disabled"), e.removeClass("disabled")), !1 }), e.click(function () { var s = i.index(i.filter(":visible")); return e.hasClass("disabled") || (i.hide(), i.filter(":lt(" + (s + 2 * maxRows) + "):gt(" + (s + maxRows - 1) + ")").show(), s + 2 * maxRows >= i.length && e.addClass("disabled"), a.removeClass("disabled")), !1 }) } });
        }
    </script>
</asp:Content>

