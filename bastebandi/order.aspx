<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="bastebandi_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        select * {
            font-size: 12pt;
        }

        select > option * {
            padding: 0px 5px;
        }

        input[type="checkbox"] {
            margin: 0;
            vertical-align: middle;
        }

        label {
            margin: 0;
        }

        table a {
            color: blue;
            cursor: pointer;
        }

        table tr td {
            font-size: 11pt;
        }
    </style>
    <asp:Panel runat="server" ID="pnl_order">
        <div class="panel panel-primary">
            <div class="panel-heading">ثبت سفارش</div>
            <div class="panel-body">
                <div class="row text-right">
                    <div class="col-md-4">
                        <label style="display: block;">شماره سفارش</label>
                        <asp:TextBox runat="server" Width="100%" ID="txtOrderNumber" Enabled="False" dir="rtl" CssClass="form-control text-center"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label style="display: block;">تاریخ تحویل سفارش</label>
                        <asp:DropDownList ID="drTahvilYear" TabIndex="2" CssClass="form-control" runat="server" Width="30%" Height="40px">
                            <asp:ListItem Value="-1">سال</asp:ListItem>
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
                        <asp:DropDownList ID="drTahvilMonth" TabIndex="1" CssClass="form-control" runat="server" Width="30%" Height="40px">
                            <asp:ListItem Value="-1">ماه</asp:ListItem>
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
                        <asp:DropDownList ID="drTahvilDay" TabIndex="0" CssClass="form-control" runat="server" Width="30%" Height="40px">
                            <asp:ListItem Value="-1">روز</asp:ListItem>
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
                    <div class="col-md-4">
                        <label style="display: block;">تاریخ ثبت سفارش</label>
                        <asp:DropDownList ID="drpyear" TabIndex="2" CssClass="form-control" runat="server" Width="30%" Height="40px">
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
                        <asp:DropDownList ID="drpmonth" TabIndex="1" CssClass="form-control" runat="server" Width="30%" Height="40px">
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
                        <asp:DropDownList ID="drpday" TabIndex="0" CssClass="form-control" runat="server" Width="30%" Height="40px">
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
                </div>
                <br />
                <div class="row text-right">
                    <div class="col-md-7">
                        <label>توضیحات</label>
                        <asp:TextBox runat="server" dir="rtl" Width="100%" CssClass="form-control" ID="txttozih"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label>جزییات مشتری</label>
                        <asp:TextBox runat="server" dir="rtl" CssClass="form-control" Width="100%" ID="txtCustomerDetail"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <label style="display: block;">نام مشتری</label>
                        <asp:DropDownList runat="server" ID="drCustomer" Width="100%" AppendDataBoundItems="True" dir="rtl" CssClass="form-control" DataSourceID="sqlCustomer" DataTextField="customer_name" DataValueField="customer_id">
                            <asp:ListItem Value="-1">مشتری</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="sqlCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT customer_id, customer_name FROM flower_customers order by customer_name"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <asp:Button runat="server" CssClass="button" ID="btn_order_save" Text="ثبت سفارش" OnClick="btn_order_save_OnClick" />
            <asp:Button runat="server" CssClass="button" ID="btnCanceledit" Visible="False" Text="انصراف" OnClick="btnCanceledit_OnClick" />
            <asp:Button runat="server" CssClass="button" ID="btnEditSabt" Text="ویرایش" Visible="False" OnClick="btnEditSabt_OnClick" />
        </div>
        <div class="panel-footer">
            <style>
                .dirr {
                    direction: rtl !important;
                }
            </style>
            <div style="padding: 10px;" runat="server" id="pnldel" visible="False">
                <div style="display: inline-block; border: 2px solid darkgray; border-radius: 5px; padding: 10px;">
                    <label style="display: block;">آیا مطمئن هستید؟</label>
                    <asp:Button runat="server" CssClass="button" Text="خیر" ID="btnNo" OnClick="btnNo_OnClick" />
                    <asp:Button runat="server" CssClass="button" Text="بله" ID="btnYes" OnClick="btnYes_OnClick" />
                </div>
            </div>
            <asp:GridView runat="server" ID="grid_orders" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Sqlorder" OnRowCommand="grid_orders_OnRowCommand">
                <Columns>
                    <asp:ButtonField CommandName="order_detailes" Text="ثبت آیتم ها">
                        <ControlStyle ForeColor="blue"></ControlStyle>
                    </asp:ButtonField>
                    <asp:BoundField DataField="order_id" HeaderText="شماره سفارش" SortExpression="order_id" />
                    <asp:BoundField DataField="tarikh" HeaderText="تاریخ ثبت سفارش" SortExpression="tarikh" />
                    <asp:BoundField DataField="tarikh_tahvil" HeaderText="تاریخ تحویل سفارش" SortExpression="tarikh_tahvil" />
                    <asp:BoundField DataField="moshtari" HeaderText="مشتری" SortExpression="moshtari" />
                    <asp:BoundField DataField="mem" HeaderText="ملاحظات" SortExpression="mem" />
                    <asp:ButtonField CommandName="ed" Text="ویرایش">
                        <ControlStyle ForeColor="blue"></ControlStyle>
                    </asp:ButtonField>
                    <asp:ButtonField CommandName="del" Text="حذف">
                        <ControlStyle ForeColor="blue"></ControlStyle>
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Sqlorder" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="
SELECT bastebandi.dbo.orders.id,
bastebandi.dbo.orders.mem,
bastebandi.dbo.orders.order_id,
bastebandi.dbo.orders.tarikh,
bastebandi.dbo.orders.tarikh_tahvil ,
flower_customers.customer_name COLLATE Persian_100_CI_AI_KS_WS + ' - ' + customer_detail as moshtari
FROM  bastebandi.dbo.orders INNER JOIN flower_depot.dbo.flower_customers 
ON bastebandi.dbo.orders.customer_id  = flower_customers.customer_id
where bastebandi.dbo.orders.mconf = 0 
order by bastebandi.dbo.orders.id desc
"></asp:SqlDataSource>
        </div>
    </asp:Panel>


    <asp:Panel runat="server" Style="margin-top: 10px;" ID="pnl_order_detailes" Visible="False">
        <div class="panel panel-primary">
            <div class="panel-heading">آیتم های سفارش</div>
            <div class="panel-body" id="SabtArea">
                <div style="padding: 10px; border: 2px solid darkgray; width: 100%; margin-bottom: 10px;">
                    &nbsp;&nbsp;&nbsp;<label runat="server" id="lblComment" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                    <label>توضیحات </label>
                    &nbsp;&nbsp;&nbsp;<label runat="server" id="lblTarikhTahvil" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                    <label>تاریخ تحویل سفارش</label>
                    &nbsp;&nbsp;&nbsp;<label runat="server" id="lblTarikh" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                    <label>تاریخ ثبت سفارش </label>
                    &nbsp;&nbsp;&nbsp;<label runat="server" id="lblOrderNumber" style="background-color: #dcdcdc; padding: 2px; direction: rtl; color: darkblue;"></label>
                    <label>شماره سفارش </label>
                    &nbsp;&nbsp;&nbsp;<label runat="server" id="lblCusName" style="background-color: #dcdcdc; padding: 2px; color: darkblue;"></label>
                    <label>نام مشتری </label>
                </div>

                <div class="row" style="text-align: right;">
                    <div class="col-lg-3">
                        <label style="display: block;">درجه</label>
                        <asp:DropDownList runat="server" CssClass="form-control" Width="85%" ClientIDMode="Static" ID="drDarage" DataSourceID="SqlDarage" DataTextField="dar" DataValueField="ID" />
                        <asp:SqlDataSource ID="SqlDarage" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, dar FROM Darajeh"></asp:SqlDataSource>
                        <hr />
                        <label style="display: block;">تعداد</label>
                        <asp:DropDownList runat="server" ID="dr_typeNumber" ClientIDMode="Static" Width="40%" dir="rtl" CssClass="form-control">
                            <asp:ListItem Value="0">عدد</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True">کارتن</asp:ListItem>
                        </asp:DropDownList>
                        <input type="text" autocomplete="off" class="form-control text-center" id="txtTedadKarton" style="display: inline-block; width: 120px;" />
                    </div>
                    <div class="col-lg-4">
                        <div style="display: block; vertical-align: middle;">
                            سرویس
                            <input type="checkbox" id="chFallehService" />
                        </div>
                        <div id="pnlService" style="display: none;">
                            <input type="text" autocomplete="off" class="form-control" placeholder="جستجو" id="txtsearchService" style="height: 30px; width: 100%; direction: rtl;" />
                            <asp:ListBox runat="server" ClientIDMode="Static" Height="202px" dir="rtl" ID="drService" Width="100%" CssClass="form-control" DataSourceID="sql_services" DataTextField="nam" DataValueField="id" />
                            <asp:SqlDataSource ID="sql_services" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT id, nam FROM Service where nam is not null and ID <> 0 order by nam"></asp:SqlDataSource>
                        </div>
                        <div id="pnlItem">
                            <input type="text" autocomplete="off" class="form-control" placeholder="جستجو" id="txtsearchItem" style="height: 30px; width: 100%; direction: rtl;" />
                            <asp:ListBox runat="server" ClientIDMode="Static" dir="rtl" Height="202px" Width="100%" ID="drItem" CssClass="form-control" DataSourceID="Sqlitem" DataTextField="nam" DataValueField="ID" />
                            <asp:SqlDataSource ID="Sqlitem" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID,nam from Item where nam is not null and ID <> 0 "></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <label>طرح</label>
                        <input type="text" autocomplete="off" class="form-control" placeholder="جستجو" id="txtsearchGol" style="height: 30px; width: 100%; direction: rtl;" />
                        <asp:ListBox ClientIDMode="Static" runat="server" Height="200px" AppendDataBoundItems="True" ID="drFlowName" dir="rtl" Width="100%" CssClass="form-control" DataSourceID="sql_flower_name" DataTextField="gol" DataValueField="id"></asp:ListBox>
                        <asp:SqlDataSource ID="sql_flower_name" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="
                        SELECT dbo.flower_entry.flower_name + ' / ' + dbo.flower_entry.flower_code + ' / ' + dbo.flower_colors.flow_color + ' / ' + dbo.flower_colortypes.flow_colortype + ' / ' + dbo.flower_formats.flow_format AS gol, 
                         dbo.flower_entry.id
                         FROM dbo.flower_entry INNER JOIN
                         dbo.flower_colors ON dbo.flower_entry.flower_color = dbo.flower_colors.flowcolor_id INNER JOIN
                         dbo.flower_colortypes ON dbo.flower_entry.flower_colortype = dbo.flower_colortypes.colortype_id INNER JOIN
                         dbo.flower_formats ON dbo.flower_entry.flower_format = dbo.flower_formats.flowformat_id"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <asp:Button runat="server" CssClass="button" ID="btn_cancel" Text="بازگشت به صفحه قبل" OnClick="btn_cancel_OnClick" />
                <%--<asp:Button runat="server" CssClass="button" ID="btnSefareshgol" Text="سفارش گل" />--%>
                <button type="button" id="btnSabtRizOrder" class="button" onclick="SaveRizOrder();">ثبت</button>
                <a id="showTotal" style="cursor: pointer; font-size: 12pt; color: royalblue; font-weight: 800; border: 1px solid royalblue; padding: 4px 10px;"
                    onclick="document.getElementById('kalaTotal').style.display='block'">آمار آیتم</a>
            </div>
            <div class="panel-footer">
                <div style="padding: 10px; display: none;" id="pnldelDetail">
                    <div style="display: inline-block; border: 2px solid darkgray; border-radius: 5px; padding: 10px;">
                        <label style="display: block;">آیا مطمئن هستید؟</label>
                        <button class="button" id="btnNoDet" type="button" onclick="$(this).parent().parent().hide();">خیر</button>
                        <button class="button" id="btnYesDet" type="button" onclick="DeleteOrderDet();">بله</button>
                    </div>
                </div>
                <%-- <div class="row" style="padding: 0; margin: 0;">
            <div class="col-lg-2"></div>
            <div class="col-lg-8" style="border: 1px solid darkgray; text-align: right; direction: rtl;">
                <label>نام طرح : </label>
                <label runat="server" id="lbltarh"></label>
            </div>
            <div class="col-lg-2"></div>
        </div>--%>
                <div class="row" style="padding: 0; margin: 0;">
                    <div class="col-lg-6" style="padding: 0; margin: 0;">
                        <table class="table table-bordered" id="gridod2">
                            <tbody></tbody>
                        </table>
                    </div>
                    <div class="col-lg-6" style="padding: 0; margin: 0;">
                        <table class="table table-bordered" id="gridod1">
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <asp:Button runat="server" CssClass="button" Text="تایید نهایی" ID="btnfinal" OnClick="btnfinal_OnClick" />
            </div>
        </div>
    </asp:Panel>




    <%-- <asp:Panel runat="server" ID="pnlSefareshGol">
        <br/>
        <div style="display: inline-block;">
            <asp:GridView runat="server" ID="gridSefareshGol" CssClass="table table-bordered" AutoGenerateColumns="False" DataSourceID="SqlSfareshGol">
                <Columns>
                    <asp:BoundField DataField="flower_name" HeaderText="نام طرح" SortExpression="flower_name" />
                    <asp:BoundField DataField="flower_code" HeaderText="کد" SortExpression="flower_code" />
                    <asp:BoundField DataField="flow_format" HeaderText="قالب" SortExpression="flow_format" />
                    <asp:BoundField DataField="colo" HeaderText="رنگ" SortExpression="colo" />
                    <asp:BoundField DataField="form" HeaderText="نوع" ReadOnly="True" SortExpression="form" />
                    <asp:ButtonField CommandName="showorder" Text="نمایش سفارش گل">
                        <ControlStyle ForeColor="blue"></ControlStyle>
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlSfareshGol" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT flower_entry.flower_name, flower_formats.flow_format,flower_entry.flower_code ,rang.colo,
case when ctype = 1 then 'مایکرویو' else 'معمولی' end as form FROM dbo.order_details 
INNER JOIN bastebandi.dbo.rang ON dbo.order_details.color = rang.ID 
INNER JOIN flower_depot.dbo.flower_entry ON dbo.order_details.flower = flower_entry.id
INNER JOIN flower_depot.dbo.flower_formats ON dbo.order_details.format = flower_formats.flowformat_id
WHERE(order_id = @oid)GROUP BY flower_entry.flower_name, flower_formats.flow_format, ctype , rang.colo,flower_entry.flower_code">
                <SelectParameters>
                    <asp:ControlParameter ControlID="order_id" Name="oid" PropertyName="Value" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>    
    </asp:Panel>--%>

    <div id="kalaTotal" class="w3-modal">
        <div class="w3-modal-content" style="background-color: beige;">
            <div class="w3-container">
                <span onclick="document.getElementById('kalaTotal').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                <label style="display: block;">.:: آمار کلی ::.</label>
                <div style="padding: 15px;">
                    <table class="table table-bordered" id="gridorderTotal">
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField runat="server" ID="order_id" />
    <script>
        function saved() {
            $.notify(".با موفقیت ثبت شد", "success");
        }
        function error() {
            $.notify(".خطا در ورود اطلاعات", "error");
        }

        $(document).ready(function () {
            var options = $('#drFlowName option').clone();
            $('#txtsearchGol').keyup(function () {
                var val = $(this).val();
                $('#drFlowName').empty();
                options.filter(function (idx, el) {
                    return val === '' || $(el).text().indexOf(val) >= 0;
                }).appendTo('#drFlowName');
            });
        });

        $(document).ready(function () {
            var options = $('#drItem option').clone();
            $('#txtsearchItem').keyup(function () {
                var val = $(this).val();
                $('#drItem').empty();
                options.filter(function (idx, el) {
                    return val === '' || $(el).text().indexOf(val) >= 0;
                }).appendTo('#drItem');
            });
        });

        $(document).ready(function () {
            var options = $('#drService option').clone();
            $('#txtsearchService').keyup(function () {
                var val = $(this).val();
                $('#drService').empty();
                options.filter(function (idx, el) {
                    return val === '' || $(el).text().indexOf(val) >= 0;
                }).appendTo('#drService');
            });
        });

        $(function () {
            $('#chFallehService').change(function () {
                if ($('#chFallehService').is(":checked")) {
                    $('#pnlItem').hide();
                    $('#pnlService').show();
                } else {
                    $('#pnlItem').show();
                    $('#pnlService').hide();
                }
            });
        });

        createTables();
        function createTables() {
            if ($('#order_id').val() != '') {
                $('#gridod1 tbody').empty();
                $('#gridod2 tbody').empty();
                var data = [];
                data.push({
                    url: 'orderCheck.asmx/GetOrderTables',
                    param: [{ orderId: $('#order_id').val() }],
                    func: createOdTables
                });
                AjaxCall(data);
                function createOdTables(e) {
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
                    tbl1Body.push('<tr><th>ردیف</th><th>نام کالا</th><th>طرح</th><th>درجه</th><th>تعداد</th><th></th></tr>');
                    tbl2Body.push('<tr><th>ردیف</th><th>نام کالا</th><th>طرح</th><th>درجه</th><th>تعداد</th><th></th></tr>');
                    for (var i = 0; i < tbl1Rows; i++) {
                        tbl1Body.push('<tr>' +
                            '<td style="display:none;">' + d[row].RizId + '</td>' +
                            '<td>' + radif + '</td>' +
                            '<td>' + d[row].Item + '</td>' +
                            '<td>' + d[row].Flower + '</td>' +
                            '<td>' + d[row].Darage + '</td>' +
                            '<td>' + d[row].Tedad + '</td>' +
                            '<td><a id="del">حذف</a></td>' +
                            '</tr>');
                        radif++;
                        row++;
                    }
                    for (var j = 0; j < tbl2Rows; j++) {
                        tbl2Body.push('<tr>' +
                            '<td style="display:none;">' + d[row].RizId + '</td>' +
                            '<td>' + radif + '</td>' +
                            '<td>' + d[row].Item + '</td>' +
                            '<td>' + d[row].Flower + '</td>' +
                            '<td>' + d[row].Darage + '</td>' +
                            '<td>' + d[row].Tedad + '</td>' +
                            '<td><a id="del">حذف</a></td>' +
                            '</tr>');
                        radif++;
                        row++;
                    }
                    $('#gridod1 tbody').append(tbl1Body.join(''));
                    $('#gridod2 tbody').append(tbl2Body.join(''));
                    GetOrderTotal();
                }
            }
        }

        $('#SabtArea').keypress(function (e) {
            if (e.which == 13) {
                SaveRizOrder();
            }
        });

        $('#form1').on('keyup keypress', function (e) {
            var keyCode = e.keyCode || e.which;
            if (keyCode === 13) {
                e.preventDefault();
                return false;
            }
        });

        function SaveRizOrder() {
            var flow = $('#drFlowName :selected').val();
            var falleh = $('#drItem :selected').val();
            var service = $('#drService :selected').val();
            var tedad = $('#txtTedadKarton').val();
            var type = $('#dr_typeNumber :selected').val();
            var flag = 0;
            if ($('#drFlowName :selected').val() == undefined) {
                RedAlert('drFlowName', 'لطفا گل را انتخاب نمایید');
                flag = 1;
            }
            if ($('#drItem :selected').val() == undefined && !$('#chFallehService').is(":checked")) {
                RedAlert('drItem', 'لطفا آیتم را انتخاب نمایید');
                flag = 1;
            }
            if ($('#drService :selected').val() == undefined && $('#chFallehService').is(":checked")) {
                RedAlert('drService', 'لطفا سرویس را انتخاب نمایید');
                flag = 1;
            }
            if (tedad == '') {
                RedAlert('txtTedadKarton', 'لطفا تعداد کارتن را وارد نمایید');
                flag = 1;
            }
            if (flag === 1) {
                return;
            }
            var obj = {
                RizOrderId: 0,
                OrderId: $('#order_id').val(),
                Flower: flow,
                Falleh: falleh,
                Service: service,
                Tedad: tedad,
                Type: type,
                Darage: $('#drDarage :selected').val()
            };
            if ($('#chFallehService').is(":checked")) {
                obj.Falleh = 0;
            } else {
                obj.Service = 0;
            }
            var data = [];
            data.push({
                url: 'orderCheck.asmx/SaveOrderDetails',
                param: [{ od: obj }],
                func: sabtshod
            });
            AjaxCall(data);

            function sabtshod(e) {
                $('#btnSabtRizOrder').notify('ثبت شد', { position: "right center", className: "success" });
                $('#txtTedadKarton').val('');
                createTables();
            }
        }

        var orderDetId = 0;
        $('#gridod1').on('click', 'td a#del', function () {
            orderDetId = parseInt($(this).parent().parent().find('td:eq(0)').text());
            $('#pnldelDetail').show();
        });
        $('#gridod2').on('click', 'td a#del', function () {
            orderDetId = parseInt($(this).parent().parent().find('td:eq(0)').text());
            $('#pnldelDetail').show();
        });

        function DeleteOrderDet() {
            var data = [];
            data.push({
                url: 'orderCheck.asmx/DeleteOrderDet',
                param: [{ odid: orderDetId }],
                func: deletedSuccess
            });
            AjaxCall(data);

            function deletedSuccess(e) {
                RedAlert('no', 'حذف شد');
                $('#pnldelDetail').hide();
                createTables();
            }
        }

        function GetOrderTotal() {
            var data = [];
            data.push({
                url: 'orderCheck.asmx/OrderDetailsTotal',
                param: [{ oid: $('#order_id').val() }],
                func: createTotalTable
            });
            AjaxCall(data);

            function createTotalTable(e) {
                var d = JSON.parse(e.d);
                $('#gridorderTotal tbody').empty();
                var body = [];
                if (d.length > 0) {
                    body.push('<tr><th>ردیف</th><th>نام کالا</th><th>طرح</th><th>سرویس</th><th>تعداد</th></tr>');
                    for (var i = 0; i < d.length; i++) {
                        body.push('<tr>' +
                            '<td>' + parseInt(i + 1) + '</td>' +
                            '<td>' + d[i].ItemName + '</td>' +
                            '<td>' + d[i].Flower + '</td>' +
                            '<td><input type="checkbox" ' + (d[i].FallehService ? 'checked' : '') + ' disabled/></td>' +
                            '<td>' + d[i].Tedad + '</td>' +
                            '</tr>');
                    }
                    $('#gridorderTotal tbody').append(body.join(''));
                }
            }
        }

        function AjaxCall(obj) {
            $.ajax({
                type: 'POST',
                url: obj[0].url,
                data: JSON.stringify(obj[0].param[0]),
                contentType: 'application/json;',
                dataType: 'json',
                success: obj[0].func,
                error: function () {
                    console.log('error');
                }
            });
        }
    </script>
</asp:Content>

