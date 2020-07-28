<%@ Page Title="دپوی درجه بندی" Language="C#" MasterPageFile="~/Decor/MasterPage.master" AutoEventWireup="true" CodeFile="Gradedepo.aspx.cs" Inherits="Decor_Gradedepo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="../Content/kamadatepicker.js"></script>
<link href="../Content/kamadatepicker.css" rel="stylesheet" />

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
    table tr td {
        border-left: 1px solid darkgray!important;
    }
</style>
<div class="tab-content">
    <div class="panel panel-primary" style="position: relative;">
        <div class="panel-heading" style="text-align: center">آماردپوی درجه بندی</div>

        <div class="row" style="text-align: right;">
            <div class="col-sm-4">
             
            </div>
            <div class="col-sm-4">
      
                <div class="col-sm-6">
                    <label style="display: block;">&nbsp</label>
                    <button type="button" class="button" onclick="createTables();"  style="width: 100%" id="btnShow">نمایش</button>
                </div>
                <div class="col-sm-6">
                    <label style="display: block;">قالب</label>
                    <asp:DropDownList runat="server" ID="Drform" CssClass="form-control text-right" ClientIDMode="Static" Width="100%"  TabIndex="3" DataSourceID="sqlGhaleb" DataTextField="name" DataValueField="levell" >
            
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sqlGhaleb" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT levell, name FROM item_type UNION ALL SELECT 0 AS Expr1, 'همه قالب ها' AS Expr2 ORDER BY levell"></asp:SqlDataSource>
                </div>
              
            </div>
            <div class="col-sm-4">
            </div>
     
        </div>    
   
        <br/>
        <div class="panel-footer"  >
            <div class="row" style="padding: 0; margin:auto;width: 80%">
                <div class="col-lg-6" style="padding: 0; margin: 0;">
                    <table class="table table-bordered" id="gridod2">
                    </table>
                </div>
                <div class="col-lg-6" style="padding: 0; margin: 0;">
                    <table class="table table-bordered" id="gridod1">
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

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
   
    createTables();
    function createTables() {
        if ($('#txtEndDate').val() != '' && $('#txtStrtDate').val() != '') {
            $('#gridod1').empty();
            $('#gridod2').empty();
            AjaxData({
                url: 'ProgramDecor.asmx/GetDepoGrade',
                param: { glaze: $('#drGlaze :selected').val(),form:$('#Drform :selected').val(), sdate: $('#txtStartDate').val(), edate: $('#txtEndDate').val() },
                func: createGTables
            });
            function createGTables(e) {
                var d = JSON.parse(e.d);
                if (d.length === 0) {
                    return;
                }
                var tbl1Rows = Math.ceil(d.length / 2);
                var radif = 1;
                var row = 0;
                var tbl2Rows = d.length - tbl1Rows;
                var tbl1Body = [];
                var tbl2Body = [];
                tbl1Body.push('<tr><th>ردیف</th><th>نام آیتم</th><th>A1</th><th>A</th><th>1/5</th><th>C</th><th>C1</th></tr>');
                tbl2Body.push('<tr><th>ردیف</th><th>نام آیتم</th><th>A1</th><th>A</th><th>1/5</th><th>C</th><th>C1</th></tr>');
                for (var i = 0; i < tbl1Rows; i++) {
                    tbl1Body.push('<tr>' +
                        '<td >' + radif + '</td>' +
                        '<td>' + d[row].ItemName + '</td>' +
                        '<td>' + d[row].A1 + '</td>' +
                        '<td>' + d[row].A + '</td>' +
                        '<td>' + d[row].B + '</td>' +
                        '<td>' + d[row].C + '</td>' +
                        '<td>' + d[row].C1 + '</td>' +
                       
                        '</tr>');
                    radif++;
                    row++;
                }
                for (var j = 0; j < tbl2Rows; j++) {
                    tbl2Body.push('<tr>' +
                        '<td>' + radif + '</td>' +
                        '<td>' + d[row].ItemName + '</td>' +
                        '<td>' + d[row].A1 + '</td>' +
                        '<td>' + d[row].A + '</td>' +
                        '<td>' + d[row].B + '</td>' +
                        '<td>' + d[row].C + '</td>' +
                        '<td>' + d[row].C1 + '</td>' +
                      
                        '</tr>');
                    radif++;
                    row++;
                }
                $('#gridod1').append(tbl1Body.join(''));
                $('#gridod2').append(tbl2Body.join(''));
            }
        }
    }
</script>
</asp:Content>

