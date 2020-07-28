<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="havaleh.aspx.cs" Inherits="bastebandi_havaleh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:HiddenField runat="server" ID="HavalehId"/>
    <style>
        body * { font-family: myfont;}
         label {
             margin: 0;
             margin-right: 5px;
             font-size: 12pt;
         }
        input[type='checkbox'] {
            vertical-align: middle;
            margin: 0;
        }
        .borderless {
            border: none;background-color: transparent;float: left;outline: none;
        }
        .mydes td {
            border: 1px solid rgb(228, 228, 228);
            padding: 1px 1px!important;
            vertical-align: middle !important;
            background-color: #ffffff;
            font-size: 10pt;
        }
        .loaderitems {
            background-image: url(../flower_depot/Images/loading.png);
            background-repeat: no-repeat;
            background-size: 20px;
            width: 20px;
            height: 20px;
            display: inline-block;
            vertical-align: middle;
        }
        .search {
            font-family: myfont;
            font-weight: 700;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
            text-align: right;
            font-size: 18px;
            background-color: white;
            background-image: url('../flower_depot/Images/Search_Dark.png');
            background-size: 15px;
            background-position: right 10px top 10px;
            background-repeat: no-repeat;
            padding: 5px 35px 5px 5px;
            -webkit-transition: width 0.4s ease-in-out;
            transition: width .4s ease-in-out;
            width: 100%;
            height: 40px;
            outline: none;
        }
        .table {
            font-size: 11pt;
        }
        .table td { padding: 2px !important;}
        .molahexecss {
            font-size: 9pt !important;
            width: 250px;
        }
    </style>

