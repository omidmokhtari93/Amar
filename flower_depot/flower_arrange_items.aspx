<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/MasterPage.master" AutoEventWireup="true" CodeFile="flower_arrange_items.aspx.cs" Inherits="FlowerArrangeItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <label class="headerstyle">.:: ویرایش و ثبت آیتم ها ::.</label>
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
<asp:UpdatePanel runat="server">
    <ContentTemplate>
        <asp:Panel ID="pnl_edit_items" Visible="True" runat="server">
            <div class="panelforflowerinfo">
                <asp:Panel ID="Panel4" CssClass="panelwarning" runat="server">
                    <div class="row">
                        <div class="col-sm-9" style="height: 40px;">
                            <asp:Panel ID="pnl_showarrangeinfo"  style="margin-top: 5px; direction: rtl;" Visible="False" runat="server">
                                <div class="form-group" style="margin-top: 0px;">
                                    <label style="margin: 0px;"><asp:Label ID="Label13" runat="server" Text="نوع چیدمان : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                                        <asp:Label ID="lbl_arrange_type" runat="server" Font-Size="13pt"></asp:Label></label>
                                </div>
                                <div class="form-group" style="margin-top: 0px;">
                                    <label style="margin: 0px;"><asp:Label ID="Label15" runat="server" Text="ابعاد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                                        <asp:Label ID="lbl_dimension" runat="server" Font-Size="13pt"></asp:Label></label>
                                </div>
                                <div class="form-group" style="margin-top: 0px;">
                                    <label style="margin: 0px;"><asp:Label ID="Label17" runat="server" Text="تعداد برگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                                        <asp:Label ID="lbl_sheetcount" runat="server" Font-Size="13pt"></asp:Label></label>
                                </div>
                                <div class="form-group" style="margin-top: 0px;">
                                    <label style="margin: 0px;"><asp:Label ID="Label19" runat="server" Text="توضیحات : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                                        <asp:Label ID="lbl_comment" runat="server" Font-Size="13pt"></asp:Label></label>
                                </div>
                            </asp:Panel>
                        </div>
                        <div class="col-sm-3 text-right">
                            <div class="inline" style="margin-right: 14px;">
                                <asp:LinkButton style="vertical-align: middle" ID="btn_previous" CssClass="glyphicon glyphicon-triangle-left" ToolTip="Previous Page" runat="server" OnClick="btn_previous_OnClick" ></asp:LinkButton>
                                &nbsp;<asp:LinkButton style="vertical-align: middle;" ID="btn_next" CssClass="glyphicon glyphicon-triangle-right" ToolTip="Next Page" runat="server" OnClick="btn_next_OnClick" ></asp:LinkButton>
                                &nbsp;&nbsp;
                                <asp:DropDownList ID="drp_formnumber" TabIndex="1" CssClass="form-control" Height="40px" runat="server" AutoPostBack="True" DataSourceID="form_number" DataTextField="form_number" DataValueField="id" OnSelectedIndexChanged="drpformnumber_SelectedIndexChanged1" OnDataBound="drp_formnumber_DataBound"/>
                                <asp:SqlDataSource ID="form_number" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT form_number, id, flower_id FROM flower_forms_entry WHERE flower_id = @id_for_items order by form_number">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="id_for_items" QueryStringField="fid" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <label style="font-size: 13pt;">: شماره فرم</label>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Panel3" Width="100%" runat="server">
                    <div class="form-group" style="margin-top: 0px;">
                        <asp:DropDownList runat="server" dir="rtl" CssClass="form-control" ID="drp_itemname" TabIndex="2" AppendDataBoundItems="True" Height="40px" DataSourceID="item_name" DataTextField="item_name" DataValueField="item_id" OnSelectedIndexChanged="drp_itemname_OnSelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Selected="True">انتخاب کنید</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="item_name" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT     item_id, item_name
