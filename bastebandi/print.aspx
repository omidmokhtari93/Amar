<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="bastebandi_test" %>

<asp:Content ID="Content1" ClientIDMode="Static" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <button type="button" id="btnPrint" class="glyphicon glyphicon-print"
        style="border: none; background-color: transparent; outline: none;" onclick="printDiv();">
    </button>
    <style>
        .pnlgrid {
            padding-top: 100px !important;
        }

        .table {
            direction: rtl;
            font-size: 13pt;
            font-weight: 900;
            width: 100%;
            border-collapse: collapse;
        }

            .table tr th {
                padding: 14px 5px !important;
                background-color: #f1f1f1;
                border: 1px solid black;
            }

            .table td {
                padding: 1px 2px !important;
                text-align: center !important;
                border: 1px solid black;
                background-color: white;
            }

        .kalaname {
            display: block;
            text-align: right;
            margin: 0;
            padding-right: 10px;
        }

        .havalehFooter {
            padding: 0;
            bottom: 30px !important;
        }

        .square {
            height: 13px;
            width: 13px;
            border: 1px solid black;
            vertical-align: middle;
        }
    </style>
    <div id="PrintBody">
        <style>
            @font-face {
                font-family: 'myfont';
                src: url('fonts/Far_Nazanin.eot'), url('fonts/Far_Nazanin.eot?#FooAnything') format('embedded-opentype');
                src: local('☺'), url('fonts/Far_Nazanin.ttf') format('truetype'), url('fonts/Far_Nazanin.svg') format('svg');
                font-weight: 400;
            }

            body {
                font-family: myfont;
            }
        </style>
    </div>
    <script>
        var allrows;
        var pagess;
        var footerlength;
        var footerContent;
        var hfContent;
        $(function () {
            var vars = [], hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++) {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = hash[1];
            }

            $.get("PrintTemplate.html", function (htmlString) {
                hfContent = htmlString;
                getHavalehInfo();
            }, 'html');
            function getHavalehInfo() {
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/GetHavalehInfo",
                    data: JSON.stringify({ havalehId: vars['hid'] }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        var d = JSON.parse(e.d);
                        hfContent = hfContent.replace('#lblKharidar#', d[0][2]);
                        hfContent = hfContent.replace('#lblAddKharidar#', d[0][3]);
                        hfContent = hfContent.replace('#lblShHavaleh#', d[0][0]);
                        hfContent = hfContent.replace('#lblDateHavaleh#', d[0][1]);
                        hfContent = hfContent.replace('#lblDriverName#', d[0][4]);
                        hfContent = hfContent.replace('#lblShPelak#', d[0][5]);
                        getHavalehTotal();
                    }
                });
            }
            function getHavalehTotal() {
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/GetHavalehTotal",
                    data: JSON.stringify({ havalehId: vars['hid'] }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        getVazn(e.d);
                    },
                    error: function () {
                    }
                });
            }

            function getVazn(c) {
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/GetVazn",
                    data: JSON.stringify({ havalehId: vars['hid'] }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        //var dt = JSON.parse(e.d);
                        //dt = Math.ceil(dt);
                        //c +='( وزن کل بار: '+ dt +' کیلوگرم )';
                        getRizKala(c);
                    },
                    error: function () {
                        alert('خطا!!!');
                    }
                });
            }

            function getRizKala(c) {
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/GetRizRizKala",
                    data: JSON.stringify({ idkh: vars['hid'] }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        pages(c, JSON.parse(e.d));
                    },
                    error: function () {
                        alert('خطا!!!');
                    }
                });
            }

            function createRows(main, riz) {
                var b = [];
                var len = main.length;
                b.push('<tr><th>ردیف</th><th>شرح کــالا</th><th>درجه</th><th>تعداد کارتن</th><th>تعداد واحد در کارتن</th><th>تعداد کل</th></tr>');
                for (var i = 0; i < len; i++) {
                    if (i % 30 === 0 && i !== 0) {
                        b.push('<tr><th>ردیف</th><th>شرح کــالا</th><th>درجه</th><th>تعداد کارتن</th><th>تعداد واحد در کارتن</th><th>تعداد کل</th></tr>');
                    }
                    b.push('<tr><td>' + (i + 1) + '</td>' +
                        '<td style="width:380px;">' +
                        '<lable class="kalaname" ' + (main[i][0].length > 53 ? 'style="font-size:15px"' : '') + '>' + main[i][0] + '</label>' +
                        '</td><td>' + main[i][1] + '</td>' +
                        '<td>' + main[i][2] + '</td>' +
                        '<td>' + main[i][3] + '</td>' +
                        '<td>' + main[i][4] + '</td></tr>');
                }
                if (riz.length) {
                    b.push('<tr><td style="background-color: #f1f1f1;" colspan="8">ریز اقلام</td></tr>');
                    for (var j = 0; j < riz.length; j++) {
                        b.push('<tr><td>' + (j + 1) + '</td>' +
                            '<td style="width:380px;">' +
                            '<lable class="kalaname">' + riz[j].KalaName + '</label>' +
                            '</td>' +
                            '<td colspan="3" value="riz">' + riz[j].Darage + '</td>' +
                            '<td value="riz">' + riz[j].Tedad + '</td>' +
                            '</tr>');
                    }
                }
                return b;
            }

            function pages(c, rizRows) {
                var footerLength = c.length;
                var footerRows = Math.ceil(footerLength / 140);
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/GetKalaRiz",
                    data: JSON.stringify({ havalehId: vars['hid'] }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        var d = JSON.parse(e.d);
                        var page = 1;
                        var body = [];
                        var k;
                        var b = 0;
                        var allRows = createRows(d, rizRows);
                        var tablerows = allRows.length;
                        allrows = tablerows + footerRows;
                        pagess = Math.ceil(allrows / 30);
                        if (true) {
                            for (var i = 0; i < pagess; i++) {
                                hfContent = hfContent.replace('id="page' + i + '"', 'id="page' + page + '"');
                                hfContent = hfContent.replace('id="tblKala' + i + '"', 'id="tblKala' + page + '"');
                                $('#PrintBody').append(hfContent);
                                var pagenumber = $('#PrintBody').find('label#page' + page + '');
                                var table = $('#PrintBody').find('table#tblKala' + page + '');
                                $(pagenumber[0]).text(' صفحه ' + parseInt(i + 1) + ' از ' + pagess);
                                for (k = b; k < tablerows;) {
                                    body.push(allRows[k]);
                                    ++k;
                                    if ((31 * (i + 1) - k) === 0 || k === tablerows) {
                                        b = k;
                                        break;
                                    }
                                }
                                $(table).append(body.join(''));
                                body = [];
                                page++;
                                if (pagess === i + 1) {
                                    var rowHtml = '<tr><td colspan="7">' + c + '</td></tr>';
                                    $(table).append(rowHtml);
                                }
                            }
                        }
                    }
                });
            }
        });
        function printDiv() {
            var lastChild = $('#PrintBody').children().last();
            var frstChild = $('#PrintBody').children().first();
            $(lastChild).css('margin-bottom', '');
            if (pagess === 1) {
                $(frstChild).css('height', '296mm');
            }
            //print section
            var divToPrint = document.getElementById('PrintBody');
            var newWin = window.open('Print-Window');
            newWin.document.open();
            newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');
            setTimeout(function () {
                newWin.print();
            }, 10)
            newWin.onafterprint = function () {
                newWin.close();
            }
        }
    </script>
</asp:Content>