<asp:Panel runat="server" DefaultButton="btnSearch">
<div class="panel panel-primary" runat="server" id="pnlHavaleh">
    <div class="panel-heading">حواله خروج</div>
    <div class="panel-body">
            <div class="row" style="margin: 0; text-align: right;">
                <div class="col-lg-3">
                    <label>مشتری</label>
                    <asp:DropDownList runat="server" TabIndex="5" AppendDataBoundItems="True" ID="drMoshtari" Width="100%" CssClass="form-control" DataSourceID="Sqlmoshtari" DataTextField="nam" DataValueField="ID" AutoPostBack="True" OnSelectedIndexChanged="drMoshtari_OnSelectedIndexChanged">
                        <asp:ListItem Value="-1">انتخاب کنید</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sqlmoshtari" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="select nam , ID FROM moshtari"></asp:SqlDataSource>
                </div>
                <div class="col-lg-3">
                    <label>شماره آخرین حواله</label>
                    <asp:TextBox ID="txtLastSH" runat="server" Width="100%" CssClass="form-control text-center" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="col-lg-3" style="padding: 0;">
                    <label style="display: block;">تاریخ حواله خروج</label>
                    <asp:DropDownList ID="drpyear" TabIndex="4" CssClass="form-control" style="display: inline-block; width: 32%;"  runat="server">
                        <asp:ListItem>سال</asp:ListItem>
                        <asp:ListItem>1385</asp:ListItem>
                        <asp:ListItem>1386</asp:ListItem>
                        <asp:ListItem>1387</asp:ListItem>
                        <asp:ListItem>1388</asp:ListItem>
                        <asp:ListItem>1389</asp:ListItem>
                        <asp:ListItem>1390</asp:ListItem>
                        <asp:ListItem>1391</asp:ListItem>
                        <asp:ListItem>1392</asp:ListItem>
                        <asp:ListItem>1393</asp:ListItem>
                        <asp:ListItem>1394</asp:ListItem>
                        <asp:ListItem>1395</asp:ListItem>
                        <asp:ListItem>1396</asp:ListItem>
                        <asp:ListItem>1397</asp:ListItem>
                        <asp:ListItem>1398</asp:ListItem>
                        <asp:ListItem>1399</asp:ListItem>
                        <asp:ListItem>1400</asp:ListItem>
                        <asp:ListItem>1401</asp:ListItem>
                        <asp:ListItem>1402</asp:ListItem>
                        <asp:ListItem>1403</asp:ListItem>
                        <asp:ListItem>1404</asp:ListItem>
                        <asp:ListItem>1405</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="drpmonth"  TabIndex="3" CssClass="form-control" style="display: inline-block;width: 32%;"  runat="server" >
                        <asp:ListItem>ماه</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem Value="03"></asp:ListItem>
                        <asp:ListItem Value="04"></asp:ListItem>
                        <asp:ListItem Value="05"></asp:ListItem>
                        <asp:ListItem Value="06"></asp:ListItem>
                        <asp:ListItem Value="07"></asp:ListItem>
                        <asp:ListItem Value="08"></asp:ListItem>
                        <asp:ListItem Value="09"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                        <asp:ListItem Value="11"></asp:ListItem>
                        <asp:ListItem Value="12"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="drpday"  TabIndex="2" CssClass="form-control" style="display: inline-block;width: 32%;" runat="server" >
                        <asp:ListItem>روز</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-lg-3">
                    <label>شماره حواله خروج</label>
                    <asp:TextBox TabIndex="1" runat="server" Width="100%" ID="txtHavalehNo" CssClass="form-control text-center"></asp:TextBox>
                </div>
            </div>
    
            <div class="row" style="margin: 0; margin-top: 15px;text-align: right;">
                <div class="col-lg-12">
                    <label>آدرس خریدار</label>
                    <asp:TextBox runat="server" TabIndex="6" dir="rtl" ID="txtAddressKharidar" Width="100%" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin: 0;margin-top: 15px;text-align: right;">
                <div class="col-lg-6">
                    <label>ملاحظات</label>
                    <asp:TextBox runat="server" dir="rtl" TabIndex="9" ID="txtMolahezat" Width="100%" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-lg-3">
                    <label>شماره ماشین</label>
                    <asp:TextBox runat="server" dir="rtl" TabIndex="8" ID="txtShomareMashin" Width="100%" CssClass="form-control text-center"></asp:TextBox>
                </div>
                <div class="col-lg-3">
                    <label>نام راننده</label>
                    <asp:TextBox runat="server" dir="rtl" TabIndex="7" ID="txtNamDriver" Width="100%" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
    </div>
    <div class="panel-footer">
        <asp:Button runat="server" CssClass="button" ID="btnSabt" TabIndex="10" Text="ثبت" OnClick="btnSabt_OnClick"/>
        <asp:Button runat="server" Text="ویرایش" CssClass="button" ID="btnEdit" Visible="False" OnClick="btnEdit_OnClick"/>
        <asp:Button runat="server" Text="انصراف" CssClass="button" ID="btnCancel" Visible="False" OnClick="btnCancel_OnClick"/>
    </div>
    <div class="panel-footer">
        <div id="pnldeletehavaleh" runat="server" Visible="False">
            <div style="padding: 15px;">
                <div style="border: 2px solid red; display: inline-block; padding: 10px; border-radius: 5px;">
                    <label style="display: block;">این حواله با تمامی کالاهای آن حذف خواهد شد. آیا مطمئن هستید؟</label>
                    <asp:Button runat="server" ID="btndeletehavaYes" CssClass="button" Text="بله" OnClick="btnYes_OnClick"/>
                    <asp:Button runat="server" ID="btndeletehavaNo" CssClass="button" Text="خیر" OnClick="btndeletehavaNo_OnClick"/>
                </div>
            </div>
        </div>
        <asp:Button runat="server" ID="btnSearch" Text="جستجو" CssClass="button" OnClick="btnSearch_OnClick"/>
        <input type="text" id="txtsearchAll" runat="server" class="form-control" dir="rtl" placeholder="جستجو"/>
        <div style="padding: 15px; width: 100%;">
            <asp:GridView runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" 
                          DataSourceID="Sqlhavaleh" AllowPaging="True" DataKeyNames="ID" ID="gridHavaleh" OnRowCommand="gridHavaleh_OnRowCommand">
                <Columns>
                    <asp:ButtonField CommandName="kala" Text="ثبت کالا" >
                        <ControlStyle ForeColor="blue"></ControlStyle>
                    </asp:ButtonField>
                    <asp:BoundField DataField="sh" HeaderText="شماره حواله" SortExpression="sh" />
                    <asp:BoundField DataField="dat" HeaderText="تاریخ" SortExpression="dat" />
                    <asp:BoundField DataField="mnan" HeaderText="نام مشتری" SortExpression="mnan" />
                    <asp:BoundField DataField="madd" HeaderText="آدرس مشتری" SortExpression="madd" />
                    <asp:BoundField DataField="rnam" HeaderText="نام راننده" SortExpression="rnam" />
                    <asp:BoundField DataField="rno" HeaderText="شماره ماشین" SortExpression="rno" />
                    <asp:BoundField DataField="mem" HeaderText="ملاحظات" SortExpression="mem" >
                        <ItemStyle CssClass="molahexecss"></ItemStyle>
                    </asp:BoundField>
                    <asp:ButtonField CommandName="ed" Text="ویرایش" >
                        <ControlStyle ForeColor="blue"></ControlStyle>
                    </asp:ButtonField>
                    <asp:ButtonField CommandName="delet" Text="حذف" >
                        <ControlStyle ForeColor="blue"></ControlStyle>
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Sqlhavaleh" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="
               SELECT ID ,replace(sh, '/', '')as shomare, sh, left (dat,4)+ '/' + SUBSTRING(dat ,5,2) + '/' + right(dat,2) as dat
