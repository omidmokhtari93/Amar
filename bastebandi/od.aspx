<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="od.aspx.cs" Inherits="bastebandi_orderDetTEST" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField runat="server" ID="HavalehId" />
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
    </script>
    <style>
        body * {
            font-family: myfont;
        }

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
            border: none;
            background-color: transparent;
            float: left;
            outline: none;
        }

        .mydes td {
            border: 1px solid rgb(228, 228, 228);
            padding: 1px 1px !important;
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

            .table td {
                padding: 2px !important;
            }

        .molahexecss {
            font-size: 9pt !important;
            width: 250px;
        }

        select option {
            font-weight: 900;
        }

        input {
            font-weight: 900;
        }
    </style>
    <asp:Panel runat="server" DefaultButton="btnSearch">
        <div class="panel panel-primary" runat="server" id="pnlHavaleh">
            <div class="panel-heading">حواله خروج</div>
            <div class="panel-body">
                <div class="row" style="margin: 0; text-align: right;">
                    <div class="col-lg-3">
                        <label>مشتری</label>
                        <asp:DropDownList runat="server" TabIndex="5" AppendDataBoundItems="True" ID="drMoshtari" Width="100%" CssClass="form-control" DataSourceID="Sqlmoshtari" DataTextField="nam" DataValueField="ID">
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
                        <asp:DropDownList ID="drpyear" TabIndex="4" CssClass="form-control" Style="display: inline-block; width: 32%;" runat="server">
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
                        <asp:DropDownList ID="drpmonth" TabIndex="3" CssClass="form-control" Style="display: inline-block; width: 32%;" runat="server">
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
                        <asp:DropDownList ID="drpday" TabIndex="2" CssClass="form-control" Style="display: inline-block; width: 32%;" runat="server">
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

                <div class="row" style="margin: 0; margin-top: 15px; text-align: right;">
                    <div class="col-lg-6">
                        <label>آدرس خریدار</label>
                        <asp:TextBox runat="server" TabIndex="6" dir="rtl" ID="txtAddressKharidar" Width="100%" CssClass="form-control"></asp:TextBox>
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
                <div class="row" style="margin: 0; margin-top: 15px; text-align: right;">
                    <div class="col-lg-12">
                        <label>ملاحظات</label>
                        <asp:TextBox runat="server" dir="rtl" TabIndex="9" ID="txtMolahezat" Width="100%" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <asp:Button runat="server" CssClass="button" ID="btnSabt" TabIndex="10" Text="ثبت" OnClick="btnSabt_OnClick" />
                <asp:Button runat="server" Text="ویرایش" CssClass="button" ID="btnEdit" Visible="False" OnClick="btnEdit_OnClick" />
                <asp:Button runat="server" Text="انصراف" CssClass="button" ID="btnCancel" Visible="False" OnClick="btnCancel_OnClick" />
            </div>
            <div class="panel-footer">
                <div id="pnldeletehavaleh" runat="server" visible="False">
                    <div style="padding: 15px;">
                        <div style="border: 2px solid red; display: inline-block; padding: 10px; border-radius: 5px;">
                            <label style="display: block;">این حواله با تمامی کالاهای آن حذف خواهد شد. آیا مطمئن هستید؟</label>
                            <asp:Button runat="server" ID="btndeletehavaYes" CssClass="button" Text="بله" OnClick="btndeletehavaYes_OnClick" />
                            <asp:Button runat="server" ID="btndeletehavaNo" CssClass="button" Text="خیر" OnClick="btndeletehavaNo_OnClick" />
                        </div>
                    </div>
                </div>
                <asp:Button runat="server" ID="btnSearch" Text="جستجو" CssClass="button" OnClick="btnSearch_OnClick" />
                <input type="text" id="txtsearchAll" runat="server" class="form-control" dir="rtl" placeholder="جستجو" />
                <div style="padding: 15px; width: 100%;">
                    <asp:GridView runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" ClientIDMode="Static" OnPageIndexChanged="gridHavaleh_OnPageIndexChanged"
                        DataSourceID="Sqlhavaleh" AllowPaging="True" DataKeyNames="ID" ID="gridHavaleh" OnRowCommand="gridHavaleh_OnRowCommand">
                        <Columns>
                            <asp:ButtonField CommandName="kala" Text="ثبت کالا">
                                <ControlStyle ForeColor="blue"></ControlStyle>
                            </asp:ButtonField>
                            <asp:BoundField DataField="sh" HeaderText="شماره حواله" SortExpression="sh" />
                            <asp:BoundField DataField="dat" HeaderText="تاریخ" SortExpression="dat" />
                            <asp:BoundField DataField="mnan" HeaderText="نام مشتری" SortExpression="mnan" />
                            <asp:BoundField DataField="madd" HeaderText="آدرس مشتری" SortExpression="madd" />
                            <asp:BoundField DataField="rnam" HeaderText="نام راننده" SortExpression="rnam" />
                            <asp:BoundField DataField="rno" HeaderText="شماره ماشین" SortExpression="rno" />
                            <asp:BoundField DataField="mem" HeaderText="ملاحظات" SortExpression="mem">
                                <ItemStyle CssClass="molahexecss"></ItemStyle>
                            </asp:BoundField>
                            <asp:ButtonField CommandName="ed" Text="ویرایش">
                                <ControlStyle ForeColor="blue"></ControlStyle>
                            </asp:ButtonField>
                            <asp:ButtonField CommandName="delet" Text="حذف">
                                <ControlStyle ForeColor="blue"></ControlStyle>
                            </asp:ButtonField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="Sqlhavaleh" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="
SELECT ID ,replace(sh, '/', '')as shomare,replace(sh, ' ', '')as sh, left (dat,4)+ '/' + SUBSTRING(dat ,5,2) + '/' + right(dat,2) as dat
,mnan, madd, rnam, rno , mem FROM HKhorooj order by HKhorooj.dat desc,shomare desc"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </asp:Panel>


    <div class="panel panel-primary" runat="server" id="pnlKala" clientidmode="Static" visible="False">
        <div class="panel-heading">ثبت کالا</div>
        <asp:Panel runat="server">
            <div class="panel-body" id="SabtArea">
                <div style="padding: 10px; border: 2px solid darkgray; width: 100%;">
                    <label runat="server" id="lblrno" style="background-color: #dcdcdc; padding: 2px; direction: rtl; color: darkblue;"></label>
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
                    <br />
                    <br />
                    <label style="display: block; text-align: center;">: ملاحظات</label>
                    <label runat="server" id="lblmem" style="background-color: #dcdcdc; padding: 2px; direction: rtl; color: darkblue;"></label>
                </div>
                <hr />
                <div class="row" style="margin: 0; text-align: right;">
                    <div class="col-lg-2">
                        <label>تعداد کارتن</label>
                        <asp:TextBox runat="server" ClientIDMode="Static" ID="txtKalaCartoon" Width="100%" CssClass="form-control text-center" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="col-lg-2">
                        <label>درجه</label>
                        <button class="glyphicon glyphicon-plus borderless" id="btnAddDarage" type="button"
                            onclick="document.getElementById('darage').style.display='block'">
                        </button>
                        <input type="text" id="searchDarage" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                        <asp:ListBox ClientIDMode="Static" ID="listDarage" dir="rtl" runat="server" Height="300px" Width="100%" DataSourceID="Sqldarage" DataTextField="dar" DataValueField="ID"></asp:ListBox>
                        <asp:SqlDataSource ID="Sqldarage" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, dar FROM Darajeh"></asp:SqlDataSource>
                    </div>
                    <div class="col-lg-2">
                        <label>رنگ گل</label>
                        <button class="glyphicon glyphicon-plus borderless" id="btnAddRang" type="button"
                            onclick="document.getElementById('rang').style.display='block'">
                        </button>
                        <input type="text" id="searchRang" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                        <asp:ListBox ClientIDMode="Static" ID="listRang" Height="300px" dir="rtl" runat="server" Width="100%" DataSourceID="SqlRangGol" DataTextField="colo" DataValueField="ID"></asp:ListBox>
                        <asp:SqlDataSource ID="SqlRangGol" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, colo FROM rang"></asp:SqlDataSource>
                    </div>
                    <div class="col-lg-3">
                        <label>گل</label>
                        <button class="glyphicon glyphicon-plus borderless" id="btnAddGol" type="button"
                            onclick="document.getElementById('gol').style.display='block'">
                        </button>
                        <input type="text" id="searchGol" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                        <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" ID="listGol" Style="width: 100%;" DataSourceID="SqlGol" DataTextField="nam" DataValueField="ID" />
                        <asp:SqlDataSource ID="SqlGol" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT nam + ' / '  + case when cod is null then '----' else cod end as nam, ID FROM Gol where nam is not null order by nam"></asp:SqlDataSource>
                    </div>
                    <div class="col-lg-3">
                        <label>آیتم / سرویس</label>
                        <input type="checkbox" id="chkFallehService" style="position: absolute; left: 15px; top: 5px;" />
                        <label style="position: absolute; top: -3px; left: 30px;">سرویس</label>
                        <div id="pnlFalleh">
                            <button class="glyphicon glyphicon-plus borderless" id="btnAddItem" runat="server" type="button" style="position: absolute; top: 27px;" onserverclick="btnAddItem_OnServerClick"></button>
                            <input type="text" id="searchFalleh" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                            <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" ID="listFalleh" Style="width: 100%;" DataSourceID="SqlFalleh" DataTextField="nam" DataValueField="ID" />
                            <asp:SqlDataSource ID="SqlFalleh" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT [ID], [nam] FROM [Item] where nam is not null and ID <> 0"></asp:SqlDataSource>
                        </div>
                        <div id="pnlService" style="display: none;">
                            <button class="glyphicon glyphicon-plus borderless" id="btnAddService" runat="server" type="button" style="position: absolute; top: 27px;" onserverclick="btnAddService_OnServerClick"></button>
                            <input type="text" placeholder="جستجو" id="searchService" style="width: 100%; direction: rtl;" autocomplete="off" />
                            <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" ID="listService" Style="width: 100%;" DataSourceID="SqlService" DataTextField="nam" DataValueField="ID" />
                            <asp:SqlDataSource ID="SqlService" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT [ID], [nam] FROM [Service] where nam is not null and ID <> 0"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <asp:Button runat="server" CssClass="button" Text="بازگشت" ID="btnBacktoHavale" ClientIDMode="Static" OnClick="btnBacktoHavale_OnClick" />
                &nbsp;&nbsp;
        <button type="button" class="button" id="sabtKala" onclick="SabtKala();">ثبت کالا</button>
                &nbsp;&nbsp;
        <button type="button" class="button" style="display: none;" id="btnCancelEdit" onclick="cancelEditRiz();">انصراف</button>
                &nbsp;&nbsp;
        <button type="button" class="button" style="display: none;" id="btneditKala" onclick="EditRizKala();">ویرایش</button>
            </div>
        </asp:Panel>
        <div class="panel-footer" id="pnlfooter" style="position: relative;">
            <asp:HiddenField runat="server" ID="HavalehRizId" />
            <div style="padding: 15px; width: 100%;">
                <a id="btnRizAghlam" style="cursor: pointer; font-size: 12pt; color: royalblue; font-weight: 800; border: 1px solid royalblue; padding: 0 5px;" onclick="$('#rizmodal').show();">ریز اقلام</a>
                <button type="button" id="btnPrint" class="glyphicon 
            glyphicon-print"
                    style="border: none; background-color: transparent; outline: none;" onclick="printDiv();">
                </button>
                <div style="display: inline-block; padding: 3px 5px; background-color: royalblue; border-radius: 3px; color: white;">
                    <label>کیلوگرم </label>
                    <label id="lblVaznKol"></label>
                    <label>: وزن کل بار</label>
                </div>
                &nbsp;&nbsp;&nbsp;
        <div style="display: inline-block; padding: 3px 5px; background-color: royalblue; border-radius: 3px; color: white;">
            <label id="lblItemkol"></label>
            <label>: تعداد کل آیتم ها</label>
        </div>
                &nbsp;&nbsp;&nbsp;
        <a id="showTotal" style="cursor: pointer; font-size: 12pt; color: royalblue; font-weight: 800; border: 1px solid royalblue; padding: 0 5px;" onclick="document.getElementById('kalaTotal').style.display='block'">آمار آیتم</a>
                <div style="margin-top: 15px;">
                    <a runat="server" id="btnConfirm" title="کسر کالاهای این حواله خروج از موجودی دپو" onserverclick="btnConfirm_OnServerClick" style="cursor: pointer; font-size: 12pt; color: royalblue; font-weight: 800; border: 1px solid royalblue; padding: 0 5px;display:none;">تایید نهایی</a>
                </div>
            </div>
            <div class="pnlgrid" style="width: 70%; margin: auto;">
                <table class="table" id="gridKala">
                    <tbody></tbody>
                </table>
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
                    <asp:Button runat="server" CssClass="button" Text="ثبت" ID="btnAddDarageM" OnClick="btnAddDarageM_OnClick" />
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
                    <asp:Button runat="server" ClientIDMode="Static" CssClass="button" Text="ثبت" ID="btnAddRangM" OnClick="btnAddRangM_OnClick" />
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
                    <asp:Button runat="server" ClientIDMode="Static" CssClass="button" Text="ثبت" ID="btnAddGolM" OnClick="btnAddGolM_OnClick" />
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
                    <table id="gridKalaTotal" style="width: 60%; margin: auto;" class="table">
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <div id="rizmodal" class="w3-modal">
        <div class="w3-modal-content" style="background-color: transparent; width: 80%;">
            <div class="panel panel-primary">
                <span onclick="$('#rizmodal').hide();GetOrderDetails();" style="background-color: transparent;" class="w3-button w3-display-topright">
                    <span class="glyphicon glyphicon-remove"></span>
                </span>
                <div class="panel-heading">ریز اقلام</div>
                <div class="panel-body" id="rizArea">
                    <div class="row" style="margin: 0; text-align: right;">
                        <div class="col-lg-2">
                            <label>تعداد</label>
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="txtRizKarton" Width="100%" CssClass="form-control text-center" autocomplete="off"></asp:TextBox>
                        </div>
                        <div class="col-lg-2">
                            <label>درجه</label>
                            <input type="text" id="searchRizDarage" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                            <asp:ListBox ClientIDMode="Static" ID="listRizDarage" dir="rtl" runat="server" Height="300px" Width="100%" DataSourceID="Sqldarage" DataTextField="dar" DataValueField="ID"></asp:ListBox>
                        </div>
                        <div class="col-lg-2">
                            <label>رنگ گل</label>
                            <input type="text" id="searchRizRang" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                            <asp:ListBox ClientIDMode="Static" ID="listRizRang" Height="300px" dir="rtl" runat="server" Width="100%" DataSourceID="SqlRangGol" DataTextField="colo" DataValueField="ID"></asp:ListBox>
                        </div>
                        <div class="col-lg-3">
                            <label>گل</label>
                            <input type="text" id="searchRizGol" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                            <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" ID="listRizGol" Style="width: 100%;" DataSourceID="SqlGol" DataTextField="nam" DataValueField="ID" />
                        </div>
                        <div class="col-lg-3">
                            <label>آیتم / سرویس</label>
                            <input type="checkbox" id="chkRizFallehService" style="position: absolute; left: 15px; top: 5px;" />
                            <label style="position: absolute; top: -3px; left: 30px;">سرویس</label>
                            <div id="pnlRizFalleh">
                                <input type="text" id="searchRizFalleh" placeholder="جستجو" style="width: 100%; direction: rtl;" autocomplete="off" />
                                <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" ID="listRizFalleh" Style="width: 100%;" DataSourceID="SqlFalleh" DataTextField="nam" DataValueField="ID" />
                            </div>
                            <div id="pnlRizService" style="display: none;">
                                <input type="text" placeholder="جستجو" id="searchRizService" style="width: 100%; direction: rtl;" autocomplete="off" />
                                <asp:ListBox ClientIDMode="Static" runat="server" Height="300px" dir="rtl" ID="listRizService" Style="width: 100%;" DataSourceID="SqlService" DataTextField="nam" DataValueField="ID" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <button class="button" id="btnSabtRizKala" type="button" onclick="SabtRizKala();">ثبت</button>
                </div>
                <div class="panel-footer">
                    <table id="gridRizKala" class="table table-bordered"></table>
                </div>
            </div>
        </div>
    </div>

    <script>
            var optionsgol = $('#listGol option').clone();
            var optionsdarage = $('#listDarage option').clone();
            var optionsitem = $('#listFalleh option').clone();
            var optionsservice = $('#listService option').clone();
            var optionsrang = $('#listRang option').clone();
            var optionsRizgol = $('#listRizGol option').clone();
            var optionsRizdarage = $('#listRizDarage option').clone();
            var optionsRizitem = $('#listRizFalleh option').clone();
            var optionsRizservice = $('#listRizService option').clone();
            var optionsRizrang = $('#listRizRang option').clone();
            function FilterDropDown(o, s, d) {
                var val = $('#' + s).val();
                $('#' + d).empty();
                o.filter(function (idx, el) {
                    return val === '' || $(el).text().indexOf(val) >= 0;
                }).appendTo('#' + d);
            };

            GetOrderDetails();
            function printDiv() {
                var hid = $('#HavalehId').val();
                window.open('print.aspx?hid=' + hid, '_blank');
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

            $('#searchGol').keyup(function () {
                FilterDropDown(optionsgol, 'searchGol', 'listGol');
            });

            $('#searchDarage').keyup(function () {
                FilterDropDown(optionsdarage, 'searchDarage', 'listDarage');
            });

            $('#searchFalleh').keyup(function () {
                FilterDropDown(optionsitem, 'searchFalleh', 'listFalleh');
            });

            $('#searchService').keyup(function () {
                FilterDropDown(optionsservice, 'searchService', 'listService');
            });

            $('#searchRang').keyup(function () {
                FilterDropDown(optionsrang, 'searchRang', 'listRang');
            });

            $('#searchRizGol').keyup(function () {
                FilterDropDown(optionsRizgol, 'searchRizGol', 'listRizGol');
            });

            $('#searchRizDarage').keyup(function () {
                FilterDropDown(optionsRizdarage, 'searchRizDarage', 'listRizDarage');
            });

            $('#searchRizFalleh').keyup(function () {
                FilterDropDown(optionsRizitem, 'searchRizFalleh', 'listRizFalleh');
            });

            $('#searchRizService').keyup(function () {
                FilterDropDown(optionsRizservice, 'searchRizService', 'listRizService');
            });

            $('#searchRizRang').keyup(function () {
                FilterDropDown(optionsRizrang, 'searchRizRang', 'listRizRang');
            });

            $('#chkRizFallehService').change(function () {
                if (this.checked) {
                    $('#pnlRizFalleh').hide();
                    $('#pnlRizService').show();
                } else {
                    $('#pnlRizFalleh').show();
                    $('#pnlRizService').hide();
                }
            });

            function GetOrderDetails() {
                if ($('#HavalehId').val() == '') {
                    return;
                }
                $('#gridKala tbody').empty();
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/GetKalaRiz",
                    data: JSON.stringify({ havalehId: $('#HavalehId').val() }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        var d = JSON.parse(e.d);
                        if (d.length > 0) {
                            var body = [];
                            body.push('<tr>' +
                                '<th id="start">ردیف</th>' +
                                '<th>شرح کــالا</th>' +
                                '<th>درجه</th>' +
                                '<th>تعداد کارتن</th>' +
                                '<th>تعداد واحد در کارتن</th>' +
                                '<th>تعداد کل</th>' +
                                '<th></th>' +
                                '<th></th>' +
                                '</tr>');
                            for (var i = 0; i < d.length; i++) {
                                body.push('<tr>' +
                                    '<td style="display:none;">' + d[i][6] + '</td>' +
                                    '<td style="display:none;">' + d[i][5] + '</td>' +
                                    '<td>' + parseInt(i + 1) + '</td>' +
                                    '<td>' + d[i][0] + '</td>' +
                                    '<td>' + d[i][1] + '</td>' +
                                    '<td>' + d[i][2] + '</td>' +
                                    '<td>' + d[i][3] + '</td>' +
                                    '<td>' + d[i][4] + '</td>' +
                                    '<td><a id="edkala">ویرایش</a></td>' +
                                    '<td><a id="delkala">حذف</a></td>' +
                                    '</tr>');
                            }
                            $('#gridKala tbody').append(body.join(''));
                            arrow();
                        }
                        CreateRizKalaTable();
                        GetVaznAndItemsTotal();
                        GetRizKala();
                    }
                });
            }

            function GetRizKala() {
                if ($('#HavalehId').val() == '') {
                    return;
                }
                $('#gridRizKala').empty();
                AjaxData({
                    url: "orderCheck.asmx/GetRizRizKala",
                    param: { idkh: $('#HavalehId').val() },
                    func: createRizKalaTable
                });
                function createRizKalaTable(e) {
                    var d = JSON.parse(e.d);
                    if (d.length > 0) {
                        var body = [];
                        body.push('<tr>' +
                            '<th>ردیف</th>' +
                            '<th>شرح کــالا</th>' +
                            '<th>درجه</th>' +
                            '<th>تعداد</th>' +
                            '<th></th>' +
                            '</tr>');
                        for (var i = 0; i < d.length; i++) {
                            body.push('<tr id="' + d[i].Id + '">' +
                                '<td>' + (i + 1) + '</td>' +
                                '<td>' + d[i].KalaName + '</td>' +
                                '<td>' + d[i].Darage + '</td>' +
                                '<td>' + d[i].Tedad + '</td>' +
                                '<td><a id="delkala">حذف</a></td>' +
                                '</tr>');
                        }
                        $('#gridRizKala').append(body.join(''));
                    }
                }
            }

            function SabtKala() {
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
                if ($('#listRang :selected').val() == undefined) {
                    RedAlert('listRang', 'لطفا رنگ را انتخاب نمایید');
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
                    Hid: $('#HavalehId').val(),
                    ItemId: $('#listFalleh :selected').val(),
                    ServiceId: $('#listService :selected').val(),
                    Gol: $('#listGol :selected').val(),
                    Rang: $('#listRang :selected').val(),
                    Darage: $('#listDarage :selected').val(),
                    Karton: $('#txtKalaCartoon').val()
                };
                if ($('#chkFallehService').is(":checked")) {
                    obj.ItemId = 0;
                } else {
                    obj.ServiceId = 0;
                }
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/SabtKala",
                    data: JSON.stringify({ 'obj': obj }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        GetOrderDetails();
                        $('#sabtKala').notify('ثبت شد', { position: "right center", className: "success" });
                        $('#txtKalaCartoon').val('');
                    },
                    error: function () {
                        $('#sabtKala').notify('خطا در ثبت', { position: "right center", className: "error" });
                    }
                });
            }

            function GetVaznAndItemsTotal() {
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/GetVaznTotal",
                    data: JSON.stringify({ havalehId: $('#HavalehId').val() }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        var dt = JSON.parse(e.d);
                        $('#lblVaznKol').text(dt[0][0]);
                        $('#lblItemkol').text(dt[0][1]);
                    },
                    error: function () {
                        alert('خطا!!!');
                    }
                });
                $('#gridKalaTotal tbody').empty();
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/TotalKala",
                    data: JSON.stringify({ havalehId: $('#HavalehId').val() }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        var tot = JSON.parse(e.d);
                        var body = [];
                        body.push('<tr><th>نام آیتم</th><th>جمع کل</th></tr>');
                        for (var i = 0; i < tot.length; i++) {
                            body.push('<tr><td>' + tot[i][0] + '</td><td>' + tot[i][1] + '</td></tr>');
                        }
                        $('#gridKalaTotal tbody').append(body.join(''));
                    },
                    error: function () {
                        alert('خطا!!!');
                    }
                });
            }

            $('#chkFallehService').on('change', function () {
                if ($('#chkFallehService').is(":checked")) {
                    $('#pnlService').show();
                    $('#pnlFalleh').hide();

                } else {
                    $('#pnlService').hide();
                    $('#pnlFalleh').show();
                }
            });
            var click = 0;
            var textbox;
            var karton;
            var tdElem = [];
            var rizId;
            var checkRizDarage;
            var checkTedadRiz;
            $(function () {
                $('#gridKala').on('click', 'td', function () {
                    if (this.cellIndex === 4) {
                        checkRizDarage = $(this).attr('value');
                        ChangeDarage(this);
                        return;
                    }
                    if (this.cellIndex !== 5) {
                        return;
                    }
                    if (click === 0) {
                        if ($(this).is($(tdElem[0]))) {
                            return;
                        }
                        //karton = $(this).parent().find('td:eq(1)').text();
                        checkTedadRiz = $(this).attr('value');
                        tdElem = $(this);
                        rizId = parseInt($(this).parent().find('td:eq(0)').text());
                        textbox = $('<input type="text" class="text-center" id="txtKalaEdit" style="width:50px;"/>');
                        $(tdElem).append(textbox);
                        $(textbox).focus();
                        click = 1;
                        return;
                    } else {
                        if ($(this).is($(tdElem[0]))) {
                            return;
                        }
                        $(textbox).remove();
                        tdElem = [];
                        click = 0;
                    }
                });
            });

            $('#gridKala').on('click', 'td a#edkala', function () {
                rizId = parseInt($(this).parent().parent().find('td:eq(0)').text());
                AjaxData({
                    url: 'orderCheck.asmx/KhamKala',
                    param: { riziid: rizId },
                    func: editKala
                });
                function editKala(e) {
                    var d = JSON.parse(e.d);
                    if (d.ItemId) {
                        $('#pnlService').hide();
                        $('#pnlFalleh').show();
                        $('#chkFallehService').attr('checked', false);
                        $('#listFalleh').find('option[value=' + d.ItemId + ']').prop('selected', true);
                        $('#listGol').find('option[value=' + d.Gol + ']').prop('selected', true);
                        $('#listRang').find('option[value=' + d.Rang + ']').prop('selected', true);
                        $('#listDarage').find('option[value=' + d.Darage + ']').prop('selected', true);
                        $('#txtKalaCartoon').val(d.Karton);
                        $('#btneditKala').show();
                        $('#btnCancelEdit').show();
                        $('#sabtKala').hide();
                        $('#btnBacktoHavale').hide();
                    } else {
                        $('#pnlService').show();
                        $('#pnlFalleh').hide();
                        $('#chkFallehService').attr('checked', true);
                        $('#listService').find('option[value=' + d.ServiceId + ']').prop('selected', true);
                        $('#listGol').find('option[value=' + d.Gol + ']').prop('selected', true);
                        $('#listRang').find('option[value=' + d.Rang + ']').prop('selected', true);
                        $('#listDarage').find('option[value=' + d.Darage + ']').prop('selected', true);
                        $('#txtKalaCartoon').val(d.Karton);
                        $('#btneditKala').show();
                        $('#btnCancelEdit').show();
                        $('#sabtKala').hide();
                        $('#btnBacktoHavale').hide();
                    }
                    $('body ,html').animate({
                        scrollTop: $('body').offset().top
                    }, 1000);
                }
            });

            var darageBadge;
            var darclick = 0;
            function ChangeDarage(e) {
                if (darclick === 0) {
                    var x = $(e).offset().left - 160;
                    var y = $(e).offset().top - 30;
                    rizId = parseInt($(e).parent().find('td:eq(0)').text());
                    GetDarage(x, y);
                }
            }
            function GetDarage(x, y) {
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/GetDarage",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        var d = JSON.parse(e.d);
                        var bdg = [];
                        bdg.push('<div class="rizbadge" id="darageBadge" style="top: ' + y + 'px; left: ' + x + 'px; width: 400px !important;">');
                        for (var i = 0; i < d.length; i++) {
                            bdg.push('<input value="' + d[i][1] + '" data="' + d[i][0] + '" ' +
                                'type="button" style="width:auto!important;margin:2px;" class="badgeButton" onclick="UpdateDarage(this);"/>');
                        }
                        bdg.push('</div>');
                        darageBadge = $(bdg.join(''));
                        $('#main_panel').append(darageBadge);
                        darclick = 1;
                    },
                    error: function () {
                        RedAlert('no', 'خطا');
                    }
                });
            }

            function UpdateDarage(e) {
                var chRizDarage = false;
                if (checkRizDarage == 'riz') {
                    chRizDarage = true;
                }
                var darage = $(e).attr("data");
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/UpdateDarage",
                    data: JSON.stringify({ rizidd: rizId, darr: darage, check: chRizDarage }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        GreenAlert('no', 'ثبت شد');
                        $(darageBadge).remove();
                        darclick = 0;
                        GetOrderDetails();
                    },
                    error: function () {
                        RedAlert('no', 'خطا');
                    }
                });
            }

            $(document).click(function (event) {
                if (!$(event.target).closest('#darageBadge').length) {
                    $(darageBadge).remove();
                    tdElem = [];
                    darclick = 0;
                }
                if (!$(event.target).closest('#gridKala').length) {
                    $(textbox).remove();
                    click = 0;
                    tdElem = [];
                }
            });

            $('#form1').on('keyup keypress', function (e) {
                var keyCode = e.keyCode || e.which;
                if (keyCode === 13) {
                    e.preventDefault();
                    UpdateKarton();
                    $(textbox).remove();
                    click = 0;
                    tdElem = [];
                    return false;
                }
            });

            $('#SabtArea').keypress(function (e) {
                if (e.which == 13) {
                    SabtKala();
                }
            });

            $('#rizArea').keypress(function (e) {
                if (e.which == 13) {
                    SabtRizKala();
                }
            });

            function UpdateKarton() {
                var chkTedadRiz = false;
                if (checkTedadRiz == 'riz') {
                    chkTedadRiz = true;
                }
                var tk = parseInt($('#txtKalaEdit').val());
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/UpdateKarton",
                    data: JSON.stringify({ kartonn: tk, rizidd: rizId, check: chkTedadRiz }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        GetOrderDetails();
                    },
                    error: function () {
                        //alert('خطا!!!');
                    }
                });
            }

            function CreateRizKalaTable() {
                AjaxData({
                    url: "orderCheck.asmx/GetRizRizKala",
                    param: { idkh: $('#HavalehId').val() },
                    func: addRizkalaTomainTable
                });
                function addRizkalaTomainTable(e) {
                    var d = JSON.parse(e.d);
                    if (d.length) {
                        var b = [];
                        b.push('<tr><td style="background-color: #65dafe;" colspan="8">ریز اقلام</td></tr>');
                        for (var i = 0; i < d.length; i++) {
                            b.push('<tr> ' +
                                '<td style="display:none;">' + d[i].Id + '</td>' +
                                '<td style="display:none;">' + d[i].DarageId + '</td>' +
                                '<td>' + (i + 1) + '</td>' +
                                '<td colspan="2">' + d[i].KalaName + '</td>' +
                                '<td colspan="2" value="riz">' + d[i].Darage + '</td>' +
                                '<td value="riz">' + d[i].Tedad + '</td>' +
                                '<td><a></a></td>' +
                                '<td><a id="delkala" value="riz">حذف</a></td>' +
                                '</tr>');
                        }
                        $('#gridKala tbody').append(b.join(''));
                    }
                    GetHavalehTotal();
                }
            }

            function GetHavalehTotal() {
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/GetHavalehTotal",
                    data: JSON.stringify({ havalehId: $('#HavalehId').val() }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        var rowHtml = '<tr><td colspan="8">' + e.d + '</td></tr>';
                        $('#gridKala tbody').append(rowHtml);
                    },
                    error: function () {
                        ////alert('خطا!!!');
                    }
                });
            }

            function arrow() {
                var table = document.getElementById('gridKala');
                var start = table.rows[1].cells[1];
                start.focus();
                start.style.backgroundColor = 'green';
                start.style.color = 'white';
                function dotheneedful(sibling) {
                    if (sibling != null) {
                        start.focus();
                        start.style.backgroundColor = '';
                        start.style.color = '';
                        sibling.focus();
                        sibling.style.backgroundColor = '#79c879';
                        sibling.style.color = 'darkblue';
                        start = sibling;
                    }
                }
                document.onkeydown = checkKey;
                function checkKey(e) {
                    e = e || window.event;
                    var nextrow;
                    var idx;
                    var sibling;
                    if (e.keyCode == '38') {
                        // up arrow
                        idx = start.cellIndex;
                        nextrow = start.parentElement.previousElementSibling;
                        if (nextrow != null) {
                            sibling = nextrow.cells[idx];
                            dotheneedful(sibling);
                        }
                    } else if (e.keyCode == '40') {
                        // down arrow
                        idx = start.cellIndex;
                        nextrow = start.parentElement.nextElementSibling;
                        if (nextrow != null) {
                            sibling = nextrow.cells[idx];
                            dotheneedful(sibling);
                        }
                    } else if (e.keyCode == '37') {
                        // right arrow
                        sibling = start.nextElementSibling;
                        dotheneedful(sibling);
                    } else if (e.keyCode == '39') {
                        // left arrow
                        sibling = start.previousElementSibling;
                        dotheneedful(sibling);
                    }
                }
            }

            var delclick = 0;
            var deleleBadge;
            var checkRizkala;
            $('#gridKala').on('click', 'td a#delkala', function () {
                checkRizkala = $(this).attr('value');
                if (delclick == 0) {
                    var x = $(this).offset().left - 115;
                    var y = $(this).offset().top - 15;
                    rizId = parseInt($(this).parent().parent().find('td:eq(0)').text());
                    deleleBadge = $('<div style="top: ' + y + 'px; left: ' + x + 'px;" class="rizbadge">' +
                        '<label style="display: block;margin:0;">حذف شود؟</label>' +
                        '<button type="button" class="badgeButton" onclick="CancelDelRiz();">خیر</button>&nbsp;' +
                        '<button type="button" class="badgeButton" onclick="DeleteRiz();">بله</button>' +
                        '</div>');
                    $('#main_panel').append(deleleBadge);
                    delclick = 1;
                }
            });

            function CancelDelRiz() {
                $(deleleBadge).remove();
                delclick = 0;
            }

            function DeleteRiz() {
                var checkriz = false;
                if (checkRizkala == 'riz') {
                    checkriz = true;
                }
                $.ajax({
                    type: "POST",
                    url: "orderCheck.asmx/DeleteRiz",
                    data: JSON.stringify({ rizidd: rizId, check: checkriz }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (e) {
                        GreenAlert('no', 'حذف شد');
                        CancelDelRiz();
                        GetOrderDetails();
                    },
                    error: function () {
                        CancelDelRiz();
                        RedAlert('no', 'خطا');
                    }
                });
            }

            function SabtRizKala() {
                var flag = 0;
                if ($('#listRizFalleh :selected').val() == undefined && !$('#chkRizFallehService').is(":checked")) {
                    RedAlert('listRizFalleh', 'لطفا آیتم را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listRizService :selected').val() == undefined && $('#chkRizFallehService').is(":checked")) {
                    RedAlert('listRizService', 'لطفا سرویس را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listRizGol :selected').val() == undefined) {
                    RedAlert('listRizGol', 'لطفا گل را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listRizRang :selected').val() == undefined) {
                    RedAlert('listRizRang', 'لطفا رنگ را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#listRizDarage :selected').val() == undefined) {
                    RedAlert('listRizDarage', 'لطفا درجه را انتخاب نمایید');
                    flag = 1;
                }
                if ($('#txtRizKarton').val() == '') {
                    RedAlert('txtRizKarton', 'لطفا تعداد کارتن را وارد نمایید');
                    flag = 1;
                }
                if (flag === 1) {
                    return;
                }
                var objj = {
                    IdKhorooj: $('#HavalehId').val(),
                    Item: $('#listRizFalleh :selected').val(),
                    Service: $('#listRizService :selected').val(),
                    Gol: $('#listRizGol :selected').val(),
                    Rang: $('#listRizRang :selected').val(),
                    Darage: $('#listRizDarage :selected').val(),
                    Tedad: $('#txtRizKarton').val()
                };
                if ($('#chkFallehService').is(":checked")) {
                    objj.Item = 0;
                } else {
                    objj.Service = 0;
                }
                AjaxData({
                    url: 'orderCheck.asmx/SabtRizkala',
                    param: { obj: objj },
                    func: saveRizKala
                });
                function saveRizKala() {
                    $('#btnSabtRizKala').notify('ثبت شد', { position: "right center", className: "success" });
                    $('#txtRizKarton').val('');
                    GetRizKala();
                }
            }

            function EditRizKala() {
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
                if ($('#listRang :selected').val() == undefined) {
                    RedAlert('listRizRang', 'لطفا رنگ را انتخاب نمایید');
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
                    Hid: rizId,
                    ItemId: $('#listFalleh :selected').val(),
                    ServiceId: $('#listService :selected').val(),
                    Gol: $('#listGol :selected').val(),
                    Rang: $('#listRang :selected').val(),
                    Darage: $('#listDarage :selected').val(),
                    Karton: $('#txtKalaCartoon').val()
                };
                if ($('#chkFallehService').is(":checked")) {
                    objj.ItemId = 0;
                } else {
                    objj.ServiceId = 0;
                }
                AjaxData({
                    url: 'orderCheck.asmx/UpdateRizKala',
                    param: { obj: objj },
                    func: updateRizKala
                });
                function updateRizKala() {
                    GreenAlert('n', 'ویرایش شد');
                    $('#txtKalaCartoon').val('');
                    GetOrderDetails();
                    cancelEditRiz();
                }
            }

            function cancelEditRiz() {
                $('#SabtArea').find('select :selected').prop('selected', false);
                $('#SabtArea').find('input').val('');
                $('#btneditKala').hide();
                $('#btnCancelEdit').hide();
                $('#sabtKala').show();
                $('#btnBacktoHavale').show();
            }
    </script>
    <div class="rizbadge" style="top: 0; left: 0; width: 300px !important;">
        <input value="" data="123" type="button" class="badgeButton" />
    </div>
    <style>
        table tr td a {
            cursor: pointer;
            color: darkblue;
        }

        table tr td {
            cursor: pointer;
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

        .badgeButton {
            background-color: darkblue;
            border: none;
            color: white;
            padding: 2px 5px;
            border-radius: 3px;
            width: 40%;
        }
    </style>
</asp:Content>



