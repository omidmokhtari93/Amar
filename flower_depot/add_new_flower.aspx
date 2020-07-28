<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/MasterPage.master" AutoEventWireup="true" CodeFile="add_new_flower.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <style>
        .copyGol {
            border: 2px solid red;
            border-radius: 5px;
            position: relative;
            display: inline-block !important;
            padding: 5px;
        }
    </style>
    <label class="headerstyle">.:: ثبت گل جدید ::.</label>
    <div class="row">
        <div class="col-lg-3">
            <div style="margin: 5px">
                <asp:DropDownList ID="drpformat" dir="rtl" TabIndex="3" Width="80%" runat="server" CssClass="form-control" AppendDataBoundItems="True" Height="40px" DataSourceID="format" DataTextField="flow_format" DataValueField="flowformat_id">
                    <asp:ListItem>انتخاب کنید</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div style="margin: 5px">
                <asp:DropDownList ID="drpcostumername" dir="rtl" TabIndex="6" Width="80%" CssClass="form-control" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource4" DataTextField="customer_name" DataValueField="customer_id" Height="40px">
                    <asp:ListItem>انتخاب کنید</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div style="margin: 5px">
                <asp:TextBox ID="txtcomment" dir="rtl" TabIndex="11" CssClass="form-control" Width="100%" runat="server" Height="40px"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-1 text-left">
            <div style="margin-top: 13px; margin-bottom: 25px;">
                <label style="margin: 0px">: قالب</label>
            </div>
            <div style="margin-bottom: 22px;">
                <label style="margin: 0px">: نام مشتری</label>
            </div>
            <div>
                <label style="margin: 0px">: توضیحات</label>
            </div>
        </div>
        <div class="col-lg-3">
            <div style="margin: 5px">
                <asp:TextBox ID="txt_flowercode" TabIndex="2" Width="80%" Style="text-transform: uppercase;" Font-Names="Tahoma" dir="ltr" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin: 5px">
                <asp:DropDownList ID="drpcolortype" dir="rtl" TabIndex="5" runat="server" Width="80%" CssClass="form-control" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="flow_colortype" DataValueField="colortype_id" Height="40px">
                    <asp:ListItem>انتخاب کنید</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div style="margin: 5px">
                <asp:DropDownList ID="drpyear" Width="29%" TabIndex="10" CssClass="form-control" runat="server" Height="40px">
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
                <asp:DropDownList ID="drpmonth" Width="25%" TabIndex="9" CssClass="form-control" runat="server" Height="40px">
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
                <asp:DropDownList ID="drpday" Width="25%" TabIndex="8" CssClass="form-control" runat="server" Height="40px">
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
        <div class="col-lg-1 text-left">
            <div style="margin-top: 13px; margin-bottom: 25px;">
                <label style="margin: 0px">: کد گل</label>
            </div>
            <div style="margin-bottom: 22px;">
                <label style="margin: 0px">: نوع رنگ</label>
            </div>
            <div>
                <label style="margin: 0px">: تاریخ ورود</label>
            </div>
        </div>
        <div class="col-lg-3">
            <div style="margin: 5px">
                <asp:TextBox ID="txt_flowername" TabIndex="1" Width="80%" dir="rtl" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin: 5px">
                <asp:DropDownList ID="drpcolor" dir="rtl" TabIndex="4" Width="80%" runat="server" CssClass="form-control" AppendDataBoundItems="True" Height="40px" DataSourceID="SqlDataSource8" DataTextField="flow_color" DataValueField="flowcolor_id">
                    <asp:ListItem>انتخاب کنید</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div style="margin: 5px">
                <asp:DropDownList ID="drpcompany" dir="rtl" TabIndex="7" Width="80%" runat="server" CssClass="form-control" AppendDataBoundItems="True" DataSourceID="SqlDataSource5" DataTextField="company_name" DataValueField="company_id" Height="40px">
                    <asp:ListItem>انتخاب کنید</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-1 text-left">
            <div style="margin-top: 13px; margin-bottom: 25px;">
                <label style="margin: 0px">: نام گل</label>
            </div>
            <div style="margin-bottom: 22px;">
                <label style="margin: 0px">: رنگ</label>
            </div>
            <div>
                <label style="margin: 0px">: شرکت سازنده</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-3">
            <asp:Panel runat="server" CssClass="panelwarning" Style="margin: 0;">
                <style>
                    .input-group-addon {
                        cursor: pointer;
                    }

                    .input-group-addon:hover {
                        font-weight: 900;
                        text-decoration: underline;
                    }
                </style>
                <div class="uploadgroup" style="width: 80%;">
                    <div class="input-group">
                        <label class="input-group-addon" style="font-size: 13pt; font-weight: 700;">
                            انتخاب تصویر گل
                            <asp:FileUpload ID="upload_control" accept=".png,.jpg,.jpeg,.gif" type="file" TabIndex="12" runat="server" CssClass="hidden" onchange="CopyMe(this, 'uploadFile');" /></label>
                        <input id="uploadFile" type="text" class="form-control" placeholder="مسیر" disabled="disabled" />
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="col-lg-5"></div>
    </div>


    <div class="container" style="margin: 0; padding: 0; margin-top: 10px;">
        <label>
            <asp:Label ID="lblwarningsuccess" Font-Size="11pt" runat="server" class="label label-success" Text="" Visible="False"></asp:Label></label>
        <label>
            <asp:Label ID="lblwarningfailed" Font-Size="11pt" runat="server" class="label label-danger" Text="" Visible="False"></asp:Label></label>
    </div>

    <div class="container">
        &nbsp;<asp:Button ID="btn_save" runat="server" CssClass="button" Text="ثبت" OnClick="btn_save_OnClick" />
        &nbsp;<asp:Button ID="btn_addnewflower" runat="server" CssClass="button" Text="ثبت گل جدید" Visible="False" OnClick="btn_addnewflower_Click" />
        &nbsp;<asp:Button ID="btn_order" runat="server" CssClass="button" Text="ثبت سفارشات گل" Visible="False" />
    </div>
    <br />
    <asp:Panel runat="server" Visible="False" ID="pnlCopyGol" CssClass="copyGol">
        <p>آیا مطمئن هستید ؟</p>
            <asp:Button runat="server" ID="btnNo" CssClass="button" Text="خیر" OnClick="btnNo_OnClick"/>
            <asp:Button runat="server" ID="btnYes" CssClass="button" Text="بله" OnClick="btnYes_OnClick"/>
    </asp:Panel>
    <div class="row">
        <div class="col-sm-3">
            <style>
                .img-thumbnail {
                    margin: 0;
                    padding: 0;
                }

                .Flower_panel {
                    margin: 0;
                    padding: 0;
                }
            </style>
            <asp:Panel CssClass="Flower_panel" runat="server">
                <label>
                    <asp:Label runat="server" ID="lbl_flower_Image_name"></asp:Label></label>
                <div class="w3-container">
                    <asp:Image ID="img_flowerimage" CssClass="img-thumbnail" alt="تصویر موجود نیست" runat="server" Style="cursor: zoom-in"
                        onclick="document.getElementById('modal01').style.display='block'" />
                    <div id="modal01" class="w3-modal" onclick="this.style.display='none'">
                        <span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
                        <div class="w3-modal-content w3-animate-zoom">
                            <asp:Image ID="img_flowerimage1" runat="server" Style="width: 100%" />
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <div class="col-sm-9" style="margin: 0; padding-left: 0; padding-right: 5px;">
            <style>
                .table caption {
                    margin: 0;
                    padding: 0;
                    text-align: center;
                }
            </style>
            <div style="padding: 5px;">
                <button class="button" runat="server" id="btnSearch" OnServerClick="btnSearch_OnServerClick">جستجو</button>
                <input type="text" runat="server" id="txtSearch" class="form-control" style="direction: rtl;"/>
            </div>
            <div class="gridstyle" style="margin-top: 0;">
                <asp:GridView ID="grid_top5recent" runat="server" CssClass="table table-bordered" Caption="آخرین گل های ثبت شده"
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource7"
                    ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد." OnRowCommand="grid_top5recent_RowCommand" DataKeyNames="id" AllowPaging="True" AllowSorting="True" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="flower_name" HeaderText="نام گل" SortExpression="flower_name" />
                        <asp:BoundField DataField="flower_code" HeaderText="کد گل" SortExpression="flower_code">
                            <ControlStyle Font-Names="Tahoma" />
                            <ItemStyle Font-Names="Tahoma" />
                        </asp:BoundField>
                        <asp:BoundField DataField="flow_color" HeaderText="رنگ گل" SortExpression="flow_color" />
                        <asp:BoundField DataField="flow_colortype" HeaderText="نوع رنگ" SortExpression="flow_colortype" />
                        <asp:BoundField DataField="flow_format" HeaderText="قالب" SortExpression="flow_format" />
                        <asp:BoundField DataField="customer_name" HeaderText="نام مشتری" SortExpression="customer_name" />
                        <asp:BoundField DataField="company_name" HeaderText="سازنده" SortExpression="company_name" />
                        <asp:BoundField DataField="enter_date" HeaderText="تاریخ ورود" SortExpression="enter_date" />
                        <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment">
                            <ItemStyle Font-Names="myfont" />
                        </asp:BoundField>
                        <asp:ButtonField CommandName="add_flow_arrange" Text="ثبت چیدمان">
                            <ControlStyle ForeColor="#0066FF" />
                        </asp:ButtonField>
                        <asp:ButtonField CommandName="copy" Text="کپی گل">
                            <ControlStyle ForeColor="#0066FF" />
                        </asp:ButtonField>
                    </Columns>
                    <PagerSettings NextPageText="صفحه بعد" PreviousPageText="صفحه قبل" />
                    <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
            </div>
        </div>

    </div>


    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flower_entry.flower_name, flower_entry.flower_code, flower_colors.flow_color, flower_colortypes.flow_colortype, flower_formats.flow_format, flower_customers.customer_name, flower_companies.company_name, flower_entry.enter_date, flower_entry.comment, flower_colors.flowcolor_id, flower_colortypes.colortype_id, flower_formats.flowformat_id, flower_customers.customer_id, flower_companies.company_id, flower_entry.id FROM flower_entry INNER JOIN flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN flower_formats ON flower_entry.flower_format = flower_formats.flowformat_id INNER JOIN flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN flower_companies ON flower_entry.company_name = flower_companies.company_id INNER JOIN flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id ORDER BY flower_entry.id DESC"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [customer_id], [customer_name] FROM [flower_customers]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [company_name], [company_id] FROM [flower_companies]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [colortype_id], [flow_colortype] FROM [flower_colortypes]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [flowcolor_id], [flow_color] FROM [flower_colors]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="format" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [flowformat_id], [flow_format] FROM [flower_formats]"></asp:SqlDataSource>

</asp:Content>

