<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="depo.aspx.cs" Inherits="bastebandi_depo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../flower_depot/Scripts/search.js"></script>
    <link href="../flower_depot/Scripts/search.css" rel="stylesheet" />
    <div id="depo-contents">
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

            function ElementRedalert(ele, pos, txt) {
                var element;
                if (typeof ele == "string") { element = $("#" + ele); } else { element = ele; }
                $(element).notify(txt, { position: pos, className: "error" });
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
                var i = { x: $(this).offset().left - 40, y: $(this).offset().top - 63 };
                return i;
            }

            function FilterTable() {
                if ($('#itemsearch').val() == "" && $('#golsearch').val() == "" && $('#moshtarisearch :selected').val() == '-1') {
                    ElementRedalert('btnSearch', 'top center', 'لطفا آیتم یا طرح را مشخص کنید')
                    return;
                }
                AjaxData({
                    url: 'depoitems.asmx/SearchInDepoItem',
                    param: {
                        item: $('#itemsearch').val(),
                        gol: $('#golsearch').val(),
                        rang: $('#rangsearch :selected').val(),
                        darage: $('#daragesearch :selected').val(),
                        format: $('#formatsearch :selected').val(),
                        type: $('#typesearch :selected').val(),
                        moshtari: $('#moshtarisearch :selected').val(),
                        abgoriz: $('#chSearchAbgoriz').is(':checked'),
                        antibacterial: $('#chSearchAntibacterial').is(':checked')
                    },
                    func: filterDepoItems
                });


                function filterDepoItems(e) {
                    var d = JSON.parse(e.d);
                    if (!d.length) {
                        ElementRedalert('btnSearch', 'top center', 'هیچ آیتمی یافت نشد')
                        return
                    };
                    $('#tblItems').empty();
                    var b = [];
                    b.push('<tr><th>نام آیتم</th><th>نام طرح</th><th>آبگریز</th><th>آنتی باکتریال</th><th>چیدمان</th><th>درجه</th>' +
                        '<th>تعداد</th><th>سبد</th><th>قفسه</th><th></th></tr>');
                    for (var i = 0; i < d.length; i++) {
                        b.push('<tr>' +
                            '<td itemid="' + d[i].ItemId + '" darb="' + d[i].Darb + '">' + d[i].ItemName + '</td>' +
                            '<td golid="' + d[i].GolId + '">' + d[i].GolName + '</td>' +
                            '<td><input disabled type="checkbox" ' + (d[i].Abgoriz ? 'checked' : '') + '/></td>' +
                            '<td><input disabled type="checkbox" ' + (d[i].AntiBacterial ? 'checked' : '') + '/></td>' +
                            '<td arrid="' + d[i].ArrangeId + '">' + d[i].Arrange + '</td>' +
                            '<td did="' + d[i].DarageId + '">' + d[i].Darage + '</td>' +
                            '<td style="position:relative;">' + d[i].Tedad + '</td>' +
                            '<td>' + d[i].Basket + '</td>' +
                            '<td>' + d[i].Shelf + '</td>' +
                            '<td><a id="' + d[i].Id + '" class="glyphicon glyphicon-pencil"></a></td>' +
                            '</tr>');
                    }
                    $('#tblItems ').append(b.join(''));
                }
            };

            function FilterDropDown(o /*options*/, s /* source*/, d /*destination*/) {
                var val = $('#' + s).val();
                $('#' + d).empty();
                o.filter(function (idx, el) {
                    return val === '' || $(el).text().indexOf(val) >= 0;
                }).appendTo('#' + d);
            };

            $(function () {
                GetControls();
                function GetControls() {
                    AjaxData({
                        url: 'depoitems.asmx/GetControlsData',
                        param: {},
                        func: fillControls
                    });

                    function fillControls(e) {
                        var op = JSON.parse(e.d);
                        for (var i = 0; i < op.DarageList.length; i++) {
                            $('#daragesearch').append("<option value=" + op.DarageList[i].Id + ">" + op.DarageList[i].Name + "</option>");
                            $('#depodaragesearch').append("<option value=" + op.DarageList[i].Id + ">" + op.DarageList[i].Name + "</option>");
                        }
                        for (var i = 0; i < op.RangList.length; i++) {
                            $('#rangsearch').append("<option value=" + op.RangList[i].Id + ">" + op.RangList[i].Name + "</option>");
                            $('#deporangsearch').append("<option value=" + op.RangList[i].Id + ">" + op.RangList[i].Name + "</option>");
                        }
                        for (var i = 0; i < op.FormatList.length; i++) {
                            $('#formatsearch').append("<option value=" + op.FormatList[i].Id + ">" + op.FormatList[i].Name + "</option>");
                            $('#depoformatsearch').append("<option value=" + op.FormatList[i].Id + ">" + op.FormatList[i].Name + "</option>");
                        }
                        for (var i = 0; i < op.MoshtariList.length; i++) {
                            $('#depomoshtarisearch').append("<option value=" + op.MoshtariList[i].Id + ">" + op.MoshtariList[i].Name + "</option>");
                            $('#moshtarisearch').append("<option value=" + op.MoshtariList[i].Id + ">" + op.MoshtariList[i].Name + "</option>");
                        }
                    }
                }
            });

            $.fn.Blink = function (interval = 100, iterate = 1) {
                for (i = 1; i <= iterate; i++)
                    $(this).fadeOut(interval).fadeIn(interval);
            }
        </script>
        <style>
            ::-webkit-scrollbar {
                width: 5px;
            }

            ::-webkit-scrollbar-track {
                background: #f1f1f1;
            }

            ::-webkit-scrollbar-thumb {
                background: #888;
            }

                ::-webkit-scrollbar-thumb:hover {
                    background: #555;
                }

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
                    left: 115px;
                    margin-left: -5px;
                    border-width: 5px;
                    border-style: solid;
                    border-color: transparent transparent #969696 transparent;
                }

            .glyphicon-pencil {
                color: blue;
            }

            .itembadge, .golbadge {
                background-color: rgb(82, 82, 255);
                color: white;
                font-weight: 800;
                border-radius: 2px;
                position: absolute;
                right: 20px;
                top: 45px;
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
                font-size: 18pt;
                font-weight: 800;
            }

            .stable {
                width: 100%;
            }

                .stable tr {
                    border-bottom: 1px solid #c9c9c9;
                    cursor: pointer;
                }

                    .stable tr td {
                        background: #edf8fb;
                        color: black;
                        padding: 1px 2px;
                        font-size: 16pt;
                        font-weight: 800;
                        padding-right: 20px;
                    }

                        .stable tr td:hover {
                            color: white;
                            background-color: darkblue;
                        }

            .tablescroll {
                overflow: auto;
                max-height: 300px;
                width: 92%;
                z-index: 999;
                position: absolute
            }

            table tr td {
                font-size: 17pt;
                font-weight: 800;
            }

            table tr th {
                font-size: 17pt;
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

            #tblItems td:nth-child(7) {
                cursor: pointer;
            }

            .nav-tabs li {
                float: right !important;
            }

            input[type="checkbox"][id=darb] {
                width: 20px;
                height: 20px;
            }

            #nav a {
                font-size: 14pt;
                padding: 2px;
                border: 1px solid #969696;
                border-radius: 3px;
                width: 40px;
            }

                #nav a.active {
                    color: red;
                }

            span, .col-md-2 {
                font-weight: 800;
            }

            .searcharea input, select {
                width: 100% !important;
                direction: rtl;
            }

            #chAnAb {
                display: block;
            }

                #chAnAb label {
                    margin-bottom: 0;
                    font-size: 12pt;
                }

                #chAnAb input[type=checkbox] {
                    vertical-align: middle;
                    width: 20px;
                    height: 20px;
                    margin-top: 0;
                }


            #searchAbAn {
                height: 40px;
                padding: 7px;
            }

                #searchAbAn label {
                    font-size: 12pt;
                }

                #searchAbAn input[type=checkbox] {
                    vertical-align: middle;
                    width: 20px !important;
                    height: 20px;
                    margin-top: 0;
                }
        </style>

        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">دپوی راهرو</a></li>
            <li><a data-toggle="tab" href="#menu1">دپوی بسته بندی</a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <div class="panel panel-primary" style="position: relative;">
                    <div class="panel-heading">دپوی راهرو</div>
                    <div class="panel-body" id="inputs">
                        <div class="row" style="text-align: right;">
                            <div class="col-sm-2" id="tedadArea">
                                <label style="display: block;">تعداد</label>
                                <input autocomplete="off" tabindex="5" class="form-control text-center" style="width: 100%;" type="number" id="txtTedad" />
                            </div>
                            <div class="col-sm-2">
                                <label style="display: block;">درجه</label>
                                <asp:DropDownList TabIndex="4" runat="server" ID="drDarage" CssClass="form-control text-right" ClientIDMode="Static" DataSourceID="SqlDarage" DataTextField="dar" DataValueField="ID" Width="100%" />
                                <asp:SqlDataSource ID="SqlDarage" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, dar FROM Darajeh"></asp:SqlDataSource>
                            </div>
                            <div class="col-sm-3">
                                <label>طرح</label>
                                <input type="text" tabindex="3" autocomplete="off" onkeyup="FilterGol();" class="form-control" placeholder="جستجو" id="txtsearchGol" style="width: 100%; direction: rtl;" />
                                <div class="golbadge"></div>
                                <div class="tablescroll">
                                    <table class="stable" id="tblgol"></table>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <label style="display: block;">درب</label>
                                <div class="form-control" style="display: block;">
                                    <input type="checkbox" tabindex="2" id="darb" />
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <label>آیتم</label>
                                <input type="text" tabindex="1" autocomplete="off" onkeyup="FilterItem();" class="form-control" placeholder="جستجو" id="txtsearchItem" style="width: 100%; direction: rtl;" />
                                <div class="itembadge"></div>
                                <div class="tablescroll">
                                    <table class="stable" id="tblsearchitem"></table>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="text-align: right;">
                            <div class="col-sm-3">
                                <label>قفسه</label>
                                <input tabindex="8" class="form-control text-center" style="width: 100%;" id="txtShelf" />
                            </div>
                            <div class="col-sm-3">
                                <label>سبد</label>
                                <input tabindex="7" class="form-control text-center" style="width: 100%;" id="txtBask" />
                            </div>
                            <div class="col-sm-3">
                                <label>چیدمان</label>
                                <select id="drArrange" tabindex="6" class="form-control" style="width: 100%; direction: rtl;">
                                    <option value="0">فله</option>
                                    <option value="1">سرویس</option>
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <label>&nbsp;</label>
                                <div class="text-center form-control" dir="ltr" id="chAnAb">
                                    <label for="ChaAntibacterial">آنتی باکتریال</label>
                                    <input type="checkbox" id="ChaAntibacterial" />
                                    <label for="ChAbgoriz" style="margin-left: 25px;">آبگریز</label>
                                    <input type="checkbox" id="ChAbgoriz" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer" style="text-align: left;">
                        <button type="button" class="button" onclick="Sabt();" tabindex="9" id="btnsabt">ثبت</button>
                        <button type="button" class="button" onclick="update();" style="display: none;" id="btnedit">ویرایش</button>
                        <button type="button" class="button" onclick="cancel();GetItemTable();" style="display: none;" id="btncancel">انصراف</button>
                    </div>
                    <div class="panel-footer" id="tblarea" style="position: relative;">
                        <div class="row">
                            <div class="col-md-3">
                                تعداد آیتم های پرس : <span><%=press %></span>
                            </div>
                            <div class="col-md-3">
                                تعداد آیتم های ریخته گری : <span><%=rikhtegari %></span>
                            </div>
                            <div class="col-md-3">
                                تعداد آیتم های فرمینگ : <span><%=forming %></span>
                            </div>
                            <div class="col-md-3">
                                نامشخص : <span><%=unknown %></span>
                            </div>
                        </div>
                        <div class="searcharea">
                            <div class="row" style="margin: 0;">
                                <div class="col-sm-3" style="padding: 5px;">
                                    <label class="lbl">قالب</label>
                                    <select class="form-control" id="formatsearch">
                                        <option value="-1">انتخاب کنید</option>
                                    </select>
                                </div>
                                <div class="col-sm-3" style="padding: 5px;">
                                    <label class="lbl">رنگ</label>
                                    <select class="form-control" id="rangsearch">
                                        <option value="-1">انتخاب کنید</option>
                                    </select>
                                </div>
                                <div class="col-sm-3" style="padding: 5px;">
                                    <label class="lbl">طرح</label>
                                    <input type="text" tabindex="11" placeholder="جستجو ..." id="golsearch" class="form-control" />
                                </div>
                                <div class="col-sm-3" style="padding: 5px;">
                                    <label class="lbl">آیتم</label>
                                    <input type="text" tabindex="10" placeholder="جستجو ..." id="itemsearch" class="form-control" />
                                </div>
                            </div>
                            <div class="row" style="margin: 0;">
                                <div class="col-sm-3" style="padding: 5px;">
                                    <label class="lbl">&nbsp;</label>
                                    <button class="button btn-block" type="button" id="btnSearch" onclick="FilterTable();">جستجو</button>
                                </div>
                                <div class="col-sm-3" style="padding: 5px;">
                                    <label class="lbl">نوع</label>
                                    <select class="form-control" id="typesearch">
                                        <option value="-1">انتخاب کنید</option>
                                        <option value="1">مایکرویو</option>
                                        <option value="2">معمولی</option>
                                    </select>
                                </div>
                                <div class="col-sm-2" style="padding: 5px;">
                                    <label class="lbl">مشتری</label>
                                    <select class="form-control" id="moshtarisearch">
                                        <option value="-1">انتخاب کنید</option>
                                    </select>
                                </div>
                                <div class="col-sm-2" style="padding: 5px;">
                                    <label class="lbl">درجه</label>
                                    <select class="form-control" id="daragesearch">
                                        <option value="-1">انتخاب کنید</option>
                                    </select>
                                </div>
                                <div class="col-md-2" style="padding: 5px;">
                                    <label>&nbsp;</label>
                                    <div class="text-center" dir="ltr" id="searchAbAn">
                                        <label for="ChaAntibacterial">آنتی باکتریال</label>
                                        <input type="checkbox" id="chSearchAntibacterial" />
                                        <label for="ChAbgoriz" style="margin-left: 25px;">آبگریز</label>
                                        <input type="checkbox" id="chSearchAbgoriz" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <table class="table table-bordered" id="tblItems" style="position: relative;"></table>
                    </div>
                </div>
            </div>


            <div id="menu1" class="tab-pane fade">
                <div class="panel panel-primary" id="mojoodibasArea">
                    <div class="panel-heading">دپوی بسته بندی</div>
                    <div class="panel-body" id="SabtArea">
                        <style>
                            h4 {
                                margin-top: 0;
                                margin-bottom: 1px;
                            }

                            #tblMojoodiDepoBas tr td {
                                font-size: 12pt;
                            }

                            #tblMojoodiDepoBas tr th {
                                font-size: 12pt;
                            }

                            #tblMojoodiDepoBas {
                                width: 70%;
                                margin: auto;
                            }

                                #tblMojoodiDepoBas tr td a {
                                    color: blue;
                                }

                            .rizbadge {
                                position: absolute;
                                border: 1px solid darkgray;
                                width: 100px;
                                height: auto;
                                background-color: darkgray;
                                border-radius: 5px;
                                padding: 3px;
                            }

                                .rizbadge h4 {
                                    color: white;
                                }

                            select option {
                                font-weight: 800;
                            }

                            #BasDepoAnAb input[type=checkbox] {
                                width: 20px;
                                height: 20px;
                                vertical-align: middle;
                                margin-top: 0;
                            }

                            #BasDepoAnAb label {
                                font-size: 12pt;
                            }

                            #SearchBasDepoAnAb {
                                direction: ltr;
                                height: 40px;
                            }

                                #SearchBasDepoAnAb label {
                                    font-size: 12pt;
                                }

                                #SearchBasDepoAnAb input[type=checkbox] {
                                    width: 20px !important;
                                    height: 20px;
                                    vertical-align: middle;
                                    margin-top: 0;
                                }
                        </style>

                        <div class="row" style="margin: 0; text-align: right;">
                            <div class="col-lg-2">
                                <h4>تعداد کارتن</h4>
                                <asp:TextBox runat="server" ClientIDMode="Static" ID="txtKalaCartoon" Width="100%" CssClass="form-control text-center" autocomplete="off"></asp:TextBox>
                                <div style="margin-top: 15px;" id="BasDepoAnAb">
                                    <label for="ChBasDepoAntibacterial">آنتی باکتریال</label>
                                    <input type="checkbox" id="ChBasDepoAntibacterial" />
                                    <label style="margin-left: 25px;" for="ChBasDepoAbgoriz">آبگریز</label>
                                    <input type="checkbox" id="ChBasDepoAbgoriz" />
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <h4>درجه</h4>
                                <input type="text" id="searchDarage" onkeyup="FilterDropDown(optionsdarage, 'searchDarage', 'listDarage');" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                                <asp:ListBox ClientIDMode="Static" ID="listDarage" dir="rtl" runat="server" Height="300px" Width="100%" DataSourceID="Sqldarage" DataTextField="dar" DataValueField="ID"></asp:ListBox>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, dar FROM Darajeh"></asp:SqlDataSource>
                            </div>
                            <div class="col-lg-4">
                                <h4>گل</h4>
                                <input type="text" id="searchGol" onkeyup="FilterDropDown(optionsgol,'searchGol','listGol')" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                                <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" ID="listGol" Style="width: 100%;" DataSourceID="SqlGol" DataTextField="gol" DataValueField="id" />
                                <asp:SqlDataSource ID="SqlGol" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / '  