,mnan, madd, rnam, rno , substring(mem,0,20) + ' ...' as mem FROM HKhorooj order by HKhorooj.dat desc,shomare desc"></asp:SqlDataSource>
        </div>
    </div>
</div>
</asp:Panel> 
    

<div class="panel panel-primary" runat="server" id="pnlKala" Visible="False">
        <div class="panel-heading">ثبت کالا</div>
<asp:Panel runat="server" DefaultButton="btnSabtKala">
        <div class="panel-body">
            <div style="padding: 10px; border: 2px solid darkgray; width: 100%;">
                <label runat="server" id="lblrno" style="background-color: #dcdcdc; padding: 2px;direction: rtl; color: darkblue;"></label>
                <label>شماره ماشین </label>
                <label runat="server" id="lblrnam" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                <label>نام راننده </label>
                <label runat="server" id="lblmadd" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                <label>آدرس مشتری </label>
                <label runat="server" id="lblmnam" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                <label>نام مشتری </label>
                <label runat="server" id="lbldat" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                <label>تاریخ </label>
                <label runat="server" id="lblsh" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                <label>شماره حواله </label>
                <br/>
                <br/>
                <label style="display: block; text-align: right;"> : ملاحظات</label>
                <label runat="server" id="lblmem" style="background-color: #dcdcdc; padding: 2px; direction: rtl; color: darkblue;"></label>
            </div>
            <hr/>
            <div class="row" style="margin: 0;text-align: right;">
                <div class="col-lg-2">
                    <label>تعداد کارتن</label>
                    <asp:TextBox runat="server" ID="txtKalaCartoon" Width="100%" CssClass="form-control text-center" autocomplete="off"></asp:TextBox>
                </div>
                <div class="col-lg-2">
                    <label>درجه</label>
                    <button class="glyphicon glyphicon-plus borderless" id="btnAddDarage" type="button"
                            onclick="document.getElementById('darage').style.display='block'"></button>
                    <input type="text" id="searchDarage" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off"/>
                    <asp:ListBox ClientIDMode="Static" ID="listDarage" dir="rtl" runat="server" Height="300px" Width="100%" DataSourceID="Sqldarage" DataTextField="dar" DataValueField="ID">
                    </asp:ListBox>
                    <asp:SqlDataSource ID="Sqldarage" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, dar FROM Darajeh"></asp:SqlDataSource>
                </div>
                <div class="col-lg-2">
                    <label>رنگ گل</label>
                    <button class="glyphicon glyphicon-plus borderless" id="btnAddRang" type="button" 
                            onclick="document.getElementById('rang').style.display='block'"></button>
                    <input type="text" id="searchRang" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off"/>
                    <asp:ListBox ClientIDMode="Static" ID="listRang" Height="300px" dir="rtl" runat="server" Width="100%" DataSourceID="SqlRangGol" DataTextField="colo" DataValueField="ID">
                    </asp:ListBox>
                    <asp:SqlDataSource ID="SqlRangGol" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, colo FROM rang"></asp:SqlDataSource>
                </div>
                <div class="col-lg-3">
                    <label>گل</label>
                    <button class="glyphicon glyphicon-plus borderless" id="btnAddGol" type="button" 
                            onclick="document.getElementById('gol').style.display='block'"></button>
                    <input type="text" id="searchGol" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off"/>
                    <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" id="listGol" style="width: 100%;" DataSourceID="SqlGol" DataTextField="nam" DataValueField="ID"/>
                    <asp:SqlDataSource ID="SqlGol" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT nam + ' / '  + case when cod is null then '----' else cod end as nam, ID FROM Gol where nam is not null order by nam"></asp:SqlDataSource>
                </div>
                <div class="col-lg-3">
                    <label>آیتم / سرویس</label>
                    <asp:CheckBox runat="server" ID="chkFallehService" AutoPostBack="True" style="display: inline-block; float: left; vertical-align: middle;" Text="سرویس" OnCheckedChanged="OnCheckedChanged"/>
                    <div runat="server" id="pnlFalleh" Visible="True">
                        <button class="glyphicon glyphicon-plus borderless" id="btnAddItem" runat="server" type="button" style="position: absolute; top: 27px;" OnServerClick="btnAddItem_OnServerClick"></button>
                        <input type="text" id="searchFalleh" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off"/>
                        <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" id="listFalleh" style="width: 100%;" DataSourceID="SqlFalleh" DataTextField="nam" DataValueField="ID"/>
                        <asp:SqlDataSource ID="SqlFalleh" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT [ID], [nam] FROM [Item] where nam is not null and ID <> 0"></asp:SqlDataSource>
                    </div>
                    <div runat="server" id="pnlService" Visible="False">
                        <button class="glyphicon glyphicon-plus borderless" id="btnAddService" runat="server" type="button" style="position: absolute; top: 27px;" OnServerClick="btnAddService_OnServerClick"></button>
                        <input type="text" placeholder="جستجو" id="searchService" style="width: 100%; direction: rtl;" autocomplete="off"/>
                        <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" id="listService" style="width: 100%;" DataSourceID="SqlService" DataTextField="nam" DataValueField="ID"/>
                        <asp:SqlDataSource ID="SqlService" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT [ID], [nam] FROM [Service] where nam is not null and ID <> 0"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    <div class="panel-footer">
        <asp:Button runat="server" CssClass="button" Text="بازگشت" ID="btnBacktoHavale" OnClick="btnBacktoHavale_OnClick"/>
        &nbsp;&nbsp;
        <asp:Button runat="server" Text="ثبت کالا" CssClass="button" ID="btnSabtKala" OnClick="btnSabtKala_OnClick"/>
    </div>
