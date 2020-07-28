<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="half_cut.aspx.cs" Inherits="half_cut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <div class="headerstyle">
        <label>.:: موجودی نیم برش ها ::.</label>
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
    <asp:Panel class="panelwarning" runat="server" ID="pnl_controls">
        <label style="display: none;">نیم برش نصف شده</label>
        <asp:CheckBox runat="server" Visible="False" CssClass="chk_halfcut" ID="chk_half" AutoPostBack="True" OnCheckedChanged="chk_half_CheckedChanged" />
        <label>گل قدیمی</label>
        <asp:CheckBox runat="server" CssClass="chk_halfcut" ID="chk_old_flow"/>
        <asp:Button runat="server" ID="btn_decrease_boreshkamel" CssClass="button" Text="-" OnClick="btn_decrease_boreshkamel_OnClick"/>
        <asp:TextBox runat="server" ID="txt_boresh_kamel" CssClass="mycss form-control text-center" placeholder="تعداد" Width="70px"></asp:TextBox>
        <asp:Button runat="server" ID="btn_increase_boreshkamel" CssClass="button" Text="+" OnClick="btn_increase_boreshkamel_OnClick"/>
        <label> : برش کامل</label>&nbsp;&nbsp;
            <asp:TextBox ID="txt_half_cut_sheetcount" runat="server" CssClass="form-control text-center" Width="70px"></asp:TextBox>  
            <label> : تعداد برگ نیم برش شده</label>&nbsp;&nbsp;
        <asp:TextBox runat="server" CssClass="form-control text-center" Width="70px" ID="txt_remain_sheetcount" ReadOnly="True"></asp:TextBox>
        <label> : تعداد برگ موجود</label>&nbsp;&nbsp;
        &nbsp;&nbsp;<asp:DropDownList ID="drp_form_number" width="150px" runat="server" AppendDataBoundItems="True" CssClass="form-control" DataSourceID="form_number" DataTextField="form_number" AutoPostBack="True" OnSelectedIndexChanged="drp_form_number_SelectedIndexChanged" DataValueField="id">    
            <asp:ListItem Value="-1">انتخاب کنید</asp:ListItem>
            </asp:DropDownList>
        <asp:SqlDataSource ID="form_number" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT id, form_number, flower_id FROM flower_forms_entry WHERE (flower_id = @flower_id)