+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format + ' / ' + flower_entry.flower_code AS gol, flower_entry.id 
FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON 
flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN 
flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = 
flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN 
flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = 
flower_depot.dbo.flower_formats.flowformat_id"></asp:SqlDataSource>
                            </div>
                            <div class="col-lg-4">
                                <h4 style="float: right;">آیتم / سرویس</h4>
                                <input type="checkbox" style="float: left;" id="chkFallehService" />
                                <span style="float: left;">سرویس</span>
                                <div id="pnlFalleh">
                                    <input type="text" onkeyup="FilterDropDown(optionsitem , 'searchFalleh', 'listFalleh');" id="searchFalleh" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                                    <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" ID="listFalleh" Style="width: 100%;" DataSourceID="SqlFalleh" DataTextField="nam" DataValueField="ID" />
                                    <asp:SqlDataSource ID="SqlFalleh" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT [ID], [nam] FROM [Item] where nam is not null and ID <> 0"></asp:SqlDataSource>
                                </div>
                                <div id="pnlService" style="display: none;">
                                    <input type="text" placeholder="جستجو" onkeyup="FilterDropDown(optionsservice, 'searchService', 'listService');" id="searchService" style="width: 100%; direction: rtl;" autocomplete="off" />
                                    <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" ID="listService" Style="width: 100%;" DataSourceID="SqlService" DataTextField="nam" DataValueField="ID" />
                                    <asp:SqlDataSource ID="SqlService" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT [ID], [nam] FROM [Service] where nam is not null and ID <> 0"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <button class="button" id="btnSabtBasDepo" type="button" onclick="SabtBasDepo();">ثبت</button>
                        &nbsp;&nbsp;
                    <button type="button" class="button" style="display: none;" id="btnCancelEdit" onclick="CancelEditbasdepo();">انصراف</button>
                        &nbsp;&nbsp;
                    <button type="button" class="button" style="display: none;" id="btneditKala" onclick="EditBasDepoKala();">ویرایش</button>
                    </div>
                    <div class="panel-footer searcharea">
                        <div class="row" style="direction: rtl; margin: 0;">
                            <div class="col-sm-3" style="padding: 5px;">
                                <label class="lbl">قالب</label>
                                <select class="form-control" id="depoformatsearch">
                                    <option value="-1">انتخاب کنید</option>
                                </select>
                            </div>
                            <div class="col-sm-3" style="padding: 5px;">
                                <label class="lbl">رنگ</label>
                                <select class="form-control" id="deporangsearch">
                                    <option value="-1">انتخاب کنید</option>
                                </select>
                            </div>
                            <div class="col-sm-3" style="padding: 5px;">
                                <label class="lbl">طرح</label>
                                <input type="text" tabindex="11" placeholder="جستجو ..." id="depogolsearch" class="form-control" />
                            </div>
                            <div class="col-sm-3" style="padding: 5px;">
                                <label class="lbl">آیتم</label>
                                <input type="text" tabindex="10" placeholder="جستجو ..." id="depoitemsearch" class="form-control" />
                            </div>
                        </div>
                        <div class="row" style="margin: 0; margin-bottom: 10px; direction: rtl;">
                            <div class="col-sm-3" style="padding: 5px;">
                                <label class="lbl">&nbsp;</label>
                                <button class="button btn-block" type="button" id="depobtnSearch" onclick="filterItems();">جستجو</button>
                            </div>
                            <div class="col-sm-3" style="padding: 5px;">
                                <label class="lbl">نوع</label>
                                <select class="form-control" id="depotypesearch">
                                    <option value="-1">انتخاب کنید</option>
                                    <option value="1">مایکرویو</option>
                                    <option value="2">معمولی</option>
                                </select>
                            </div>
                            <div class="col-sm-2" style="padding: 5px;">
                                <label class="lbl">مشتری</label>
                                <select class="form-control" id="depomoshtarisearch">
                                    <option value="-1">انتخاب کنید</option>
                                </select>
                            </div>
                            <div class="col-sm-2" style="padding: 5px;">
                                <label class="lbl">درجه</label>
                                <select class="form-control" id="depodaragesearch">
                                    <option value="-1">انتخاب کنید</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label>&nbsp;</label>
                                <div style="margin-top: 15px;" id="SearchBasDepoAnAb">
                                    <label for="ChBasDepoAntibacterial">آنتی باکتریال</label>
                                    <input type="checkbox" id="ChSearchBasDepoAntibacterial" />
                                    <label style="margin-left: 25px;" for="ChBasDepoAbgoriz">آبگریز</label>
                                    <input type="checkbox" id="ChSearchBasDepoAbgoriz" />
                                </div>
                            </div>
                        </div>
                        <a class="glyphicon glyphicon-refresh" href="javascript:GetBastebandiDepo()" title="Refresh"></a>
                        <a class="glyphicon glyphicon-print" href="javascript:PrintBasDepo()" title="Print"></a>
                        <table id="tblMojoodiDepoBas" class="table table-bordered"></table>
                        <div id="scroll"></div>
                    </div>
                </div>
            </div>
        </div>

        <%--  دپوی داخل بسته بندی--%>
        <script>
            function PrintBasDepo() {
                var queryParams = "?i=" + $('#depoitemsearch').val() + "&g=" + $('#depogolsearch').val() + "&r=" + $('#deporangsearch :selected').val()
                    + "&d=" + $('#depodaragesearch :selected').val() + "&f=" + $('#depoformatsearch :selected').val() + "&t=" + $('#depotypesearch :selected').val()
                    + "&m=" + $('#depomoshtarisearch :selected').val() + "&ab=" + $('#ChSearchBasDepoAbgoriz').is(':checked') + "&ant=" + $('#ChSearchBasDepoAntibacterial').is(':checked');
                window.open('/amar/bastebandi/BasDepoPrint.html' + queryParams, '_blank');
            }


            function filterItems() {
                if ($('#depoitemsearch').val() == ""
                    && $('#depogolsearch').val() == ""
                    && $('#depomoshtarisearch :selected').val() == '-1') {
                    ElementRedalert('depobtnSearch', 'top center', 'لطفا آیتم یا طرح را مشخص کنید');
                    return;
                }
                AjaxData({
                    url: 'depoitems.asmx/SearchInBasDepo',
                    param: {
                        item: $('#depoitemsearch').val(),
                        gol: $('#depogolsearch').val(),
                        rang: $('#deporangsearch :selected').val(),
                        darage: $('#depodaragesearch :selected').val(),
                        format: $('#depoformatsearch :selected').val(),
                        type: $('#depotypesearch :selected').val(),
                        moshtari: $('#depomoshtarisearch :selected').val(),
                        abgoriz: $('#ChSearchBasDepoAbgoriz').is(':checked'),
                        antibacterial: $('#ChSearchBasDepoAntibacterial').is(':checked')
                    },
                    func: filtertablekala
                });
            }

            function filtertablekala(e) {
                var d = JSON.parse(e.d);
                if (d.length > 0) {
                    $('#tblMojoodiDepoBas').empty();
                    var body = CreateTablee(d);
                    $('#tblMojoodiDepoBas').append(body.join(''));
                } else {
                    ElementRedalert('depobtnSearch', 'top center', 'هیچ آیتمی یافت نشد')
                }
            }

            var optionsgol = $('#listGol option').clone();
            var optionsdarage = $('#listDarage option').clone();
            var optionsitem = $('#listFalleh option').clone();
            var optionsservice = $('#listService option').clone();
            $(function () {
                $('#chkFallehService').change(function () {
                    if (this.checked) {
                        $('#pnlService').show();
                        $('#pnlFalleh').hide();
                    } else {
                        $('#pnlService').hide();
                        $('#pnlFalleh').show();
                    }
                });
            });

            GetBastebandiDepo();
            function GetBastebandiDepo() {
                $('#tblMojoodiDepoBas').empty();
                AjaxData({
                    url: "depoitems.asmx/GetBastebandiDepo",
                    param: {},
                    func: CreateBastDepoTabel
                });
                function CreateBastDepoTabel(e) {
                    var d = JSON.parse(e.d);
                    if (d.length > 0) {
                        var body = CreateTablee(d);
                        $('#tblMojoodiDepoBas').append(body.join(''));
                    }
                }
            }

            function SabtBasDepo() {
                var flag = 0;
                if ($('#listFalleh :selected').val() == undefined && !$('#chkFallehService').is(":checked")) {
                    RedAlert('listFalleh', 'لطفا آیتم را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listService :selected').val() == undefined && $('#chkFallehService').is(":checked")) {
                    RedAlert('listService', 'لطفا سرویس را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listGol :selected').val() == undefined) {
                    RedAlert('listGol', 'لطفا گل را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listDarage :selected').val() == undefined) {
                    RedAlert('listDarage', 'لطفا درجه را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#txtKalaCartoon').val() == '') {
                    RedAlert('txtKalaCartoon', 'لطفا تعداد کارتن را وارد نمایید');
                    flag = 1;
                }
                if (flag === 1) {
                    return;
                }
                var obj = {
                    ItemId: $('#listFalleh :selected').val(),
                    ServiceId: $('#listService :selected').val(),
                    Gol: $('#listGol :selected').val(),
                    Darage: $('#listDarage :selected').val(),
                    Karton: $('#txtKalaCartoon').val(),
                    Abgoriz: $('#ChBasDepoAbgoriz').is(':checked'),
                    Antibacterial: $('#ChBasDepoAntibacterial').is(':checked')
                };
                if ($('#chkFallehService').is(":checked")) {
                    obj.ItemId = 0;
                } else {
                    obj.ServiceId = 0;
                }
                AjaxData({
                    url: "depoitems.asmx/SabtMojoodiDepoBastebandi",
                    param: { 'obj': obj },
                    func: SabtBasDepoDone
                });
                function SabtBasDepoDone(e) {
                    if (e.d !== "") {
                        var d = JSON.parse(e.d);
                        $('#tblMojoodiDepoBas').empty();
                        var body = CreateTablee(d);
                        $('#tblMojoodiDepoBas').append(body.join(''));
                        $('#btnSabtBasDepo').notify("این مورد قبلا ثبت شده است", { position: "right center", className: "error" });
                        $('html, body').animate({
                            scrollTop: $('#scroll').offset().top - 300
                        }, 1000);
                        return;
                    }
                    GetBastebandiDepo();
                    $('#btnSabtBasDepo').notify('ثبت شد', { position: "right center", className: "success" });
                    $('#txtKalaCartoon').val('');
                }
            }

            var kalaId, ItemId, ServiceId, golId, rangId, darageId, tedadKarton;
            $('#tblMojoodiDepoBas').on('click', 'td a#edkala', function () {
                var parent = $(this).parent().parent();
                kalaId = parseInt($(this).attr('kalaid'));
                ItemId = parseInt(parent.find('td[idi]').attr('idi'));
                ServiceId = parseInt(parent.find('td[ids]').attr('ids'));
                golId = parseInt(parent.find('td[idg]').attr('idg'));
                darageId = parseInt(parent.find('td[idd]').attr('idd'));
                tedadKarton = parseInt(parent.find('td[tedad]').attr('tedad'));
                $('#ChBasDepoAbgoriz').prop('checked', parent.find('td:eq(2) input[type=checkbox]').attr('checked') == undefined ? false : true);
                $('#ChBasDepoAntibacterial').prop('checked', parent.find('td:eq(3) input[type=checkbox]').attr('checked') == undefined ? false : true);
                if (ItemId !== 0) {
                    $('#pnlService').hide();
                    $('#pnlFalleh').show();
                    $('#chkFallehService').attr('checked', false);
                    $('#listFalleh').find('option[value=' + ItemId + ']').prop('selected', true);
                    $('#listGol').find('option[value=' + golId + ']').prop('selected', true);
                    $('#listDarage').find('option[value=' + darageId + ']').prop('selected', true);
                    $('#txtKalaCartoon').val(tedadKarton);
                    $('#btneditKala').show();
                    $('#btnCancelEdit').show();
                    $('#btnSabtBasDepo').hide();
                } else {
                    $('#pnlService').show();
                    $('#pnlFalleh').hide();
                    $('#chkFallehService').attr('checked', true);
                    $('#listService').find('option[value=' + ServiceId + ']').prop('selected', true);
                    $('#listGol').find('option[value=' + golId + ']').prop('selected', true);
                    $('#listDarage').find('option[value=' + darageId + ']').prop('selected', true);
                    $('#txtKalaCartoon').val(tedadKarton);
                    $('#btneditKala').show();
                    $('#btnCancelEdit').show();
                    $('#btnSabtBasDepo').hide();
                }
                $('body ,html').animate({
                    scrollTop: $('body').offset().top
                }, 1000);
            });

            function CancelEditbasdepo() {
                $('#SabtArea').find('select :selected').prop('selected', false);
                $('#SabtArea').find('input').val('');
                $('#btneditKala').hide();
                $('#btnCancelEdit').hide();
                $('#btnSabtBasDepo').show();
            }

            function EditBasDepoKala() {
                var flag = 0;
                if ($('#listFalleh :selected').val() == undefined && !$('#chkFallehService').is(":checked")) {
                    RedAlert('listRizFalleh', 'لطفا آیتم را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listService :selected').val() == undefined && $('#chkFallehService').is(":checked")) {
                    RedAlert('listRizService', 'لطفا سرویس را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listGol :selected').val() == undefined) {
                    RedAlert('listRizGol', 'لطفا گل را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listDarage :selected').val() == undefined) {
                    RedAlert('listRizDarage', 'لطفا درجه را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#txtKalaCartoon').val() == '') {
                    RedAlert('txtRizKarton', 'لطفا تعداد کارتن را وارد نمایید');
                    flag = 1;
                }
                if (flag === 1) {
                    return;
                }
                var objj = {
                    Hid: kalaId,
                    ItemId: $('#listFalleh :selected').val(),
                    ServiceId: $('#listService :selected').val(),
                    Gol: $('#listGol :selected').val(),
                    Darage: $('#listDarage :selected').val(),
                    Karton: $('#txtKalaCartoon').val(),
                    Abgoriz: $('#ChBasDepoAbgoriz').is(':checked'),
                    Antibacterial: $('#ChBasDepoAntibacterial').is(':checked')
                };
                if ($('#chkFallehService').is(":checked")) {
                    objj.ItemId = 0;
                } else {
                    objj.ServiceId = 0;
                }
                AjaxData({
                    url: 'depoitems.asmx/UpdateBasDepoKala',
                    param: { obj: objj },
                    func: UpdateBasDepoKala
                });
                function UpdateBasDepoKala(e) {
                    if (e.d !== "") {
                        var d = JSON.parse(e.d);
                        $('#tblMojoodiDepoBas').empty();
                        var body = CreateTablee(d);
                        $('#tblMojoodiDepoBas').append(body.join(''));
                        $('#btneditKala').notify("این مورد قبلا ثبت شده است", { position: "right center", className: "error" });
                        $('html, body').animate({
                            scrollTop: $('#scroll').offset().top - 300
                        }, 1000);
                        return;
                    }
                    GreenAlert('n', 'ویرایش شد');
                    $('#txtKalaCartoon').val('');
                    GetBastebandiDepo();
                    CancelEditbasdepo();
                }
            }

            function CreateTablee(d) {
                var body = [];
                body.push('<tr><th>ردیف</th><th>شرح کــالا</th>' +
                    '<th>آبگریز</th><th>آنتی باکتریال</th>' +
                    '<th>درجه</th><th>تعداد کارتن</th>' +
                    '<th>تعداد واحد در کارتن</th>' +
                    '<th>تعداد کل</th><th></th>' +
                    '<th></th></tr>');
                for (var i = 0; i < d.length; i++) {
                    body.push('<tr><td>' + (i + 1) + '</td>' +
                        '<td idi="' + d[i].ItemId + '" ids="' + d[i].ServiceId + '" idg="' + d[i].GolId + '">' + d[i].Kala + '</td>' +
                        '<td><input type="checkbox" ' + (d[i].Abgoriz ? 'checked' : '') + ' disabled/></td>' +
                        '<td><input type="checkbox" ' + (d[i].AntiBacterial ? 'checked' : '') + ' disabled/></td>' +
                        '<td idd="' + d[i].DarageId + '">' + d[i].Darage + '</td>' +
                        '<td tedad="' + d[i].Tedad + '">' + d[i].Tedadd + '</td>' +
                        '<td>' + d[i].TedadKarton + '</td>' +
                        '<td>' + d[i].TedadKol + '</td>' +
                        '<td><a id="edkala" kalaid="' + d[i].Id + '">ویرایش</a></td>' +
                        '<td><a id="delkala" kalaid="' + d[i].Id + '">حذف</a></td>' +
                        '</tr>');
                }
                return body;
            }

            var delclick = 0;
            var deleleBadge;
            $('#tblMojoodiDepoBas').on('click', 'td a#delkala', function () {
                if (delclick == 0) {
                    var x = $(this).offset().left - 120;
                    var y = $(this).offset().top;
                    kalaId = parseInt($(this).attr('kalaid'));
                    deleleBadge = $('<div style="top: ' + y + 'px; left: ' + x + 'px;" class="rizbadge"><h4>حذف شود؟</h4>' +
                        '<button type="button" class="badgeButton" onclick="$(this).parent().remove();delclick=0;">خیر</button>&nbsp;' +
                        '<button type="button" class="badgeButton" onclick="DeleteKala();">بله</button></div>');
                    $('#main_panel').append(deleleBadge);
                    delclick = 1;
                }
            });

            function DeleteKala() {
                AjaxData({
                    url: "depoitems.asmx/DeleteKala",
                    param: { kid: kalaId },
                    func: Deletekaladone
                });
                function Deletekaladone() {
                    GreenAlert('no', 'حذف شد');
                    $('.rizbadge').remove();
                    GetBastebandiDepo();
                    delclick = 0;
                }
            }

            var mojoodiTdele, editPopup, mojood, td;
            $('#tblMojoodiDepoBas').on('click', 'td', function () {
                if (this.cellIndex !== 5) { return; }
                td = $(this);
                $('#mojoodibasArea').find('.tooltipp').remove();
                if (mojoodiTdele !== undefined) {
                    $(mojoodiTdele).css({ 'background-color': '' });
                }
                kalaId = $(this).parent().find('a[kalaid]').attr('kalaid');
                mojoodiTdele = $(this).css({ 'background-color': 'lightcoral' });
                mojood = parseInt($(this).text());
                var d = $(mojoodiTdele).Getlocation();
                editPopup = $('<div class="tooltipp" style="min-width:200px;top:' + parseInt(d.y + 95) + 'px;left:' + (d.x - 20) + 'px;">' +
                    '<button class="button" type="button" onclick="EditBasMojoodiTedadKarton(false);">-</button>' +
                    '<input type="number" class="form-control text-center" style="width:150px;" id="txteditbasMojoodi"/>' +
                    '<button class="button" type="button" onclick="EditBasMojoodiTedadKarton(true);">+</button></div>');
                $('#mojoodibasArea').append(editPopup);
                $('#txteditbasMojoodi').focus();
            });

            function EditBasMojoodiTedadKarton(e) {
                var tedadedit = parseInt($('#txteditbasMojoodi').val());
                if (!e) {
                    if (mojood < tedadedit || tedadedit === 0 || $('#txteditbasMojoodi').val() === '') {
                        ElementRedalert('tblMojoodiDepoBas', 'top center', 'خطا در مقدار وارد شده')
                        return;
                    }
                } else {
                    if (tedadedit === 0 || $('#txteditbasMojoodi').val() === '') {
                        ElementRedalert('tblMojoodiDepoBas', 'top center', 'خطا در مقدار وارد شده')
                        return;
                    }
                }
                AjaxData({
                    url: "depoitems.asmx/EditBasMojoodiTedadKarton",
                    param: { kid: kalaId, tk: $('#txteditbasMojoodi').val(), b: e },
                    func: editkalatedadDone
                });

                function editkalatedadDone() {
                    if (e) {
                        td.text(mojood + tedadedit + ' کارتن');
                    } else {
                        td.text(mojood - tedadedit + ' کارتن');
                    }
                    GreenAlert('no', 'انجام شد');
                    $('.tooltipp').remove();
                    mojoodiTdele.css({ 'background-color': '' });
                }
            }
        </script>








        <%--دپوی داخل خط تولید--%>
        <script>
            $('#txtsearchItem').focus();
            GetItemTable();
            function GetItemTable() {
                $('#tblItems').empty();
                AjaxData({
                    url: 'depoitems.asmx/GetDepoItems',
                    param: {},
                    func: createItemsTable
                });
                function createItemsTable(e) {
                    var d = JSON.parse(e.d);
                    if (d.length > 0) {
                        var b = [];
                        b.push('<tr><th>نام آیتم</th><th>نام طرح</th><th>آبگریز</th><th>آنتی باکتریال</th><th>چیدمان</th><th>درجه</th>' +
                            '<th>تعداد</th><th>سبد</th><th>قفسه</th><th></th></tr>');
                        for (var i = 0; i < d.length; i++) {
                            b.push('<tr>' +
                                '<td itemid="' + d[i].ItemId + '" darb="' + d[i].Darb + '">' + d[i].ItemName + '</td>' +
                                '<td golid="' + d[i].GolId + '">' + d[i].GolName + '</td>' +
                                '<td><input disabled type="checkbox" ' + (d[i].Abgoriz ? 'checked' : '') + '/></td>' +
                                '<td><input disabled type="checkbox" ' + (d[i].AntiBacterial ? 'checked' : '') + '/></td>' +
                                '<td arrid="' + d[i].ArrangeId + '">' + d[i].Arrange + '</td>' +
                                '<td did="' + d[i].DarageId + '">' + d[i].Darage + '</td>' +
                                '<td style="position:relative;">' + d[i].Tedad + '</td>' +
                                '<td>' + d[i].Basket + '</td>' +
                                '<td>' + d[i].Shelf + '</td>' +
                                '<td><a id="' + d[i].Id + '" class="glyphicon glyphicon-pencil"></a></td>' +
                                '</tr>');
                        }
                        $('#tblItems ').append(b.join(''));
                        //$('#txtsearchItem').focus();
                        //Pagination();
                    }
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
                    url: 'depoitems.asmx/FilterGol',
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
                    url: 'depoitems.asmx/FilterItems',
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

            var itemData = {};
            var golData = {};
            $('#tblsearchitem').on('click', 'tr td', function () {
                itemData.ItemId = $(this).attr('itemid');
                itemData.ItemName = $(this).text();
                $('#tblsearchitem').empty();
                $('#txtsearchItem').val('');
                $('.itembadge').append(itemData.ItemName);
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
                $('#txtsearchGol').focus();
            });

            $('.itembadge').on('click', function () {
                $(this).empty();
                itemData = {};
                $('#txtsearchItem').focus();
            });

            function Sabt() {
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
                    ItemId: itemData.ItemId,
                    Darb: $('#darb')[0].checked,
                    GolId: golData.Id,
                    Darage: $('#drDarage :selected').val(),
                    Tedad: faTOen($('#txtTedad').val()),
                    Shelf: $('#txtShelf').val(),
                    Basket: $('#txtBask').val(),
                    ArrangeId: $('#drArrange :selected').val(),
                    Abgoriz: $('#ChAbgoriz').is(':checked'),
                    AntiBacterial: $('#ChaAntibacterial').is(':checked')
                };
                AjaxData({
                    url: 'depoitems.asmx/SaveItem',
                    param: { obj: data },
                    func: saved
                });

                function saved(e) {
                    if (e.d != "") {
                        var d = JSON.parse(e.d);
                        ElementRedalert('btnsabt', 'right center', 'این مورد قبلا ثبت شده است');
                        $('#tblItems').empty();
                        var b = [];
                        b.push('<tr><th>نام آیتم</th><th>نام طرح</th><th>آبگریز</th><th>آنتی باکتریال</th><th>چیدمان</th><th>درجه</th>' +
                            '<th>تعداد</th><th>سبد</th><th>قفسه</th><th></th></tr>');
                        for (var i = 0; i < d.length; i++) {
                            b.push('<tr>' +
                                '<td itemid="' + d[i].ItemId + '" darb="' + d[i].Darb + '">' + d[i].ItemName + '</td>' +
                                '<td golid="' + d[i].GolId + '">' + d[i].GolName + '</td>' +
                                '<td><input disabled type="checkbox" ' + (d[i].Abgoriz ? 'checked' : '') + '/></td>' +
                                '<td><input disabled type="checkbox" ' + (d[i].AntiBacterial ? 'checked' : '') + '/></td>' +
                                '<td arrid="' + d[i].ArrangeId + '">' + d[i].Arrange + '</td>' +
                                '<td did="' + d[i].DarageId + '">' + d[i].Darage + '</td>' +
                                '<td style="position:relative;">' + d[i].Tedad + '</td>' +
                                '<td>' + d[i].Basket + '</td>' +
                                '<td>' + d[i].Shelf + '</td>' +
                                '<td><a id="' + d[i].Id + '" class="glyphicon glyphicon-pencil"></a></td>' +
                                '</tr>');
                        }
                        $('#tblItems ').append(b.join(''));
                        setTimeout(function () {
                            var element = $('#tblItems tr:nth-child(2)');
                            $('html, body').animate({
                                scrollTop: $(element).offset().top - 300
                            }, 1000);
                            $(element).Blink(200, 3);
                        }, 500);
                        ClearFields('inputs');
                        golData = {};
                        itemData = {};
                        $('.itembadge').empty();
                        $('.golbadge').empty();
                        return;
                    }
                    GreenAlert('n', 'با موفقیت ثبت شد');
                    $('#txtTedad').val('');
                    $('#darb').prop('checked', false);
                    GetItemTable();
                }
            }

            var td, tr, id, ele;
            $('#tblItems').on('click', 'tr td a', function () {
                cancel();
                id = $(this).attr('id');
                tr = $(this).parent().parent();
                $(tr).css('background-color', 'lightgreen');
                golData.Id = $(tr).find('td:eq(1)').attr('golid');
                golData.GolName = $(tr).find('td:eq(1)').text();
                itemData.ItemId = $(tr).find('td:eq(0)').attr('itemid');
                itemData.ItemName = $(tr).find('td:eq(0)').text();
                $('#ChAbgoriz').prop('checked', $(tr).find('td:eq(2) input[type=checkbox]').attr('checked') == undefined ? false : true)
                $('#ChaAntibacterial').prop('checked', $(tr).find('td:eq(3) input[type=checkbox]').attr('checked') == undefined ? false : true)
                $('#darb').attr('checked', $(tr).find('td:eq(0)').attr('darb'))
                $('#drArrange').val($(tr).find('td:eq(4)').attr('arrid'));
                $('#drDarage').val($(tr).find('td:eq(5)').attr('did'));
                $('#txtTedad').val($(tr).find('td:eq(6)').text());
                $('#txtBask').val($(tr).find('td:eq(7)').text());
                $('#txtShelf').val($(tr).find('td:eq(8)').text());
                $('.golbadge').append(golData.GolName);
                $('.itembadge').append(itemData.ItemName);
                $('#btnsabt').hide();
                $('#btnedit').show();
                $('#btncancel').show();
                $("html, body").animate({ scrollTop: 0 }, "slow");
            });

            function cancel() {
                $(tr).css('background-color', '');
                ClearFields('inputs');
                golData = {};
                itemData = {};
                id = 0;
                $('#darb').prop('checked', false);
                $('.itembadge').empty();
                $('.golbadge').empty();
                $('#btnsabt').show();
                $('#btnedit').hide();
                $('#btncancel').hide();
            }

            function update() {
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
                    ItemId: itemData.ItemId,
                    Darb: $('#darb')[0].checked,
                    GolId: golData.Id,
                    Darage: $('#drDarage :selected').val(),
                    Tedad: faTOen($('#txtTedad').val()),
                    Shelf: $('#txtShelf').val(),
                    Basket: $('#txtBask').val(),
                    ArrangeId: $('#drArrange :selected').val(),
                    Abgoriz: $('#ChAbgoriz').is(':checked'),
                    AntiBacterial: $('#ChaAntibacterial').is(':checked')
                };
                AjaxData({
                    url: 'depoitems.asmx/UpdateItem',
                    param: { obj: data },
                    func: updated
                });

                function updated(e) {
                    if (e.d != "") {
                        var d = JSON.parse(e.d);
                        ElementRedalert('btnedit', 'right center', 'این مورد قبلا ثبت شده است');
                        $('#tblItems').empty();
                        var b = [];
                        b.push('<tr><th>نام آیتم</th><th>نام طرح</th><th>آبگریز</th><th>آنتی باکتریال</th><th>چیدمان</th><th>درجه</th>' +
                            '<th>تعداد</th><th>سبد</th><th>قفسه</th><th></th></tr>');
                        for (var i = 0; i < d.length; i++) {
                            b.push('<tr>' +
                                '<td itemid="' + d[i].ItemId + '" darb="' + d[i].Darb + '">' + d[i].ItemName + '</td>' +
                                '<td golid="' + d[i].GolId + '">' + d[i].GolName + '</td>' +
                                '<td><input disabled type="checkbox" ' + (d[i].Abgoriz ? 'checked' : '') + '/></td>' +
                                '<td><input disabled type="checkbox" ' + (d[i].AntiBacterial ? 'checked' : '') + '/></td>' +
                                '<td arrid="' + d[i].ArrangeId + '">' + d[i].Arrange + '</td>' +
                                '<td did="' + d[i].DarageId + '">' + d[i].Darage + '</td>' +
                                '<td style="position:relative;">' + d[i].Tedad + '</td>' +
                                '<td>' + d[i].Basket + '</td>' +
                                '<td>' + d[i].Shelf + '</td>' +
                                '<td><a id="' + d[i].Id + '" class="glyphicon glyphicon-pencil"></a></td>' +
                                '</tr>');
                        }
                        $('#tblItems ').append(b.join(''));
                        setTimeout(function () {
                            var element = $('#tblItems tr:nth-child(2)');
                            $('html, body').animate({
                                scrollTop: $(element).offset().top - 300
                            }, 1000);
                            $(element).Blink(200, 3);
                        }, 500);
                        ClearFields('inputs');
                        golData = {};
                        itemData = {};
                        $('.itembadge').empty();
                        $('.golbadge').empty();
                        return;
                    }
                    GreenAlert('n', 'با موفقیت ثبت شد');
                    cancel();
                    GetItemTable();
                }
            }

            var tedad;
            var targetTd;
            var tooltipText;
            $('#tblItems').on('click', 'td', function () {
                if (this.cellIndex !== 6) return;
                if (td !== undefined) {
                    td.css({ 'background-color': '' });
                }
                if (ele !== undefined) {
                    $('.tooltipp').remove();
                }

                targetTd = $(this);
                td = $(this).css({ 'background-color': 'lightcoral' });
                var d = $(td).Getlocation();
                tedad = parseInt($(this).text());
                id = $(this).parent().find('a').attr('id');
                ele = $('<div class="tooltipp" style="min-width:200px;top:' + d.y + 'px;left:' + (d.x - 65) + 'px;">' +
                    '<button class="button" type="button" onclick="minus();">-</button>' +
                    '<input type="number" class="form-control text-center" style="width:150px;" id="txtEditTedad"/>' +
                    '<button class="button" type="button" onclick="plus();">+</button></div>');
                $('.panel-primary').append(ele);
                $('#txtEditTedad').focus();
            });

            function plus() {
                tooltipText = 0;
                if ($('#txtEditTedad').val() === '' || parseInt($('#txtEditTedad').val()) <= 0) {
                    RedAlert('txtEditTedad', 'خطا در مقدار وارد شده');
                    return;
                }
                tooltipText = $('#txtEditTedad').val();
                AjaxData({
                    url: 'depoitems.asmx/Plus',
                    param: { val: tooltipText, rowid: id },
                    func: plusdone
                });
                function plusdone() {
                    td.css({ 'background-color': '' });
                    targetTd.text(tedad + parseInt(tooltipText))
                    $('.tooltipp').remove();
                    //GetItemTable();
                }
            }

            function minus() {
                tooltipText = 0;
                if (parseInt($('#txtEditTedad').val()) > tedad
                    || $('#txtEditTedad').val() === '' || parseInt($('#txtEditTedad').val()) <= 0) {
                    RedAlert('txtEditTedad', 'خطا در مقدار وارد شده');
                    return;
                }
                tooltipText = $('#txtEditTedad').val();
                AjaxData({
                    url: 'depoitems.asmx/Minus',
                    param: { val: tooltipText, rowid: id },
                    func: minusdone
                });
                function minusdone() {
                    td.css({ 'background-color': '' });
                    targetTd.text(tedad - parseInt(tooltipText))
                    if (tedad - parseInt(tooltipText) == "0") {
                        $(td).parent().remove();
                    }
                    $('.tooltipp').remove();
                    //GetItemTable();
                }
            }

            $(document).click(function (event) {
                if ($('#home').hasClass('active')) {
                    if (event.target.cellIndex !== 6 && !$(event.target).closest('.tooltipp').length) {
                        $('.tooltipp').remove();
                        if (td !== undefined) {
                            td.css({ 'background-color': '' });
                        }
                        if (mojoodiTdele !== undefined) {
                            mojoodiTdele.css({ 'background-color': '' });
                        }
                    }
                } else {
                    if (event.target.cellIndex !== 5 && !$(event.target).closest('.tooltipp').length) {
                        $('.tooltipp').remove();
                        if (td !== undefined) {
                            td.css({ 'background-color': '' });
                        }
                        if (mojoodiTdele !== undefined) {
                            mojoodiTdele.css({ 'background-color': '' });
                        }
                    }
                }
            });

            function Pagination() {
                $('#tblItems').after('<div id="nav"></div>');
                var rowsShown = 20;
                var rowsTotal = $('#tblItems tr').length;
                var numPages = rowsTotal / rowsShown;
                for (i = 0; i < numPages; i++) {
                    var pageNum = i + 1;
                    $('#nav').append('<a href="#" rel="' + i + '">' + pageNum + '</a> ');
                }
                $('#tblItems tr').hide();
                $('#tblItems tr').slice(0, rowsShown).show();
                $('#nav a:first').addClass('active');
                $('#nav a').bind('click',
                    function () {
                        $('#nav a').removeClass('active');
                        $(this).addClass('active');
                        var currPage = $(this).attr('rel');
                        var startItem = currPage * rowsShown;
                        var endItem = startItem + rowsShown;
                        $('#tblItems tr').css('opacity', '0.0').hide().slice(startItem, endItem).css('display', 'table-row')
                            .animate({ opacity: 1 }, 300);
                    });
            }
        </script>

        <script>
            $(document).on('click', function (e) {
                var container = $(".tablescroll");
                if (!container.is(e.target) && container.has(e.target).length === 0) {
                    $('#tblsearchitem').empty();
                    $('#tblgol').empty();
                }
            });
        </script>
    </div>
</asp:Content>

