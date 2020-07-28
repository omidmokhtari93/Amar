<%--  --%>

<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="search_flower.aspx.cs" Inherits="search_flower" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <asp:HiddenField runat="server" ID="flowerId" />
    <asp:HiddenField runat="server" ID="OrderId" />
    <asp:HiddenField runat="server" ID="CustomerID" />
    <asp:HiddenField runat="server" ID="FlowerName" />
    <asp:Panel ID="pnl_show_search_controls" runat="server" DefaultButton="btn_search">
        <asp:Label class="headerstyle" runat="server"><label>.:: جستوجوی گل ::.</label></asp:Label>
        <div class="container">
            <div class="margin">
                <asp:TextBox ID="txt_flower_code" TabIndex="2" Font-Names="tahoma" Width="200px" CssClass="form-control" runat="server"></asp:TextBox>
                <label class="label-titr">: کد گل</label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_flower_name" TabIndex="1" dir="rtl" Width="200px" CssClass="form-control" runat="server"></asp:TextBox>
                <label class="label-titr">: نام گل</label>
            </div>
            <div class="margin">
                <asp:DropDownList ID="drpyear" TabIndex="6" CssClass="form-control" runat="server" Height="40px">
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
                <label class="label-titr">: تاریخ ورود به انبار</label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="drp_flower_customer" TabIndex="3" Width="200px" CssClass="form-control" AppendDataBoundItems="True" runat="server" Height="40px" DataSourceID="customer" DataTextField="customer_name" DataValueField="customer_id">
                <asp:ListItem Value="-1">همه مشتری ها</asp:ListItem>
            </asp:DropDownList>
                <asp:SqlDataSource ID="customer" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [customer_id], [customer_name] FROM [flower_customers]"></asp:SqlDataSource>
                <label class="label-titr">: مشتری</label>
            </div>
        </div>
        <div class="container">
            <asp:Button runat="server" ID="btn_search" CssClass="button" Text="جستجو" OnClick="btn_search_OnClick" />
        </div>
        <div style="width: 70%;">
            <asp:GridView ID="grid_show_flowers" Visible="False" CssClass="table table-bordered" runat="server"
                ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد." Style="font-size: 13pt !important;"
                AutoGenerateColumns="False" DataSourceID="sqlSearchSource" DataKeyNames="id" OnRowCommand="grid_show_flowers_RowCommand" AllowSorting="True" OnSorting="btn_search_OnClick">
                <Columns>
                    <asp:ButtonField Text="مشاهده" CommandName="show_all">
                        <ControlStyle ForeColor="#0066FF" />
                    </asp:ButtonField>
                    <asp:BoundField DataField="flower_name" HeaderText="نام گل" SortExpression="flower_name" />
                    <asp:BoundField DataField="flow_color" HeaderText="رنگ" SortExpression="flow_color" />
                    <asp:BoundField DataField="flow_colortype" HeaderText="نوع رنگ" SortExpression="flow_colortype" />
                    <asp:BoundField DataField="flow_format" HeaderText="قالب" SortExpression="flow_format" />
                    <asp:BoundField DataField="flower_code" HeaderText="کد گل" SortExpression="flower_code">
                        <ItemStyle Font-Names="Tahoma" CssClass="flowcode" />
                    </asp:BoundField>
                    <asp:BoundField DataField="customer_name" HeaderText="مشتری" SortExpression="customer_name" />
                    <asp:BoundField DataField="company_name" HeaderText="سازنده" SortExpression="company_name" />
                    <asp:BoundField DataField="enter_date" HeaderText="تاریخ ورود به انبار" SortExpression="enter_date" />
                    <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment" />

                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlSearchSource" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flower_entry.flower_name, flower_entry.flower_code, flower_colors.flow_color, flower_colortypes.flow_colortype, flower_formats.flow_format, flower_customers.customer_name, flower_companies.company_name, flower_entry.id, flower_entry.enter_date, flower_entry.comment, flower_entry.customer_name AS customername FROM flower_entry INNER JOIN flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN flower_formats ON flower_entry.flower_format = flower_formats.flowformat_id INNER JOIN flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN flower_companies ON flower_entry.company_name = flower_companies.company_id ORDER BY flower_entry.id DESC"></asp:SqlDataSource>
        </div>
    </asp:Panel>

    <%--report Section--%>
    <asp:Panel runat="server" Visible="False" ID="pnl_show_report">
        <div class="headerstyle" style="margin-bottom: 5px; font-weight: 800;">
            .::
            <asp:Label runat="server" ID="lbl_header_flowname"></asp:Label>
            ::.
        </div>
        <asp:Panel runat="server" CssClass="panelforflowerinfo" Style="padding: 0;">
            <div class="row">
                <div class="col-sm-2 text-left">
                    <asp:Image ID="img_flowerimage" CssClass="img-thumbnail" alt="تصویر موجود نیست" runat="server" Style="cursor: zoom-in; margin: 5px;"
                        onclick="document.getElementById('modal01').style.display='block'" />
                    <div id="modal01" class="w3-modal" onclick="this.style.display='none'">
                        <span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
                        <div class="w3-modal-content w3-animate-zoom">
                            <asp:Image ID="img_flowerimage1" runat="server" Style="width: 100%" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 text-right" style="padding-top: 10px;">
                    <div class="col-sm-8 text-right">
                        <div>
                            <label>
                                <asp:Label ID="lbl_color" dir="rtl" CssClass="report_labels" runat="server"></asp:Label></label>
                        </div>
                        <div>
                            <label>
                                <asp:Label ID="lbl_format" dir="rtl" CssClass="report_labels" runat="server"></asp:Label></label>
                        </div>
                        <div>
                            <label>
                                <asp:Label ID="lbl_company" dir="rtl" CssClass="report_labels" runat="server"></asp:Label></label>
                        </div>
                        <div>
                            <label>
                                <asp:Label ID="lbl_comment" dir="rtl" CssClass="report_labels" runat="server"></asp:Label></label>
                        </div>
                    </div>
                    <div class="col-sm-4 text-right">
                        <div>
                            <label class="report_labels_subject">: رنگ</label>
                        </div>
                        <div>
                            <label class="report_labels_subject">: قالب</label>
                        </div>
                        <div>
                            <label class="report_labels_subject">: شرکت سازنده</label>
                        </div>
                        <div>
                            <label class="report_labels_subject">: توضیحات</label>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 text-right" style="padding-top: 10px;">
                    <div class="col-sm-7 text-right">
                        <div>
                            <label>
                                <asp:Label ID="lbl_code" CssClass="report_labels" dir="ltr" Font-Names="Tahoma" runat="server"></asp:Label></label>
                        </div>
                        <div>
                            <label>
                                <asp:Label ID="lbl_colortype" dir="rtl" CssClass="report_labels" runat="server"></asp:Label></label>
                        </div>
                        <div>
                            <label>
                                <asp:Label ID="lbl_customer" dir="rtl" CssClass="report_labels" runat="server"></asp:Label></label>
                        </div>
                        <div>
                            <label>
                                <asp:Label ID="lbl_enterdate" dir="rtl" CssClass="report_labels" runat="server"></asp:Label></label>
                        </div>
                    </div>
                    <div class="col-sm-5 text-right">
                    </div>
                    <div>
                        <label class="report_labels_subject">: کد</label>
                    </div>
                    <div>
                        <label class="report_labels_subject">: نوع رنگ</label>
                    </div>
                    <div>
                        <label class="report_labels_subject">: نام مشتری</label>
                    </div>
                    <div>
                        <label class="report_labels_subject">: تاریخ ورود به انبار</label>
                    </div>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel runat="server" CssClass="panelwarning" Style="margin-top: 0; margin-bottom: 3px; padding: 0;">
            <asp:Button class="button" ID="btn_edit_flower_info" runat="server" Text="ویرایش گل" OnClick="btn_edit_flower_info_OnClick"></asp:Button>
            <asp:Button runat="server" CssClass="button" ID="btn_back_to_search" Text="بازگشت به صفحه جستجو" OnClick="btn_back_to_search_OnClick" />
        </asp:Panel>

        <label class="headerstyle">.:: چیدمان ها و آیتم ها ::.</label>
        <div class="panelwarning" style="margin-bottom: 0; margin-top: 0;">
            <asp:LinkButton Style="vertical-align: middle" ID="btn_previous" CssClass="glyphicon glyphicon-triangle-left" ToolTip="Previous Page" runat="server" OnClick="btn_previous_OnClick"></asp:LinkButton>
            &nbsp;<asp:LinkButton Style="vertical-align: middle;" ID="btn_next" CssClass="glyphicon glyphicon-triangle-right" ToolTip="Next Page" runat="server" OnClick="btn_next_OnClick"></asp:LinkButton>
            &nbsp;&nbsp;<asp:DropDownList runat="server" ID="drp_form_number" CssClass="form-control" DataSourceID="formNumber" DataTextField="form_number" DataValueField="id" OnSelectedIndexChanged="drp_form_number_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>انتخاب کنید</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="formNumber" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT form_number, id, flower_id FROM flower_forms_entry WHERE (flower_id = @report_id) ORDER BY form_number">
                <SelectParameters>
                    <asp:ControlParameter ControlID="flowerId" Name="report_id" PropertyName="Value" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="panelwarning" style="margin-bottom: -3px;">
        </div>
        <asp:Panel runat="server" ID="pnl_show_arrange_info" Direction="RightToLeft">
            <div>
                <label style="margin: 0px;">
                    <label>
                        <asp:Label ID="Label10" runat="server" Text="نوع چیدمان : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_type" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;
                            <label>
                                <asp:Label ID="Label14" runat="server" Text="ابعاد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                                <asp:Label ID="lbl_dimension" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;
                            <label>
                                <asp:Label ID="Label16" runat="server" Text="تعداد برگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                                <asp:Label ID="lbl_arrange_sheet_count" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;  
                            <label>
                                <asp:Label ID="Label2" runat="server" Text="نوع مارک و تعداد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                                <asp:Label ID="lbl_mark" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;  
                            <label style="margin: 0px;">
                                <asp:Label ID="Label1" runat="server" Text="تاریخ ورود : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                                <asp:Label ID="lbl_lastenterdate" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;  
                            <label style="margin: 0px;">
                                <asp:Label ID="Label3" runat="server" Text="توضیحات : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                                <asp:Label ID="lbl_arrange_comment" runat="server" Font-Size="13pt"></asp:Label></label>
                </label>
            </div>
        </asp:Panel>
        <asp:Panel runat="server" Width="700px" ID="pnl_show_arrange_items">
            <asp:GridView runat="server" ID="grid_show_items" CssClass="table table-bordered" Style="margin-bottom: -5px;"
                ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد."
                AutoGenerateColumns="False" DataKeyNames="id"
                DataSourceID="arrange_items">
                <Columns>
                    <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name" />
                    <asp:BoundField DataField="item_insheet_count" HeaderText="تعداد آیتم در برگ" SortExpression="item_insheet_count" />
                    <asp:BoundField DataField="lent_of_item" HeaderText="تعداد لنت آیتم" SortExpression="lent_of_item" />
                    <asp:BoundField DataField="total" HeaderText="مجموع" ReadOnly="True" SortExpression="total" />
                    <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="arrange_items" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flower_arrange_items.id,
 flower_arrange_items.flower_id,
  flower_arrange_items.form_id,
  (CAST((ROUND((flower_arrange_items.item_insheet_count) , 1))AS float)) as item_insheet_count,
    flower_arrange_items.comment, flower_arrange_items.lent_of_item,
     (CAST((ROUND((flower_arrange_items.item_insheet_count * flower_forms_entry.sheetcount) , 1))AS float)) as total,
      items.item_name 
      FROM flower_arrange_items INNER JOIN items 
      ON flower_arrange_items.item_name = items.item_id INNER JOIN flower_forms_entry 
      ON flower_arrange_items.form_id = flower_forms_entry.id 
      AND flower_arrange_items.flower_id = flower_forms_entry.flower_id
 WHERE (flower_arrange_items.flower_id = @report_id)
  ORDER BY items.item_name">
                <SelectParameters>
                    <asp:ControlParameter ControlID="flowerId" Name="report_id" PropertyName="Value" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>


        <div style="width: 100%; position: relative; margin-top: 15px;">
            <div id="loading" style="display: none;">
                <label style="margin-right: 3px;">... در حال آماده سازی</label>
                <div class="loader"></div>
            </div>
        </div>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#<%= btn_show_cutted.ClientID %>').on("click", function () {
                    $('#loading').show();
                });
            });
        </script>

        <asp:Panel runat="server" CssClass="panelwarning">
            <div class="row">
                <asp:Button class="button" ID="btn_add_flower_items" runat="server" Text="ثبت یا ویرایش آیتم" OnClick="btn_add_flower_items_OnClick"></asp:Button>
                <asp:Button class="button" ID="btn_add_flower_arrange" runat="server" Text="ثبت یا ویرایش چیدمان" OnClick="btn_add_flower_arrange_OnClick"></asp:Button>
                <asp:Button runat="server" CssClass="button" ID="new_halfcut" OnClick="new_halfcut_OnClick" Text="ثبت و ویرایش نیم برش ها" />
                <asp:Button class="button" ID="btn_edit_halfcut" runat="server" Visible="False" Text="ثبت و ویرایش نیم برش ها" OnClick="btn_edit_halfcut_OnClick"></asp:Button>
                <asp:Button runat="server" ID="btn_show_cutted" ClientIDMode="Static" CssClass="button" Text="مشاهده موجودی آیتم ها" OnClick="btn_show_cuttedandremain_OnClick" />
            </div>
        </asp:Panel>
        <label class="headerstyle" style="margin-bottom: 5px;">.:: سفارشات ::.</label>
        <asp:Panel runat="server" ID="pnl_show_orders">
            <div class="col-sm-3">
                <div class="gridstyle">
                    <asp:GridView runat="server" ID="grid_show_order_forms" CssClass="table table-bordered"
                        ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد."
                        AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="order_show_forms">
                        <Columns>
                            <asp:BoundField DataField="form_number" HeaderText="شماره فرم" SortExpression="form_number" />
                            <asp:BoundField DataField="recieve_date" HeaderText="تاریخ تحویل" SortExpression="recieve_date" />
                            <asp:BoundField DataField="sheet_count" HeaderText="تعداد برگ" SortExpression="sheet_count" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="order_show_forms" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT form_number, recieve_date, sheet_count, order_id, id FROM order_sheet_count WHERE (order_id = @show_forms)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="OrderId" Name="show_forms" PropertyName="Value" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="gridstyle">
                    <asp:GridView runat="server" ID="grid_show_orders" CssClass="table table-bordered"
                        ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد."
                        AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="orders"
                        OnRowCommand="grid_show_orders_RowCommand" Style="margin: 0; padding: 0;" AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="order_type" HeaderText="نوع سفارش" SortExpression="order_type" />
                            <asp:BoundField DataField="order_count" HeaderText="تعداد سفارش" SortExpression="order_count" />
                            <asp:BoundField DataField="order_enter_date" HeaderText="تاریخ سفارش" SortExpression="order_enter_date" />
                            <asp:BoundField DataField="order_complete_date" HeaderText="تاریخ تکمیل سفارش" SortExpression="order_complete_date" />
                            <asp:BoundField DataField="order_remain" HeaderText="باقیمانده" SortExpression="order_remain" />
                            <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment" />
                            <asp:ButtonField Text="مشاهده فرم ها" CommandName="show_forms">
                                <ControlStyle ForeColor="#0066FF" />
                            </asp:ButtonField>
                        </Columns>
                        <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EBF5FB" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="orders" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT orders.order_count, orders.order_enter_date, orders.order_complete_date, orders.order_remain, orders.comment, orders.flower_id, orders.id, order_type.order_type FROM orders INNER JOIN order_type ON orders.order_type = order_type.order_id WHERE (orders.flower_id = @report_id) order by orders.order_complete_date desc">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="flowerId" Name="report_id" PropertyName="Value" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </asp:Panel>
        <asp:Panel runat="server" CssClass="panelwarning" Style="margin: 0; padding: 0;">
            <asp:Button class="button" ID="btn_add_flower_order" runat="server" Text="ثبت سفارش" OnClick="btn_add_flower_order_OnClick"></asp:Button>
        </asp:Panel>
    </asp:Panel>

</asp:Content>