order by form_number">
            <SelectParameters>
                <asp:SessionParameter Name="flower_id" SessionField="half_cut_page" />
            </SelectParameters>
        </asp:SqlDataSource>
        <label> : شماره فرم</label>
    </asp:Panel> 

     <asp:Panel runat="server" ID="pnl_show_arrange_info" Visible="False" CssClass="panelwarning" Direction="RightToLeft">
            <div>
                <label style="margin: 0px;">
                    <label><asp:Label ID="Label2" runat="server" Text="نوع چیدمان : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_type" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;
                    <label><asp:Label ID="Label6" runat="server" Text="ابعاد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_dimension" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;
                    <label><asp:Label ID="Label8" runat="server" Text="تعداد برگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_sheet_count" runat="server" Font-Size="13pt"></asp:Label></label> 
                    &nbsp;&nbsp;&nbsp;  
                    <label><asp:Label ID="Label10" runat="server" Text="نوع مارک و تعداد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_mark" runat="server" Font-Size="13pt"></asp:Label></label> 
                    &nbsp;&nbsp;&nbsp;  
                    <label style="margin: 0px;"><asp:Label ID="Label12" runat="server" Text="تاریخ ورود : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_lastenterdate" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;  
                    <label style="margin: 0px;"><asp:Label ID="Label13" runat="server" Text="توضیحات : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_comment" runat="server" Font-Size="13pt"></asp:Label></label>  
                </label>
            </div>
        </asp:Panel>

            <asp:Panel class="panelwarning" runat="server" ID="pnl_warning" Visible="False">
                <div class="label label-danger"> !خطا در ورود اطلاعات</div>
            </asp:Panel> 
    <asp:Panel class="panelwarning" ID="pnl_show_form_items" style="margin-top: -5px; margin-bottom: 0px;" runat="server" Visible="False"> 
        <div class="row">
            <div class="col-lg-3">
                <asp:GridView runat="server" ID="gridsavabegh" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Sqlsavabeg" AllowPaging="True" PageSize="3">
                    <Columns>
                        <asp:BoundField DataField="chng" HeaderText="تغییرات" SortExpression="chng" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="Sqlsavabeg" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flid, foid, chng, id FROM hcRecords WHERE (foid = @foid) order by id desc">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drp_form_number" Name="foid" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="col-lg-6">
                <div class="gridstyle">
                    <asp:GridView runat="server" ClientIDMode="Static" ID="grid_show_items" dir="rtl"
                                  CssClass="table table-bordered" AutoGenerateColumns="False"
                                  DataKeyNames="form_id,id,flower_id,item_id,item_count" DataSourceID="form_items">
                        <Columns>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name" />
                            <asp:BoundField DataField="item_count" HeaderText="تعداد آیتم در برگ" SortExpression="item_count" />
                            <asp:BoundField DataField="lent_count" HeaderText="تعداد لنت آیتم" SortExpression="lent_count" />
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:CheckBox runat="server" CssClass="chk" ID="chk_header" OnCheckedChanged="chk_header_OnCheckedChanged" AutoPostBack="True" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chk_has_item" CssClass="chk" Style="vertical-align: middle;" Width="30px" Height="30px" runat="server" ></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="موجود در نیم برش نصف شده">
                                <ItemTemplate>
                                    <asp:CheckBox runat="server" CssClass="chk" ID="chk_half"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText = "تعداد آیتم موجود">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_remain_item" CssClass="form-control text-center" Width="70px" Height="30px" runat="server" ></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>  
                    <asp:SqlDataSource ID="form_items" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flower_arrange_items.id, flower_arrange_items.flower_id, flower_arrange_items.form_id, items.item_name, CAST(ROUND(flower_arrange_items.item_insheet_count, 1) AS float) AS item_count, flower_arrange_items.lent_of_item AS lent_count, flower_arrange_items.item_name AS item_id FROM flower_arrange_items INNER JOIN items ON flower_arrange_items.item_name = items.item_id
