<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/MasterPage.master" AutoEventWireup="true" CodeFile="flower_arrange.aspx.cs" Inherits="FlowerArrange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <style>
        .loading {
            position: fixed;
            left: 0;
            top: 0;
            z-index: 999;
            width: 100%;
            height: 100%;
            background-color: #c0c0c0;
            opacity: 0.6;
        }

            .loading img {
                width: 50px;
                height: 50px;
                position: absolute;
                top: 45%;
                left: 48%;
                opacity: 1 !important;
            }
    </style>
    <div class="loading" style="display: none;">
        <img src="Images/load.gif" />
    </div>
    <label class="headerstyle">.:: ویرایش فرم ها ::.</label>

    <asp:Panel class="container" runat="server" Direction="RightToLeft">
        <label>
            <asp:Label ID="Label1" runat="server" dir="rtl" Text="نام گل : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_flowname" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="کد گل : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_flowcode" dir="ltr" Font-Names="Tahoma" runat="server" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" dir="rtl" Text="رنگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_color" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" dir="rtl" Text="نوع رنگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_colortype" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" dir="rtl" Text="قالب : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_format" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" dir="rtl" Text="مشتری : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_customer" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" dir="rtl" Text="سازنده : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_company" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>
        </label>
    </asp:Panel>

    <asp:Panel Visible="True" runat="server" ID="pnl_edit_arrange">
        <div class="panelforflowerinfo">
            <div class="row">
                <div class="col-lg-3">
                    <div style="margin: 5px">
                        <asp:DropDownList ID="drp_dimension" TabIndex="3" Width="100%" CssClass="form-control" runat="server" AppendDataBoundItems="True" Height="40px" DataSourceID="dimension" DataTextField="flow_dimension" DataValueField="dimension_id">
                            <asp:ListItem>انتخاب کنید</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="dimension" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [dimension_id], [flow_dimension] FROM [flower_dimensions]"></asp:SqlDataSource>
                    </div>
                    <div style="margin: 5px">
                        <asp:TextBox ID="txt_comment_arrange" TabIndex="6" dir="rtl" Width="100%" class="form-control" runat="server" Height="40px" />
                    </div>
                </div>
                <div class="col-lg-1 text-left">
                    <div style="margin-top: 13px; margin-bottom: 25px;">
                        <label style="margin: 0px">: ابعاد</label></div>
                    <div>
                        <label style="margin: 0px">: توضیحات</label></div>
                </div>
                <div class="col-lg-3">
                    <div style="margin: 5px">
                        <asp:DropDownList ID="drp_arrangetype" AutoPostBack="True" OnSelectedIndexChanged="drp_arrangetype_OnSelectedIndexChanged" TabIndex="2" Width="100%" dir="rtl" CssClass="form-control" runat="server" AppendDataBoundItems="True" Height="40px" DataSourceID="arrangetype" DataTextField="arrange_type" DataValueField="arrange_id">
                            <asp:ListItem>انتخاب کنید</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="arrangetype" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [arrange_id], [arrange_type] FROM [arrange_type]"></asp:SqlDataSource>
                    </div>
                    <div style="margin: 5px">
                        <asp:TextBox ID="txt_mark" TabIndex="5" dir="rtl" Width="100%" class="form-control" runat="server" Height="40px" />
                    </div>
                </div>
                <div class="col-lg-1 text-left">
                    <div style="margin-top: 13px; margin-bottom: 25px;">
                        <label style="margin: 0px">: نوع چیدمان</label></div>
                    <div>
                        <label style="margin: 0px">: نوع مارک</label></div>
                </div>
                <div class="col-lg-3">
                    <div style="margin: 5px">
                        <asp:TextBox ID="txt_formnumber" TabIndex="1" dir="rtl" class="form-control" Width="100%" runat="server" Height="40px" />
                    </div>
                    <div style="margin: 5px">
                        <asp:TextBox ID="txt_sheetcount" TabIndex="4" class="form-control text-center" runat="server" Height="40px" Width="100%" />
                    </div>
                </div>
                <div class="col-lg-1 text-left">
                    <div style="margin-top: 13px; margin-bottom: 25px;">
                        <label style="margin: 0px">: شماره فرم</label></div>
                    <div>
                        <label style="margin: 0px">: تعداد برگ</label></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-3 text-right" style="padding-right: 20px;">
                    <asp:DropDownList ID="drpyear" Width="36%" TabIndex="9" CssClass="form-control" runat="server" Height="40px">
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
                    <asp:DropDownList ID="drpmonth" Width="30%" TabIndex="8" CssClass="form-control" runat="server" Height="40px">
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
                    <asp:DropDownList ID="drpday" Width="30%" TabIndex="7" CssClass="form-control" runat="server" Height="40px">
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
                <div class="col-lg-1 text-left">
                    <label style="margin-top: 13px; margin-bottom: 0;">: تاریخ ورود</label>
                </div>
                <div class="col-lg-4"></div>
            </div>
            <asp:Panel runat="server" CssClass="panelwarning" Style="margin: 0; padding-top: 5px;">
                <asp:Label runat="server" CssClass="label label-danger" ID="lbl_edit_or_submit" Text=""></asp:Label>
            </asp:Panel>
            <div class="panelwarning" style="top: -3px; left: 0px">
                <asp:Button runat="server" CssClass="button" ID="btn_edit_cancel" Text="انصراف" Visible="False" OnClick="brn_edit_cancel_OnClick" />
                <asp:Button ID="btn_addtotable" TabIndex="10" runat="server" CssClass="button" Text="ثبت" OnClick="btn_addtotable_OnClick" />
                <asp:Button ID="btn_editarranges" runat="server" CssClass="button" Text="ویرایش" Visible="False" OnClick="btn_editarranges_OnClick" />
            </div>

            <asp:Panel runat="server" Width="100%">
                <asp:Panel runat="server" ID="pnl_delete_arrange_question" Visible="False" CssClass="delete_all_warning">
                    <div>
                        <label class="label label-danger">!!نیم برش های این چیدمان حذف خواهند شد</label></div>
                    <div>
                        <label>. این چیدمان و تمامی آیتم های آن حذف خواهند شد</label></div>
                    <div>
                        <label>آیا مطمئن هستید ؟</label></div>
                    <div>
                        <asp:Button runat="server" ID="btn_delete_arrange_no" CssClass="button" Text="خیر" OnClick="btn_delete_arrange_no_OnClick" />
                        <asp:Button runat="server" ID="btn_delete_arrange_yes" CssClass="button" Text="بله" OnClick="btn_delete_arrange_yes_OnClick" />
                    </div>
                </asp:Panel>
            </asp:Panel>

            <div class="row">
                <div class="col-sm-9">
                    <div>
                        <style>
                            .table tr th {
                                padding: 0px 0px !important;
                            }

                            .table td {
                                padding: 2px 0px !important;
                                vertical-align: middle !important;
                            }
                        </style>
                        <asp:GridView ID="grid_show_arranges" dir="rtl" CssClass="table table-bordered" Width="100%"
                            ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد." runat="server"
                            AutoGenerateColumns="False" DataSourceID="arranges" OnRowCommand="grid_show_arranges_RowCommand" DataKeyNames="id,flower_id" AllowSorting="True">
                            <Columns>
                                <asp:ButtonField CommandName="edit_Arranges">
                                    <ControlStyle ForeColor="#0066FF" CssClass="glyphicon glyphicon-pencil" />
                                </asp:ButtonField>
                                <asp:TemplateField HeaderText="اصلاح تعداد برگ" Visible="True">
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="show_history" Text="سوابق" Style="color: blue;" CommandName="show_history" CommandArgument='<%# Container.DataItemIndex %>'></asp:LinkButton>
                                        <asp:Button runat="server" ID="btn_decrease" Style="padding: 0; font-weight: 900;" CssClass="btn btn-default" Width="25px" Height="25px" Text="-" CommandName="decrease_value" CommandArgument='<%# Container.DataItemIndex %>' />
                                        <asp:TextBox runat="server" ID="txt_edit_sheetcount" Width="60px" Style="padding: 0;" CssClass="form-control text-center" Height="25px" CommandArgument='<%# Container.DataItemIndex %>'></asp:TextBox>
                                        <asp:Button runat="server" ID="btn_increase" Style="padding: 0; font-weight: 900;" CssClass="btn btn-default" Width="25px" Height="25px" Text="+" CommandName="increase_value" CommandArgument='<%# Container.DataItemIndex %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="form_number" HeaderText="شماره فرم" SortExpression="form_number" />
                                <asp:BoundField DataField="sheetcount" HeaderText="تعداد برگ" SortExpression="sheetcount" />
                                <asp:BoundField DataField="last_enter_date" HeaderText="تاریخ ورود" SortExpression="last_enter_date" />
                                <asp:BoundField DataField="arrange_type" HeaderText="نوع چیدمان" SortExpression="arrange_type" />
                                <asp:BoundField DataField="flow_dimension" HeaderText="ابعاد" SortExpression="flow_dimension" />
                                <asp:BoundField DataField="mark_type" HeaderText="نوع مارک و تعداد" SortExpression="mark_type" />
                                <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment">
                                    <ItemStyle Width="200px"></ItemStyle>
                                </asp:BoundField>
                                <asp:ButtonField CommandName="delete_Arranges">
                                    <ControlStyle ForeColor="#0066ff" CssClass="glyphicon glyphicon-trash" />
                                </asp:ButtonField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="arranges" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flower_forms_entry.form_number, arrange_type.arrange_type, flower_dimensions.flow_dimension, flower_forms_entry.sheetcount, flower_forms_entry.mark_type, flower_forms_entry.comment, flower_forms_entry.id, flower_forms_entry.flower_id, flower_forms_entry.last_enter_date FROM flower_forms_entry INNER JOIN arrange_type ON flower_forms_entry.arrange_type = arrange_type.arrange_id INNER JOIN flower_dimensions ON flower_forms_entry.dimension = flower_dimensions.dimension_id WHERE (flower_forms_entry.flower_id = @arrange_id) ORDER BY flower_forms_entry.form_number">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="arrange_id" QueryStringField="fid" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-sm-3">
                    <asp:Panel runat="server" ID="pnl_sheet_count_edit" Visible="False" CssClass="panelwarning" Style="margin-top: 0px">
                        <label>
                            <asp:Label runat="server" dir="rtl" ForeColor="black" Font-Size="14pt" ID="lbl_sheet_edit_formname" Style="margin: 0px;" CssClass="panelwarning"></asp:Label></label>
                        <asp:GridView ID="grid_sheet_count_edit_history" CssClass="table table-bordered" runat="server"
                            ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد."
                            DataSourceID="sheet_count_edit" AutoGenerateColumns="False" AllowPaging="True" PageSize="10">
                            <Columns>
                                <asp:BoundField DataField="form_number" HeaderText="شماره فرم" SortExpression="form_number" />
                                <asp:BoundField DataField="change_size" HeaderText="مقدار تغییر" SortExpression="change_size" />
                                <asp:BoundField DataField="date_and_time" HeaderText="ساعت و تاریخ تغییر" SortExpression="date_and_time" />
                            </Columns>
                            <PagerSettings NextPageText="" PreviousPageText="" />
                            <PagerStyle HorizontalAlign="Center" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="sheet_count_edit" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT form_number, change_size, date_and_time, arrange_id FROM arrange_sheet_count WHERE (arrange_id = @id) ORDER BY id DESC">
                            <SelectParameters>
                                <asp:SessionParameter Name="id" SessionField="change_sheet_count" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </asp:Panel>
    <div class="panelwarning">
        <asp:Button ID="btn_nextstep" runat="server" CssClass="button" Text="ثبت آیتم های این گل" Visible="True" OnClick="btn_nextstep_OnClick" />
        <asp:Button runat="server" CssClass="button" ID="btn_back_to_previous_page" Visible="False" Text="بازگشت به صفحه قبل" OnClick="back_to_previous_page_OnClick" />
    </div>

    <script>
        $(function () {
            $(document).on('click', 'table tr td input[type=submit]',
                function () {
                    $('.loading').show();
                })
        })
    </script>
</asp:Content>

