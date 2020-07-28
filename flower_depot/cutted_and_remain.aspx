<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="cutted_and_remain.aspx.cs" Inherits="cutted_and_remain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
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
            opacity: 1!important
        ;
        }
    </style>
    <div class="loading" style="display: none;">
        <img src="Images/load.gif" />
    </div>
  <div class="headerstyle">
      <label>.:: موجودی برگ و برش خورده ها ::.</label>
  </div>
    <asp:Panel class="container" runat="server" Direction="RightToLeft">
        <label>
            <asp:Label ID="Label1" runat="server" dir="rtl" Text="نام گل : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_flowname" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="کد گل : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_flowcode" dir="ltr" Font-Names="Tahoma" runat="server" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" dir="rtl" Text="رنگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
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
    <asp:Panel runat="server" ID="pnl_delete_warning" Visible="False" CssClass="delete_order_warning">
        <div><label>آیا مطمئن هستید ؟</label></div>
        <div>
            <asp:Button runat="server" ID="btn_cancel_delete" CssClass="button" Text="خیر" OnClick="btn_cancel_delete_OnClick" />
            <asp:Button runat="server" ID="btn_accept_delete" CssClass="button" Text="بله" OnClick="btn_accept_delete_OnClick" />
        </div>
    </asp:Panel>
    <div class="row">
        <div class="col-sm-12">
            <div class="gridstyle">
                <asp:GridView ID="grid_show_cutted_and_remain" CssClass="table table-bordered" runat="server" dir="rtl"
                    AutoGenerateColumns="False" DataKeyNames="ID" style="margin-bottom: 0;" DataSourceID="cutted" OnRowCommand="grid_show_cutted_and_remain_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="4">
                            <ItemTemplate>
                                <asp:Label ID="four" runat="server" style="cursor: pointer;color: #5c5c5c;" Text='<%# Eval("record4") %>'
                                           tooltip='<%# Eval("td4") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="3">
                            <ItemTemplate>
                                <asp:Label ID="three" runat="server" style="cursor: pointer;color: #333333;" Text='<%# Eval("record3") %>'
                                           tooltip='<%# Eval("td3") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField HeaderText="2">
                            <ItemTemplate>
                                <asp:Label ID="two" runat="server" style="cursor: pointer;color: #222222;" Text='<%# Eval("record2") %>'
                                           tooltip='<%# Eval("td2") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField HeaderText="آخرین تغییر">
                            <ItemTemplate>
                                <asp:Label ID="one" style="cursor: pointer; color: #000000;" runat="server" Text='<%# Eval("record1") %>'
                                           tooltip='<%# Eval("td1") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="مقدار تغییر" Visible="True">
                            <ItemTemplate>
                                <asp:Button runat="server" ID="btn_decrease" style="padding: 0; font-weight: 900;" CssClass="btn btn-default" Width="25px" Height="25px" Text="-" CommandName="decrease_value" CommandArgument='<%# Container.DataItemIndex %>' />
                                <asp:TextBox runat="server" ID="txt_change_cutted" Width="60px" style="padding: 0;" CssClass="form-control text-center" Height="25px" CommandArgument='<%# Container.DataItemIndex %>'></asp:TextBox>
                                <asp:Button runat="server" ID="btn_increase" style="padding: 0;font-weight: 900;" CssClass="btn btn-default" Width="25px" Height="25px" Text="+" CommandName="increase_value" CommandArgument='<%# Container.DataItemIndex %>'/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" ReadOnly="True" Visible="False" SortExpression="ID" />
                        <asp:BoundField DataField="item_name" ReadOnly="True" HeaderText="نام آیتم" SortExpression="item_name" />
                        <asp:BoundField DataField="cutted" ReadOnly="True" HeaderText="برش خورده" SortExpression="cutted" />
                        <asp:BoundField DataField="falleh" ReadOnly="True" HeaderText="آیتم فله" SortExpression="falleh" />
                        <asp:BoundField DataField="service" ReadOnly="True" HeaderText="آیتم سرویسی" SortExpression="service" />
                        <asp:BoundField DataField="total" ReadOnly="True" HeaderText="موجودی کل" SortExpression="total" />
                        <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment" />
                        <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                            <ControlStyle ForeColor="blue"/>
                        </asp:CommandField>
                        <asp:ButtonField CommandName="delete_cutted">
                            <ControlStyle ForeColor="blue" CssClass="glyphicon glyphicon-trash"/>
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    
    <div class="panelwarning" style="padding: 0; margin: 0;">
        <asp:Button runat="server" CssClass="button" Text="بازگشت به صفحه ی قبل" ID="back_to_previous_page" OnClick="back_to_previous_page_OnClick"/>
    </div>
    <asp:SqlDataSource ID="cutted" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT cutted_and_remain.ID, cutted_and_remain.flower_id, cutted_and_remain.total, cutted_and_remain.cutted, cutted_and_remain.falleh, cutted_and_remain.service , cutted_and_remain.comment, cutted_and_remain.record1, cutted_and_remain.record2, cutted_and_remain.record3, cutted_and_remain.record4, items.item_name, cutted_and_remain.td1, cutted_and_remain.td2, cutted_and_remain.td3, cutted_and_remain.td4 FROM cutted_and_remain INNER JOIN items ON cutted_and_remain.item_name = items.item_id WHERE (cutted_and_remain.flower_id = @report) ORDER BY items.item_name" UpdateCommand="UPDATE cutted_and_remain SET comment = @comment WHERE (ID = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="report" QueryStringField="fid" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="comment" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <script>
        $(function() {
            $(document).on('click', 'table tr td input[type=submit]' ,
                function() {
                    $('.loading').show();
                })
        })
    </script>
</asp:Content>