order by  items.item_name"></asp:SqlDataSource>
                </div>
            </div>
            <div class="col-lg-3 text-left">
                <asp:GridView runat="server" style="margin-top: 50px;" Width="250px" AutoGenerateColumns="False" 
                    CssClass="table table-bordered" ID="grid_without_item" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="item_name" HeaderText="بدون آیتم" SortExpression="item_name"/>
                        <asp:BoundField DataField="mines" HeaderText="تعداد" SortExpression="mines"/>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        
        <div class="panelwarning" style="margin-top: -15px;margin-bottom: -4px">
        <asp:Button runat="server" CssClass="button" Text="تایید جدول" ID="btn_accept_table" OnClick="btn_accept_table_OnClick"/>
        </div>
    </asp:Panel>
            <asp:Panel runat="server" ID="pnl_show_edit_halfcut" Visible="False">
                <div class="panelwarning"><label>.:: ویرایش نیم برش ::.</label></div>
                <div class="panelwarning">
                <asp:TextBox ID="txt_halfcut_cutted" runat="server" CssClass="form-control text-center" Width="70px"></asp:TextBox>  
                <label> : تعداد برگ برش خورده</label>&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:TextBox runat="server" CssClass="form-control text-center" Width="70px" ID="txt_halfcut_available" ReadOnly="False"></asp:TextBox>
                <label> : تعداد برگ موجود</label>
                </div>
                <asp:Panel runat="server" CssClass="panelwarning" ID="pnl_halfcut_edit_warning" Visible="False">
                    <label class="label label-danger">!!خطا در ورود اطلاعات</label>
                </asp:Panel>
                <style>
                    .hiddencol{display: none;}
                </style>
                <div class="gridstyle">
                <asp:GridView runat="server" style="margin-bottom: 3px" ID="grid_edit_halfcut" dir="rtl" CssClass="table table-bordered" 
                    AutoGenerateColumns="False" DataKeyNames="item_id,item_count">
                    <Columns>
                        <asp:BoundField DataField="item_id" ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol" SortExpression="item_id" />
                        <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name" />
                        <asp:BoundField DataField="item_count" HeaderText="تعداد آیتم در برگ" SortExpression="item_count" />
                        <asp:TemplateField >
                            <HeaderTemplate>
                                <asp:CheckBox runat="server" CssClass="chk" ID="chk_header_edit" AutoPostBack="True" OnCheckedChanged="chk_header_edit_OnCheckedChanged"/>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chk_has_item_halfcut" CssClass="chk" Style="vertical-align: middle;" Width="30px" Height="30px" runat="server" ></asp:CheckBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText = "تعداد آیتم موجود">
                            <ItemTemplate>
                                <asp:TextBox ID="txt_remain_item_halfcut" CssClass="form-control text-center" Width="70px" Height="30px" runat="server" ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>  
                </div>
                <div class="panelwarning" style="margin-top: -15px;">
                    <asp:Button runat="server" CssClass="button" Text="ویرایش" ID="btn_edit_halfcut" OnClick="btn_edit_halfcut_OnClick"/>
                    <asp:Button runat="server" CssClass="button" Text="انصراف" ID="btn_cancel_edit" OnClick="btn_cancel_edit_OnClick"/>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="pnl_delete_halfcut" Visible="False" style="margin-top: 10px;">
                <asp:Panel runat="server" CssClass="panelborder">
                    <div><label>آیا مطمئن هستید ؟</label></div>
                    <div>
                        <asp:Button runat="server" ID="btn_cancel_delete" CssClass="button" Text="خیر" OnClick="btn_cancel_delete_OnClick" />
                        <asp:Button runat="server" ID="btn_accept_delete" CssClass="button" Text="بله" OnClick="btn_accept_delete_OnClick" />
                    </div>
                </asp:Panel>
            </asp:Panel>
    <asp:Panel runat="server" CssClass="panelwarning" style="margin-left: -10px; margin-right: -10px;" ID="pnl_halfcut_table" Visible="False">
    <div class="gridstyle">
        <style>
            .mytable th {text-align: center !important; background-color: #65dbff; }
            .mytable { direction: rtl; font-size: 15px; }
            .mytable tr th { padding: 1px 1px !important; }
            .mytable td { padding: 1px 3px !important; }
            .mytable tr:nth-child(even){background-color: #beefff;}
            .mytable tr:nth-child(odd){background-color: #eaf4fa;}
            .mytable td span {color:blue;font-weight:bold;}
        </style>
        <asp:GridView runat="server" ID="grid_half_cut" CssClass="mytable table-bordered" 
            AutoGenerateColumns="False" DataSourceID="half_cut_table" DataKeyNames="id,form_id,flower_id,column_count,sheet_count" OnRowCommand="grid_half_cut_RowCommand" OnRowEditing="grid_half_cut_RowEditing" AllowSorting="True" OnSorting="grid_half_cut_Sorting">
            <Columns>
                <asp:ButtonField Text="ناموجود" CommandName="show_halfcut">
                    <ControlStyle ForeColor="#0066FF" />
                </asp:ButtonField>
                <asp:ButtonField Text="ویرایش" CommandName="edit_halfcut">
                    <ControlStyle ForeColor="#0066FF" />
                </asp:ButtonField>
                <asp:TemplateField HeaderText="تعداد برگ">
                    <ItemTemplate>
                        <asp:Label ID="sc" runat="server" style="cursor: pointer;color: #000000;" Text='<%# Eval("sheet_count") %>'
                                   tooltip='<%# Eval("time") %>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name" />
                <asp:BoundField DataField="count0" HeaderText="تعداد" SortExpression="count0" />
                <asp:BoundField DataField="Expr1" HeaderText="نام آیتم" SortExpression="Expr1" />
                <asp:BoundField DataField="count1" HeaderText="تعداد" SortExpression="count1" />
                <asp:BoundField DataField="Expr2" HeaderText="نام آیتم" SortExpression="Expr2" />
                <asp:BoundField DataField="count2" HeaderText="تعداد" SortExpression="count2" />
                <asp:BoundField DataField="Expr3" HeaderText="نام آیتم" SortExpression="Expr3" />
                <asp:BoundField DataField="count3" HeaderText="تعداد" SortExpression="count3" />
                <asp:BoundField DataField="Expr4" HeaderText="نام آیتم" SortExpression="Expr4" />
                <asp:BoundField DataField="count4" HeaderText="تعداد" SortExpression="count4" />
                <asp:BoundField DataField="Expr5" HeaderText="نام آیتم" SortExpression="Expr5" />
                <asp:BoundField DataField="count5" HeaderText="تعداد" SortExpression="count5" />
                <asp:BoundField DataField="Expr6" HeaderText="نام آیتم" SortExpression="Expr6" />
                <asp:BoundField DataField="count6" HeaderText="تعداد" SortExpression="count6" />
                <asp:BoundField DataField="Expr7" HeaderText="نام آیتم" SortExpression="Expr7" />
                <asp:BoundField DataField="count7" HeaderText="تعداد" SortExpression="count7" />
                <asp:BoundField DataField="Expr8" HeaderText="نام آیتم" SortExpression="Expr8" />
                <asp:BoundField DataField="count8" HeaderText="تعداد" SortExpression="count8" />
                <asp:BoundField DataField="Expr9" HeaderText="نام آیتم" SortExpression="Expr9" />
                <asp:BoundField DataField="count9" HeaderText="تعداد" SortExpression="count9" />
                <asp:BoundField DataField="Expr10" HeaderText="نام آیتم" SortExpression="Expr10" />
                <asp:BoundField DataField="count10" HeaderText="تعداد" SortExpression="count10" />
                <asp:BoundField DataField="Expr11" HeaderText="نام آیتم" SortExpression="Expr11" />
                <asp:BoundField DataField="count11" HeaderText="تعداد" SortExpression="count11" />
                <asp:BoundField DataField="Expr12" HeaderText="نام آیتم" SortExpression="Expr12" />
                <asp:BoundField DataField="count12" HeaderText="تعداد" SortExpression="count12" />
                <asp:BoundField DataField="Expr13" HeaderText="نام آیتم" SortExpression="Expr13" />
                <asp:BoundField DataField="count13" HeaderText="تعداد" SortExpression="count13" />
                <asp:BoundField DataField="Expr14" HeaderText="نام آیتم" SortExpression="Expr14" />
                <asp:BoundField DataField="count14" HeaderText="تعداد" SortExpression="count14" />
                <asp:BoundField DataField="Expr15" HeaderText="نام آیتم" SortExpression="Expr15" />
                <asp:BoundField DataField="count15" HeaderText="تعداد" SortExpression="count15" />
                <asp:BoundField DataField="Expr16" HeaderText="نام آیتم" SortExpression="Expr16" />
                <asp:BoundField DataField="count16" HeaderText="تعداد" SortExpression="count16" />
                <asp:BoundField DataField="Expr17" HeaderText="نام آیتم" SortExpression="Expr17" />
                <asp:BoundField DataField="count17" HeaderText="تعداد" SortExpression="count17" />
                <asp:BoundField DataField="Expr18" HeaderText="نام آیتم" SortExpression="Expr18" />
                <asp:BoundField DataField="count18" HeaderText="تعداد" SortExpression="count18" />
                <asp:BoundField DataField="Expr19" HeaderText="نام آیتم" SortExpression="Expr19" />
                <asp:BoundField DataField="count19" HeaderText="تعداد" SortExpression="count19" />
                <asp:BoundField DataField="Expr20" HeaderText="نام آیتم" SortExpression="Expr20" />
                <asp:BoundField DataField="count20" HeaderText="تعداد" SortExpression="count20" />
                <asp:ButtonField Text="حذف" CommandName="delete_halfcut">
                    <ControlStyle ForeColor="red" />
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
    </div>
    </asp:Panel>
        <asp:SqlDataSource ID="half_cut_table" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT half_cut.sheet_count,half_cut.time, items.item_name, CAST(ROUND(half_cut.count0, 1) AS float) AS count0, items_1.item_name AS Expr1, CAST(ROUND(half_cut.count1, 1) AS float) AS count1, items_2.item_name AS Expr2, CAST(ROUND(half_cut.count2, 1) AS float) AS count2, items_3.item_name AS Expr3, CAST(ROUND(half_cut.count3, 1) AS float) AS count3, items_4.item_name AS Expr4, CAST(ROUND(half_cut.count4, 1) AS float) AS count4, items_5.item_name AS Expr5, CAST(ROUND(half_cut.count5, 1) AS float) AS count5, items_6.item_name AS Expr6, CAST(ROUND(half_cut.count6, 1) AS float) AS count6, items_7.item_name AS Expr7, CAST(ROUND(half_cut.count7, 1) AS float) AS count7, items_8.item_name AS Expr8, CAST(ROUND(half_cut.count8, 1) AS float) AS count8, items_9.item_name AS Expr9, CAST(ROUND(half_cut.count9, 1) AS float) AS count9, items_10.item_name AS Expr10, CAST(ROUND(half_cut.count10, 1) AS float) AS count10, items_11.item_name AS Expr11, CAST(ROUND(half_cut.count11, 1) AS float) AS count11, items_12.item_name AS Expr12, CAST(ROUND(half_cut.count12, 1) AS float) AS count12, items_13.item_name AS Expr13, CAST(ROUND(half_cut.count13, 1) AS float) AS count13, items_14.item_name AS Expr14, CAST(ROUND(half_cut.count14, 1) AS float) AS count14, items_15.item_name AS Expr15, CAST(ROUND(half_cut.count15, 1) AS float) AS count15, items_16.item_name AS Expr16, CAST(ROUND(half_cut.count16, 1) AS float) AS count16, items_17.item_name AS Expr17, CAST(ROUND(half_cut.count17, 1) AS float) AS count17, items_18.item_name AS Expr18, CAST(ROUND(half_cut.count18, 1) AS float) AS count18, items_19.item_name AS Expr19, CAST(ROUND(half_cut.count19, 1) AS float) AS count19, items_20.item_name AS Expr20, CAST(ROUND(half_cut.count20, 1) AS float) AS count20, half_cut.form_id, half_cut.column_count, half_cut.form_id AS Expr21, half_cut.flower_id, half_cut.id FROM half_cut INNER JOIN items ON half_cut.item0 = items.item_id INNER JOIN items AS items_1 ON half_cut.item1 = items_1.item_id INNER JOIN items AS items_2 ON half_cut.item2 = items_2.item_id INNER JOIN items AS items_3 ON half_cut.item3 = items_3.item_id INNER JOIN items AS items_4 ON half_cut.item4 = items_4.item_id INNER JOIN items AS items_5 ON half_cut.item5 = items_5.item_id INNER JOIN items AS items_6 ON half_cut.item6 = items_6.item_id INNER JOIN items AS items_7 ON half_cut.item7 = items_7.item_id INNER JOIN items AS items_8 ON half_cut.item8 = items_8.item_id INNER JOIN items AS items_9 ON half_cut.item9 = items_9.item_id INNER JOIN items AS items_10 ON half_cut.item10 = items_10.item_id INNER JOIN items AS items_11 ON half_cut.item11 = items_11.item_id INNER JOIN items AS items_12 ON half_cut.item12 = items_12.item_id INNER JOIN items AS items_13 ON half_cut.item13 = items_13.item_id INNER JOIN items AS items_14 ON half_cut.item14 = items_14.item_id INNER JOIN items AS items_15 ON half_cut.item15 = items_15.item_id INNER JOIN items AS items_16 ON half_cut.item16 = items_16.item_id INNER JOIN items AS items_17 ON half_cut.item17 = items_17.item_id INNER JOIN items AS items_18 ON half_cut.item18 = items_18.item_id INNER JOIN items AS items_19 ON half_cut.item19 = items_19.item_id INNER JOIN items AS items_20 ON half_cut.item20 = items_20.item_id ORDER BY half_cut.id" UpdateCommand="UPDATE half_cut SET sheet_count = @sheet_count WHERE (id = @id)">
            <UpdateParameters>
                <asp:Parameter Name="sheet_count" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
    </asp:SqlDataSource>
    <div class="panelwarning">
        <asp:Button runat="server" ID="btn_back_to_previous" CssClass="button" Text="بازگشت به صفحه قبل" OnClick="btn_back_to_previous_OnClick"/>
    </div>
            <br/>
</asp:Content>

