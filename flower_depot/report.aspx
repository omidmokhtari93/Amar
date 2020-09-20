<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <style>
        table tr td label {
            font-size: 11pt;
        }

        #Panel1 {
            width: 99% !important;
        }
    </style>
    <div class="headerstyle">
        <div class="panelwarning" style="padding-left: 15px;">
            <label>.:: انتخاب نوع گزارش ::.</label>
            <asp:Button runat="server" Text="بازگشت به آخرین گل جستجو شده" CssClass="button" OnClick="OnClick" Style="float: left;" />
        </div>
        <asp:RadioButtonList ID="rbl_choose_report" RepeatDirection="Horizontal" dir="rtl" CssClass="rbl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_choose_report_SelectedIndexChanged">
            <asp:ListItem Value="1">تعداد برگ موجود مشتریان به تفکیک ابعاد</asp:ListItem>
            <asp:ListItem Value="2">تعداد برگ موجود بر اساس فیلترها</asp:ListItem>
            <asp:ListItem Value="10">تعداد برگ با ابعاد</asp:ListItem>
            <asp:ListItem Value="3">مانده هر مشتری از سال 93</asp:ListItem>
            <asp:ListItem Value="4">آیتم های مشتری</asp:ListItem>
            <asp:ListItem Value="5">جستجوی آیتم های مشتری</asp:ListItem>
            <asp:ListItem Value="6">تعداد برگ ورودی در بازه زمانی</asp:ListItem>
            <asp:ListItem Value="7">دپوی بسته بندی</asp:ListItem>
            <asp:ListItem Value="8">برش خورده ها</asp:ListItem>
            <asp:ListItem Value="9">جستجوی گل ها</asp:ListItem>
        </asp:RadioButtonList>
    </div>

    <%--------------- جستجوی گل ها------------------%>
    <asp:Panel runat="server" ID="pnlMojoodiGol" Visible="False">
        <div id="MojoodiGol"></div>
        <script>
            $(function () {
                $('#MojoodiGol').load('html/MojoodiGol.html',
                    function () {

                    });
            })
        </script>
    </asp:Panel>

    <%------------- -----------------%>


    <%--------------- جستجوی گل ها------------------%>
    <asp:Panel runat="server" ID="pnlTedadBargBaDimnesion" Visible="False">
        <div id="TedadBargBaDimnesion"></div>
        <script>
            $(function () {
                $('#TedadBargBaDimnesion').load('html/GolsByDimension.html?'+ <%= new Random(1000).Next()%>,
                    function () {

                    });
            })
        </script>
    </asp:Panel>

    <%------------- -----------------%>


    <%---------------موجودی برش خورده ها------------------%>

    <asp:Panel runat="server" ID="pnlBoresh" Visible="False">
        <div id="MojoodiBoreshkhorde"></div>
        <script>
            $(function () {
                $('#MojoodiBoreshkhorde').load('html/MojoodiBoreshkhorde.html',
                    function () {

                    });
            })
        </script>
    </asp:Panel>

    <%---------------تعداد برگ موجود مشتریان------------------%>

    <asp:Panel runat="server" Visible="False" ID="pnl_countof_cutomer_sheet">
        <div style="width: 100%; position: relative; margin-top: 10px;">
            <div id="loading" style="display: none;">
                <div style="display: inline-block;">
                    <label style="margin-right: 5px; margin-bottom: 0; vertical-align: middle; padding: 0;">... در حال جمع آوری اطلاعات </label>
                    <div class="loader"></div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#btn_sheetcount_report').on("click", function () {
                    $('#loading').show();
                });
            });
        </script>
        <div class="panelwarning ">
            <asp:Button runat="server" CssClass="button" Text="دریافت گزارش" ClientIDMode="Static" ID="btn_sheetcount_report" OnClick="btn_sheetcount_report_OnClick" />
        </div>
        <asp:linkbutton id="BtnPrint" runat="server" onclientclick="javascript:CallPrint('print');" xmlns:asp="#unknown">
            <span class="glyphicon glyphicon-print"></span>
        </asp:linkbutton>
        <div id="print">
            <style>
                @font-face {
                    font-family: 'myfont';
                    src: url('fonts/Far_Nazanin.eot'), url('fonts/glyphicons-halflings-regular.eot')format('embedded-opentype'), url('fonts/Far_Nazanin.eot?#FooAnything') format('embedded-opentype');
                    src: local('☺'), url('fonts/Far_Nazanin.woff') format('woff'), url('fonts/Far_Nazanin.ttf') format('truetype'), url('fonts/Far_Nazanin.svg') format('svg'), url('fonts/glyphicons-halflings-regular.woff') format('woff'), url('fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('fonts/glyphicons-halflings-regular.svg#glyphicons-halflingsregular') format('svg'), url('fonts/glyphicons-halflings-regular.woff2')format('woff2');
                    font-weight: 400;
                }

                .panelwarning {
                    font-family: myfont;
                }

                .table th {
                    text-align: center !important;
                    background-color: #65dbff;
                }

                .table {
                    direction: rtl;
                    font-family: myfont;
                }

                    .table tr th {
                        padding: 5px 5px !important;
                    }

                    .table td {
                        padding: 2px 5px !important;
                        text-align: center;
                    }

                .bolderfooter {
                    font-size: 15pt;
                    font-family: myfont;
                    font-weight: 900;
                    color: blue;
                }
            </style>
            <center>
                <div class="gridstyle" style="margin-bottom: 0; padding-bottom: 0;">
                <asp:GridView runat="server" style="margin: 0; padding: 0;" ID="grid_cus" showfooter="true" CssClass="table table-bordered" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:BoundField DataField="moshtari" HeaderText="نام مشتری" ReadOnly="True" SortExpression="moshtari" footertext="مجموع کل"/>
                        <asp:BoundField DataField="100 * 70" HeaderText="70 * 100" ReadOnly="True" SortExpression="100 * 70"/>
                        <asp:BoundField DataField="25 * 35" HeaderText="25 * 35" ReadOnly="True" SortExpression="25 * 35" />
                        <asp:BoundField DataField="40 * 60" HeaderText="40 * 60" ReadOnly="True" SortExpression="40 * 60" />
                        <asp:BoundField DataField="50 * 70" HeaderText="50 * 70" ReadOnly="True" SortExpression="50 * 70" />
                        <asp:BoundField DataField="52 * 71" HeaderText="52 * 71" ReadOnly="True" SortExpression="52 * 71" />
                        <asp:BoundField DataField="60 * 80" HeaderText="60 * 80" ReadOnly="True" SortExpression="60 * 80" />
                        <asp:BoundField DataField="65 * 85" HeaderText="65 * 85" ReadOnly="True" SortExpression="65 * 85" />
                        <asp:BoundField DataField="71 * 82" HeaderText="71 * 82" ReadOnly="True" SortExpression="71 * 82" />
                        <asp:BoundField DataField="50 * 80" HeaderText="50 * 80" ReadOnly="True" SortExpression="50 * 80" />
                        <asp:BoundField DataField="A4" HeaderText="A4" ReadOnly="True" SortExpression="A4" />
                    </Columns>
                </asp:GridView>
                </div>
                <div style="width: 100%">
                    <style>
                        .mybadge {
                            height: 30px;
                            border-radius: 50px;
                            background-color: #006ca9;
                            padding: 3px;
                            text-align: left;
                            display: inline-block;
                            padding-right: 5px;
                            font-family: myfont;
                            margin-top: 15px;
                        }

                        .innerbadge {
                            display: inline-block;
                            height: 24px;
                            border-radius: 15px;
                            background-color: white;
                            padding: 2px;
                            padding-left: 3px;
                            padding-right: 3px;
                            color: #006ca9;
                            margin-right: 5px;
                            vertical-align: middle;
                        }

                        .noselect {
                            -webkit-touch-callout: none; /* iOS Safari */
                            -webkit-user-select: none; /* Safari */
                            -moz-user-select: none; /* Firefox */
                            -ms-user-select: none; /* Internet Explorer/Edge */
                            user-select: none; /* Non-prefixed version, currently
                                  supported by Chrome and Opera */
                        }
                    </style>
                    <asp:Panel runat="server" Visible="False" ID="pnlshowtotal">
                    <div class="mybadge noselect">
                        <label style="padding: 0; margin: 0; color: white; float: right; line-height: 24px;">تعداد کل برگ ها</label>
                        <div class="innerbadge"><label style="margin: 0; padding: 0;"><asp:Label runat="server" ID="lbltotalsheet"></asp:Label></label></div>
                    </div>
                    </asp:Panel>
                </div>
            </center>
        </div>
    </asp:Panel>
    <%-- ------------------------------------------------------ --%>




    <%-- --------------------------موجودی بسته بندی---------------------------- --%>

    <asp:Panel runat="server" ID="pnl_bastebandi_depo" Visible="False">
        <div id="anbargol-contents"></div>
        <script>
            $(function () {
                $('#anbargol-contents').load('html/BastebandiDepo.html',
                    function () {
                        $('#anbargol-content').find('nav').remove();
                        $('#anbargol-content').find('#main_panel').removeClass('panel-body');
                        $('#anbargol-content').find('.nav-tabs').remove();
                        $('#anbargol-content').find('.panel-body').remove();
                        $('#anbargol-content').find('.panel-footer').first().remove();
                    });
            })
        </script>
    </asp:Panel>

    <%-- ------------------------------------------------------ --%>



    <%-- -------------------------تعداد برگ بر اساس فیلترها-------------------- --%>

    <asp:Panel runat="server" Visible="False" ID="pnl_sheetcount_accordingto_filters">
        <div class="panelwarning">
            <asp:DropDownList runat="server" dir="rtl" TabIndex="9" Width="150px" AppendDataBoundItems="True" CssClass="form-control" ID="drp_format" DataSourceID="sql_format" DataTextField="flow_format" DataValueField="flowformat_id">
                <asp:ListItem Value="-1">همه قالب ها</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="sql_format" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flowformat_id, flow_format FROM flower_formats ORDER BY flow_format"></asp:SqlDataSource>
            <label>: قالب</label>&nbsp;&nbsp;
            <asp:DropDownList runat="server" dir="rtl" TabIndex="8" Width="150px" AppendDataBoundItems="True" CssClass="form-control" ID="drp_company" DataSourceID="sql_company" DataTextField="company_name" DataValueField="company_id">
                <asp:ListItem Value="-1">همه شرکت ها</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="sql_company" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT company_id, company_name FROM flower_companies ORDER BY company_name"></asp:SqlDataSource>
            <label>: شرکت</label>&nbsp;&nbsp;
            <asp:DropDownList runat="server" dir="rtl" Width="150px" TabIndex="7" AppendDataBoundItems="True" CssClass="form-control" ID="drp_customer" DataSourceID="sql_customer" DataTextField="customer_name" DataValueField="customer_id">
                <asp:ListItem Value="-1">همه مشتری ها</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="sql_customer" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT customer_id, customer_name FROM flower_customers ORDER BY customer_name"></asp:SqlDataSource>
            <label>: مشتری</label>&nbsp;&nbsp;
            <asp:DropDownList ID="drpyear" TabIndex="6" CssClass="form-control" runat="server" Height="40px">
                <asp:ListItem>سال</asp:ListItem>
                <asp:ListItem>1384</asp:ListItem>
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
            <asp:DropDownList ID="drpmonth" TabIndex="5" CssClass="form-control" runat="server" Height="40px">
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
            <asp:DropDownList ID="drpday" TabIndex="4" CssClass="form-control" runat="server" Height="40px">
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
            <label>: تا</label>&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="drp_year1" TabIndex="3" CssClass="form-control" runat="server" Height="40px">
                <asp:ListItem>سال</asp:ListItem>
                <asp:ListItem>1384</asp:ListItem>
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
            <asp:DropDownList ID="drp_month1" TabIndex="2" CssClass="form-control" runat="server" Height="40px">
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
            <asp:DropDownList ID="drp_day1" TabIndex="1" CssClass="form-control" runat="server" Height="40px">
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
            <label>: از</label>
        </div>
        <div class="panelwarning">
            <asp:Button runat="server" CssClass="button" ID="btn_get_filtered_report" Text="دریافت گزارش" OnClick="btn_get_filtered_report_OnClick" />
        </div>
        <div class="gridstyle">
            <asp:GridView runat="server" AutoGenerateColumns="False" ID="grid_show_filtered_sheetcount" CssClass="table table-bordered" OnRowDataBound="grid_show_filtered_sheetcount_RowDataBound">
                <Columns>
                    <asp:TemplateField HeaderText="نام مشتری">
                        <ItemTemplate>
                            <label>
                                <asp:Label runat="server" ID="lbl_cus_name" Style="color: black;"></asp:Label></label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="moshtari" HeaderText="نام مشتری" ReadOnly="True" SortExpression="moshtari" FooterText="مجموع کل" />
                    <asp:BoundField DataField="100 * 70" HeaderText="70 * 100" ReadOnly="True" SortExpression="100 * 70" />
                    <asp:BoundField DataField="25 * 35" HeaderText="25 * 35" ReadOnly="True" SortExpression="25 * 35" />
                    <asp:BoundField DataField="40 * 60" HeaderText="40 * 60" ReadOnly="True" SortExpression="40 * 60" />
                    <asp:BoundField DataField="50 * 70" HeaderText="50 * 70" ReadOnly="True" SortExpression="50 * 70" />
                    <asp:BoundField DataField="52 * 71" HeaderText="52 * 71" ReadOnly="True" SortExpression="52 * 71" />
                    <asp:BoundField DataField="60 * 80" HeaderText="60 * 80" ReadOnly="True" SortExpression="60 * 80" />
                    <asp:BoundField DataField="65 * 85" HeaderText="65 * 85" ReadOnly="True" SortExpression="65 * 85" />
                    <asp:BoundField DataField="71 * 82" HeaderText="71 * 82" ReadOnly="True" SortExpression="71 * 82" />
                    <asp:BoundField DataField="50 * 80" HeaderText="50 * 80" ReadOnly="True" SortExpression="50 * 80" />
                    <asp:BoundField DataField="A4" HeaderText="A4" ReadOnly="True" SortExpression="A4" />
                </Columns>
            </asp:GridView>
        </div>
    </asp:Panel>

    <%-- ------------------------------------------------------ --%>


    <%-- --------------------مانده های مشتری از سال 93------------------ --%>
    <asp:Panel runat="server" ID="pnl_after93" Visible="False">
        <div id="MandeAz93"></div>
        <script>
            $(function () {
                $('#MandeAz93').load('html/MandeAz93.html',
                    function () {

                    });
            })
        </script>
    </asp:Panel>
    <%-- ------------------------------------------------------ --%>




    <%-- ------------------- آیتم های یک مشتری---------------- --%>
    <asp:Panel runat="server" ID="pnl_customer_items" Visible="False">
        <div id="MoshatriItems"></div>
        <script>
            $(function () {
                $('#MoshatriItems').load('html/MoshatriItems.html',
                    function () {

                    });
            })
        </script>
    </asp:Panel>
    <%-- ------------------------------------------------------ --%>





    <%-- ----------------------جستوجو در آیتم های یک مشتری----------------------- --%>
    <asp:Panel runat="server" ID="pnl_search_in_cus_items" Visible="False">
        <div id="MojoodiItems"></div>
        <script>
            $(function () {
                $('#MojoodiItems').load('html/ItemsReport.html',
                    function () {

                    });
            })
        </script>
    </asp:Panel>
    <%-- ------------------------------------------------------ --%>
    <%-- -----------------تعداد برگ ورودی مشتری در بازه زمانی------------ --%>
    <asp:Panel runat="server" ID="pnl_customer_enter_sheetcount" Visible="False">
        <div class="panelwarning">
            <asp:Button runat="server" ID="btn_get_customer_entry_Sheetcount" CssClass="button" Text="دریافت گزارش" OnClick="btn_get_customer_entry_Sheetcount_OnClick" />
            <asp:DropDownList runat="server" ID="dr_company" CssClass="form-control" AppendDataBoundItems="True" DataSourceID="sql_comp" DataTextField="company_name" DataValueField="company_id">
                <asp:ListItem Value="-1">همه شرکت ها</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="sql_comp" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT company_id, company_name FROM flower_companies ORDER BY company_name"></asp:SqlDataSource>
            <label>شرکت</label>
            &nbsp;&nbsp;
            <asp:DropDownList runat="server" CssClass="form-control" AppendDataBoundItems="True" ID="dr_cus_entr_sheetcount" DataSourceID="sql_cus_sheetcount_date" DataTextField="customer_name" DataValueField="customer_id">
                <asp:ListItem Value="-1">همه مشتری ها</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="sql_cus_sheetcount_date" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT customer_id, customer_name FROM flower_customers ORDER BY customer_name"></asp:SqlDataSource>
            <label>مشتری</label>
            &nbsp;&nbsp;
            <asp:DropDownList runat="server" CssClass="form-control" AppendDataBoundItems="True" ID="drDimension" DataSourceID="sqldimension" DataTextField="dim" DataValueField="id">
                <asp:ListItem Value="-1">همه ابعاد</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="sqldimension" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="select dimension_id as id, flow_dimension as dim from flower_dimensions"></asp:SqlDataSource>
            <label>ابعاد</label>
            <asp:DropDownList ID="dr_year1" TabIndex="6" CssClass="form-control" runat="server" Height="40px">
                <asp:ListItem>سال</asp:ListItem>
                <asp:ListItem>1384</asp:ListItem>
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
            <asp:DropDownList ID="dr_month1" TabIndex="5" CssClass="form-control" runat="server" Height="40px">
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
            <asp:DropDownList ID="dr_day1" TabIndex="4" CssClass="form-control" runat="server" Height="40px">
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
            <label>: تا</label>&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dr_year0" TabIndex="3" CssClass="form-control" runat="server" Height="40px">
                <asp:ListItem>سال</asp:ListItem>
                <asp:ListItem>1384</asp:ListItem>
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
            <asp:DropDownList ID="dr_month0" TabIndex="2" CssClass="form-control" runat="server" Height="40px">
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
            <asp:DropDownList ID="dr_day0" TabIndex="1" CssClass="form-control" runat="server" Height="40px">
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
            <label>: از</label>
            <div class="panelwarning">
                <div class="gridstyle">
                    <asp:GridView runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" ID="grid_cus_enter_sheetcount">
                        <Columns>
                            <asp:BoundField DataField="customer_name" HeaderText="نام مشتری" />
                            <asp:BoundField DataField="company_name" HeaderText="نام شرکت" />
                            <asp:BoundField DataField="dimension" HeaderText="ابعاد" />
                            <asp:BoundField DataField="total_sheet" HeaderText="تعداد برگ" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </asp:Panel>
    <%-- ------------------------------------------------------ --%>
    <script>
        function CallPrint(print) {
            var prtContent = document.getElementById(print);
            var WinPrint = window.open('', '', 'letf=0,top=0,width=1024,height=768,toolbar=0,scrollbars=0,status=0,dir=ltr');
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            prtContent.innerHTML = strOldOne;
        }
    </script>
    <script>
        function CallPrint(print_area) {
            var prtContent = document.getElementById(print_area);
            var WinPrint = window.open('', '', 'letf=0,top=0,width=1024,height=768,toolbar=0,scrollbars=0,status=0,dir=ltr');
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            prtContent.innerHTML = strOldOne;
        }
    </script>
    <script>
        $('#txtSearch').keyup(function () {
            var val = $(this).val().toUpperCase();
            $('#grid_flowers_customer_items> tbody > tr').each(function () {
                if ($(this).text().toUpperCase().indexOf(val) < 0) $(this).hide(); else $(this).show();
            });
        });
    </script>
</asp:Content>