</asp:Panel>
<div class="panel-footer">
    <asp:HiddenField runat="server" ID="HavalehRizId"/>
    <div id="pnldeleteHavalehRiz" runat="server" Visible="False">
        <div style="padding: 15px;">
            <div style="border: 2px solid red; display: inline-block; padding: 10px; border-radius: 5px;">
                <label style="display: block;">این آیتم حذف خواهد شد. آیا مطمئن هستید؟</label>
                <asp:Button runat="server" ID="btnDeleteRizYes" CssClass="button" Text="بله" OnClick="btnDeleteRizYes_OnClick"/>
                <asp:Button runat="server" ID="btnDeleteRizNo" CssClass="button" Text="خیر" OnClick="btnDeleteRizNo_OnClick"/>
            </div>
        </div>
    </div>

    <div style="padding: 15px; width: 100%;">
        <button type="button" id="btnPrint" class="glyphicon glyphicon-print" style="border: none; background-color: transparent; outline: none;" onclick="printDiv();"></button>
        <div style="display: inline-block; padding: 3px 5px; background-color: royalblue; border-radius: 3px; color: white;">
            <label>کیلوگرم </label>
            <label runat="server" id="lblVaznKol"></label>
            <label>: وزن کل بار</label>    
        </div>
        &nbsp;&nbsp;&nbsp;
        <div style="display: inline-block; padding: 3px 5px; background-color: royalblue; border-radius: 3px; color: white;">
            <label runat="server" id="lblItemkol"></label>
            <label>: تعداد کل آیتم ها</label>    
        </div>
        &nbsp;&nbsp;&nbsp;
        <a id="showTotal" style="cursor: pointer; font-size: 12pt; color: royalblue; font-weight: 800; border: 1px solid royalblue; padding: 0 5px;" onclick="document.getElementById('kalaTotal').style.display='block'">آمار آیتم</a>
    </div>
    <div style="text-align: center; width: 210mm; height: 297mm; position: relative; margin: auto;" id="printHavaleh">
        <style>
            @media print {
                @font-face {
                    font-family: 'myfont';
                    src: url('fonts/Far_Nazanin.eot'),
                         url('fonts/Far_Nazanin.eot?#FooAnything') format('embedded-opentype');
                    src: local('☺'),
                         url('fonts/Far_Nazanin.ttf') format('truetype'),
                         url('fonts/Far_Nazanin.svg') format('svg');
                    font-weight: 400;
                }
                .square {
                    height: 13px;
                    width: 13px;
                    border: 1px solid black;
                    vertical-align: middle;
                }
                body *{ font-family: myfont!important;}
                .table { direction: rtl;  font-size: 13pt; font-weight : 900;width: 100%;}
                .table tr th { padding: 9px 5px !important; background-color:#f1f1f1;}
                .table td { padding: 0px 2px !important;text-align: center !important;}
                .havalehHeader{ display: block !important;}
                .havalehFooter{ display: block !important;padding-bottom: 10px;}
                .hidetd , .pagerCss{ display: none !important;}
                .pnlgrid{ padding-top: 105px !important;}
            }
            @page {
                size: A4;
                margin: 5mm;
            }
        </style>
        <div style="width: 100%; position: absolute; top: 0; left: 0; height: 100px; background-color: white; display: none; font-weight: 900;" class="havalehHeader" id="havalehHeader">
            <label style="font-family: tahoma!important; font-size: 10pt; position: absolute; top: 5px; left: 5px;">FWH050 : کد فرم</label>
            <label style="position: absolute; top: 40px; left: 20px;" runat="server" id="lblShHavaleh"></label>
            <label style="position: absolute; top: 45px; left: 5px;">........................................ : شماره برگ خروج</label>
            <label style="position: absolute; top: 70px; left: 20px;" runat="server" id="lblDateHavaleh"></label>
            <label style="position: absolute; top: 75px; left: 5px;">........................................ : تاریخ خروج</label>
            <h3 style="position: absolute; top: -20px; left: 40%; font-weight: 800;">شرکت صنایع چینی تقدیس</h3>
            <h5 style="position: absolute; top: 20px; left: 44%; font-weight: 800; ">حواله خروج کالا از انبار</h5>
            <img src="Images/arm-n.jpg" style="position: absolute; right: 5px; top: 5px; height: 90px;width: auto;"/>
            <label style="position: absolute; right: 70px; top: 45px;"> : نام خریدار</label>
            <label style="position: absolute; right: 140px; top: 45px;" runat="server" id="lblKharidar"></label>
            <label style="position: absolute; right: 70px; top: 75px;"> : آدرس خریدار</label>
            <label style="position: absolute; right: 150px; top: 75px;" runat="server" id="lblAddKharidar"></label>
        </div>
        <div class="pnlgrid">
            <asp:HiddenField runat="server" ClientIDMode="Static" ID="hdPageIndex"/>
            <asp:HiddenField runat="server" ClientIDMode="Static" ID="hdPageCount"/>
            <asp:HiddenField runat="server" ClientIDMode="Static" ID="TotalHavaleh"/>
            <asp:GridView runat="server" CssClass="table table-bordered" ID="gridKala" ClientIDMode="Static" 
                          style="margin: 0;" DataSourceID="SqlKala" AutoGenerateColumns="False" AllowPaging="True" PageSize="25" DataKeyNames="rizid"
                          OnPageIndexChanging="gridKala_OnPageIndexChanging" OnRowCommand="gridKala_OnRowCommand">
                <Columns>
                    <asp:BoundField DataField="rn" HeaderText="ردیف" ReadOnly="True" SortExpression="rn" />
                    <asp:BoundField DataField="kala" HeaderText="شرح کــالا" ReadOnly="True" SortExpression="kala" />
                    <asp:BoundField DataField="dar" HeaderText="درجه" SortExpression="dar" />
                    <asp:BoundField DataField="Tedad" HeaderText="تعداد کارتن" SortExpression="Tedad" />
                    <asp:BoundField DataField="TedadK" HeaderText="تعداد واحد در کارتن" SortExpression="TedadK" />
                    <asp:BoundField DataField="tedadkol" HeaderText="تعداد کل" ReadOnly="True" SortExpression="tedadkol" />
                    <asp:ButtonField CommandName="del" Text="حذف">
                        <ControlStyle ForeColor="blue" CssClass="hidetd"></ControlStyle>
                        <ItemStyle CssClass="hidetd"></ItemStyle>
                        <HeaderStyle CssClass="hidetd"></HeaderStyle>
                    </asp:ButtonField>
                </Columns>
                <PagerStyle CssClass="pagerCss" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlKala" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="
select ROW_NUMBER()over (order by id)as rn , kala ,Golname, dar , typee , rizid , TedadK , tedadkol , Tedad  from (
select id , orderType + ' - ' + Golname + ' ' + colo as kala,Golname , dar , typee ,rizid ,
case when l30 = 1 then cast(TedadK as nvarchar(10)) + N' سرویس' else cast(TedadK as nvarchar(10)) end as TedadK,
case when l30 = 1 then cast(tedadkol as nvarchar(10)) + N' سرویس' else cast(tedadkol as nvarchar(10)) end as tedadkol,
cast(Tedad as nvarchar(10)) + ' ' + typee as Tedad 
from(SELECT HKhoroojRiz.id, Item.low30 as l30, case when dbo.Item.nam = '----' then Service.nam
when Service.nam = '----' then dbo.Item.nam
end as orderType ,
case when dbo.Item.nam = '----' then N'سرویس'
when Service.nam = '----' then N'کارتن'
end as typee,
dbo.Gol.nam AS Golname, dbo.Darajeh.dar, dbo.rang.colo,
dbo.HKhoroojRiz.TedadK, dbo.HKhoroojRiz.Tedad, 
dbo.HKhoroojRiz.TedadK * dbo.HKhoroojRiz.Tedad AS tedadkol ,
dbo.HKhoroojRiz.id as rizid
FROM dbo.HKhorooj INNER JOIN
dbo.HKhoroojRiz ON dbo.HKhorooj.ID = dbo.HKhoroojRiz.idkh INNER JOIN
dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID INNER JOIN
dbo.Service ON dbo.HKhoroojRiz.ids = dbo.Service.ID INNER JOIN
dbo.Gol ON dbo.HKhoroojRiz.idg = dbo.Gol.ID INNER JOIN
dbo.Darajeh ON dbo.HKhoroojRiz.idd = dbo.Darajeh.ID INNER JOIN
dbo.rang ON dbo.HKhoroojRiz.rang = dbo.rang.ID
WHERE(dbo.HKhorooj.ID = @hid))i)h">
            <SelectParameters>
                <asp:ControlParameter ControlID="HavalehId" Name="hid" PropertyName="Value" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div style="width: 97.8%; position: absolute; bottom: 0; left: 7.5px; background-color: white; text-align: center; display: none; border: 1px solid #000000; padding-top: 15px; font-weight: 900;" id="havalehFooter" class="havalehFooter">
            <div style="padding: 5px;">
                <div style="width: 180px; display: inline-block;"><div style="display: inline-block;" class="square"></div>  نسخه چهارم : نگهبان</div>
                <div style="width: 180px; display: inline-block;"><div style="display: inline-block;" class="square"></div>  نسخه سوم : اداره فروش</div>
                <div style="width: 180px; display: inline-block;"><div style="display: inline-block;" class="square"></div>  نسخه دوم : امور مالی</div>
                <div style="width: 180px; display: inline-block;"><div style="display: inline-block;" class="square"></div>  نسخه اول : خریدار</div>
            </div>
            <div style="padding: 15px; width: 100%; position: relative;">
                <label style="position: absolute; top: 5px; right: 350px;" runat="server" id="lblDriverName"></label>
                <label style="position: absolute; top: 5px; left: 170px; direction: rtl;" runat="server" id="lblShPelak"></label>
                <label style="position: absolute; top: 10px; right: 150px;">.کالای فوق صحیحا تحویل اینجانب................................................... راننده کامیون..................................................گردید</label>
            </div>
            <div style="padding: 15px; width: 100%;">
                <img src="Images/4.png" style="position: absolute; width: 150px; height: auto; bottom: 0px; left: 110px;"/>
                <label style="width: 100%;">..................................................  تنظیم کننده..................................................مسئول انبار..................................................مدیر کارخانه </label>
                <label runat="server" id="lblPageNumber" style="position: absolute; left: 5px; bottom: 0;"></label>
            </div>
        </div>
    </div>
</div>
    </div>

    <div id="darage" class="w3-modal">
        <div class="w3-modal-content" style="background-color: transparent;">
            <div class="panel panel-primary">
                <span onclick="document.getElementById('darage').style.display='none'" style="background-color: transparent;" class="w3-button w3-display-topright">
                    <span class="glyphicon glyphicon-remove"></span>
                </span>
                <div class="panel-heading">.:: ثبت درجه ::.</div>
                <div style="padding: 15px;">
                    <asp:Button runat="server"  CssClass="button" Text="ثبت" ID="btnAddDarageM" OnClick="btnAddDarageM_OnClick"/>
                <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddDarage" placeholder="درجه"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    

<div id="rang" class="w3-modal">
    <div class="w3-modal-content" style="background-color: transparent;">
        <div class="panel panel-primary">
            <span onclick="document.getElementById('rang').style.display='none'" style="background-color: transparent;" class="w3-button w3-display-topright">
                <span class="glyphicon glyphicon-remove"></span>
            </span>
            <div class="panel-heading">.:: ثبت رنگ ::.</div>
            <div style="padding: 15px;">
                <asp:Button runat="server" ClientIDMode="Static" CssClass="button" Text="ثبت" ID="btnAddRangM" OnClick="btnAddRangM_OnClick"/>
                <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddRang" placeholder="رنگ"></asp:TextBox>
            </div>
        </div>
    </div>
</div>
    
<div id="gol" class="w3-modal">
    <div class="w3-modal-content" style="background-color: transparent;">
        <div class="panel panel-primary">
            <span onclick="document.getElementById('gol').style.display='none'" style="background-color: transparent;" class="w3-button w3-display-topright">
                <span class="glyphicon glyphicon-remove"></span>
            </span>
            <div class="panel-heading">.:: ثبت گل ::.</div>
            <div style="padding: 15px;">
                <asp:Button runat="server" ClientIDMode="Static" CssClass="button" Text="ثبت" ID="btnAddGolM" OnClick="btnAddGolM_OnClick"/>
                <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddGolMolahez" placeholder="ملاحضات"></asp:TextBox>
                <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddGolMoshtari" placeholder="مشتری"></asp:TextBox>
                <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddGolCode" placeholder="کد"></asp:TextBox>
                <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddGol" placeholder="نام گل"></asp:TextBox>
            </div>
        </div>
    </div>
</div>
    
<div id="kalaTotal" class="w3-modal">
    <div class="w3-modal-content" style="background-color: transparent;">
        <div class="panel panel-primary">
            <span onclick="document.getElementById('kalaTotal').style.display='none'" style="background-color: transparent;" class="w3-button w3-display-topright">
                <span class="glyphicon glyphicon-remove"></span>
            </span>
            <div class="panel-heading">.:: آمار آیتم ها ::.</div>
            <div style="padding: 15px;">
                <asp:GridView runat="server" Width="300px" CssClass="table table-bordered" dir="rtl" ID="gridTotalKala"
                    AutoGenerateColumns="False" DataSourceID="SqlKalaTotal">
                    <Columns>
                        <asp:BoundField DataField="nam" HeaderText="نام آیتم" SortExpression="nam" />
                        <asp:BoundField DataField="total" HeaderText="جمع کل" ReadOnly="True" SortExpression="total" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlKalaTotal" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="select sum(total) as total , Item.nam from ((
SELECT CASE WHEN Item.darb = 0 THEN SUM(dbo.RizSer.ted * dbo.HKhoroojRiz.Tedad) 
WHEN Item.darb = 1 THEN SUM(dbo.RizSer.ted * dbo.HKhoroojRiz.Tedad)  END AS total, dbo.RizSer.idI AS item
FROM dbo.HKhoroojRiz INNER JOIN dbo.RizSer ON dbo.HKhoroojRiz.ids = dbo.RizSer.idS INNER JOIN
dbo.Item ON dbo.RizSer.idI = dbo.Item.ID WHERE(dbo.HKhoroojRiz.idkh = @hid) GROUP BY dbo.RizSer.idI, dbo.Item.darb)union all
(SELECT CASE WHEN Item.darb = 0 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.Item.TDK)
 WHEN Item.darb = 1 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.Item.TDK) * 2 END AS total, dbo.Item.ID AS item
FROM dbo.Item INNER JOIN dbo.HKhoroojRiz ON dbo.Item.ID = dbo.HKhoroojRiz.idi
WHERE(dbo.HKhoroojRiz.idkh = @hid) AND (dbo.Item.ser = 0) AND (dbo.Item.ID <> 0)
GROUP BY dbo.Item.darb, dbo.Item.ID)union all
(SELECT CASE WHEN Item_1.darb = 0 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.HKhoroojRiz.TedadK * dbo.RizSer.ted) 
WHEN Item_1.darb = 1 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.HKhoroojRiz.TedadK * dbo.RizSer.ted) * 2 END AS total, Item_1.ID AS item
FROM dbo.HKhoroojRiz INNER JOIN dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID INNER JOIN
dbo.RizSer ON dbo.Item.idser = dbo.RizSer.idS INNER JOIN dbo.Item AS Item_1 ON dbo.RizSer.idI = Item_1.ID
WHERE(dbo.HKhoroojRiz.idkh = @hid) GROUP BY Item_1.ID, Item_1.darb))i INNER JOIN Item ON i.item = Item.ID group by Item.nam">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HavalehId" Name="hid" PropertyName="Value" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
    <script>
        $(function() {
            setTimeout(function() {
                    var havalehTotal = $('#TotalHavaleh').val();
                    var pageCount = parseInt($('#hdPageCount').val());
                    var rowCount = $('#gridKala tr').length;
                    if (rowCount <= 26 && pageCount <= 1) {
                        var rowHtml = '<tr><td colspan="7">' + havalehTotal + '</td></tr>';
                        $('#gridKala tbody').append(rowHtml);
                    }
                    if (rowCount <= 26 && pageCount > 1) {
                        var rowHtml = '<tr><td colspan="7" >' + havalehTotal + '</td></tr>';
                        $('#gridKala .pagerCss').before(rowHtml);
                    }
                },
                1000);
        });

        function printDiv() {
            var divToPrint = document.getElementById('printHavaleh');
            var newWin = window.open('', 'Print-Window');
            newWin.document.open();
            newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');
            newWin.document.close();
            setTimeout(function() { newWin.close(); }, 10);
        }

        function error() {
            $.notify("!!لطفا فیلد خالی را پر کنید", { className: 'error', globalPosition: 'top left' });
        }

        function customer() {
            $.notify("!!لطفا مشتری را انتخاب نمایید", { className: 'error', globalPosition: 'top left' });
        }

        function success() {
            $.notify("!!با موفقیت ثبت شد", { className: 'success', globalPosition: 'top left' });
        }

        var optionsgol = $('#listGol option').clone();
        $('#searchGol').keyup(function () {
            var val = $(this).val();
            $('#listGol').empty();
            optionsgol.filter(function (idx, el) {
                return val === '' || $(el).text().indexOf(val) >= 0;
            }).appendTo('#listGol');
        });

        var optionsdarage = $('#listDarage option').clone();
        $('#searchDarage').keyup(function () {
            var val = $(this).val();
            $('#listDarage').empty();
            optionsdarage.filter(function (idx, el) {
                return val === '' || $(el).text().indexOf(val) >= 0;
            }).appendTo('#listDarage');
        });

        var optionsitem = $('#listFalleh option').clone();
        $('#searchFalleh').keyup(function () {
            var val = $(this).val();
            $('#listFalleh').empty();
            optionsitem.filter(function (idx, el) {
                return val === '' || $(el).text().indexOf(val) >= 0;
            }).appendTo('#listFalleh');
        });

        var optionsservice = $('#listService option').clone();
        $('#searchService').keyup(function () {
            var val = $(this).val();
            $('#listService').empty();
            optionsservice.filter(function (idx, el) {
                return val === '' || $(el).text().indexOf(val) >= 0;
            }).appendTo('#listService');
        });

        var optionsrang = $('#listRang option').clone();
        $('#searchRang').keyup(function () {
            var val = $(this).val();
            $('#listRang').empty();
            optionsrang.filter(function (idx, el) {
                return val === '' || $(el).text().indexOf(val) >= 0;
            }).appendTo('#listRang');
        });
        //var start = $('#gridKala tr td:first-child:eq(0)');
    </script>
</asp:Content>