FROM         dbo.items
WHERE     (item_id &lt;&gt; 0)
order by item_name"></asp:SqlDataSource>
                        <label>: نام آیتم</label>
                    </div>
                    <div class="form-group" style="margin-top: 0px;">
                        <asp:TextBox runat="server" TabIndex="3" class="form-control" ID="txt_itemcount" Width="60px" Height="40px"></asp:TextBox>
                        <label>: تعداد آیتم در هر برگ</label>
                    </div>
                    <div class="form-group" style="margin-top: 0px;">
                        <asp:TextBox runat="server" TabIndex="4" class="form-control" ID="txt_lentcount" Width="60px" Height="40px"></asp:TextBox>
                        <label>: تعداد لنت هر آیتم</label>
                    </div>
                    <div class="form-group" style="margin-top: 0px;">
                        <asp:TextBox ID="txt_comment" TabIndex="5" dir="rtl" class="form-control" runat="server" Height="40px" Width="131px"></asp:TextBox>
                        <label>: توضیحات</label>
                    </div>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="panelwarning">
                <asp:Label runat="server" ID="lbl_edit_or_submit" class="label label-danger" ></asp:Label>
                </asp:Panel>
                <div class="panelwarning">
                    <asp:Button ID="btn_edit_items" runat="server"  CssClass="button" Text="ویرایش" Visible="False" OnClick="btn_edit_items_OnClick"/>
                    <asp:Button ID="btn_cancel_edit" runat="server"  CssClass="button" Text="انصراف" Visible="False" OnClick="btn_cancel_edit_OnClick"/>
                    <asp:Button ID="btnadd" runat="server" TabIndex="6" CssClass="button" Text="ثبت" OnClick="btnadd_Click" ></asp:Button>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <asp:Panel runat="server" Width="100%">
                            <asp:Panel runat="server" ID="pnl_show_items_delete" Visible="False" Width="80%" style="padding-top: 10px;" CssClass="delete_all_warning">
                                <div class="label label-danger" style="font-size: 12pt;">
                                    <label>!!آیتم از نیم برش ها حذف نخواهد شد</label>
                                </div>
                                <div style="margin-top: 5px;"><label>حذف آیتم ؟</label></div>
                                <div>
                                    <asp:Button runat="server" ID="btn_delete_from_all" CssClass="button" Text="حذف از تمامی فرم ها" OnClick="btn_delete_from_all_OnClick" />
                                    <asp:Button runat="server" ID="btn_delete_from_recent" CssClass="button" Text="حذف از فرم انتخاب شده" OnClick="btn_delete_from_recent_OnClick" />
                                </div>
                            </asp:Panel>
                        </asp:Panel>
                    </div>
                    <div class="col-sm-8">
                        <asp:GridView ID="grid_show_items" CssClass="table table-bordered" ShowHeaderWhenEmpty="True"
                                      EmptyDataText="داده ای وجود ندارد." dir="rtl" runat="server" AutoGenerateColumns="False"
                                      DataKeyNames="id,flower_id,item_name_id,form_number" DataSourceID="items" OnRowCommand="grid_show_items_RowCommand">
                            <Columns>
                                <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name" />
                                <asp:BoundField DataField="item_insheet_count" HeaderText="تعداد آیتم در هر برگ" SortExpression="item_insheet_count" />
                                <asp:BoundField DataField="lent_of_item" HeaderText="تعداد لنت" SortExpression="lent_of_item" />
                                <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment"/>
                                <asp:ButtonField CommandName="edit_items">
                                    <ControlStyle ForeColor="#0066FF" CssClass="glyphicon glyphicon-pencil"/>
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="delete_items">
                                    <ControlStyle ForeColor="#0066ff" CssClass="glyphicon glyphicon-trash"/>
                                </asp:ButtonField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="items" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flower_arrange_items.form_number, items.item_name, 
(CAST((ROUND((flower_arrange_items.item_insheet_count) , 1))AS float)) as item_insheet_count,
 flower_arrange_items.lent_of_item, flower_arrange_items.comment, flower_arrange_items.id, items.item_id, flower_arrange_items.flower_id, flower_arrange_items.item_name AS item_name_id, flower_arrange_items.form_id FROM flower_arrange_items INNER JOIN items ON flower_arrange_items.item_name = items.item_id WHERE (flower_arrange_items.flower_id = @arrange_items) ORDER BY items.item_name">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="arrange_items" QueryStringField="fid" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <div class="panelwarning">
                <asp:Button runat="server" ID="btn_enter_order" CssClass="button" OnClick="btn_enter_order_OnClick"/>
                <asp:Button class="button" ID="btn_back_to_previous_page" runat="server" Visible="False" Text="بازگشت به صفحه ی قبل" OnClick="btn_back_to_previous_page_OnClick"  ></asp:Button>
            </div>
        </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>

</asp:Content>
