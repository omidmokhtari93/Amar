<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="items_copy.aspx.cs" Inherits="items_copy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
  
    <div class="headerstyle"><label>.:: کپی آیتم ها ::.</label></div>
    <asp:Panel runat="server" DefaultButton="btn_search_source">
    <div class="panelwarning" style="padding: 0; margin: 0;">
    <asp:Button runat="server" CssClass="button" Text="جستوجو" ID="btn_search_source" OnClick="btn_search_source_OnClick"/>
    <asp:TextBox runat="server" dir="rtl" CssClass="form-control" ID="txt_folwname_source"></asp:TextBox>
        <label> : کپی از آیتم های گل</label>
    </div>
    </asp:Panel>
    <asp:Panel class="panelwarning" runat="server" ID="pnl_show_res_source" Visible="False">
        <div class="panelwarning" style="padding: 0; margin: 0;">
            <div class="gridstyle">
        <asp:GridView runat="server" style="padding: 0; margin: 0;" CssClass="table table-bordered" AutoGenerateColumns="False" ID="grid_search_source" DataSourceID="sqlsearch_source" OnRowCommand="grid_search_source_RowCommand" DataKeyNames="id">
            <Columns>
                <asp:ButtonField Text="انتخاب" CommandName="choose_source">
                    <ControlStyle ForeColor="#0066FF" />
                </asp:ButtonField>
                <asp:BoundField DataField="flower_name" HeaderText="نام گل" SortExpression="flower_name" />
                <asp:BoundField DataField="flow_color" HeaderText="رنگ" SortExpression="flow_color"/>
                <asp:BoundField DataField="flow_colortype" HeaderText="نوع رنگ" SortExpression="flow_colortype" />
                <asp:BoundField DataField="flow_format" HeaderText="قالب" SortExpression="flow_format" />
                <asp:BoundField DataField="flower_code" HeaderText="کد گل" SortExpression="flower_code" >
                    <ItemStyle Font-Names="Tahoma" />
                </asp:BoundField>
                <asp:BoundField DataField="customer_name" HeaderText="مشتری" SortExpression="customer_name" />
                <asp:BoundField DataField="company_name" HeaderText="سازنده" SortExpression="company_name" />
                <asp:BoundField DataField="enter_date" HeaderText="تاریخ ورود به انبار" SortExpression="enter_date" />
                <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment" />
            </Columns>
        </asp:GridView>
            </div>
            <asp:SqlDataSource ID="sqlsearch_source" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flower_entry.flower_name, flower_entry.flower_code, flower_colors.flow_color, flower_colortypes.flow_colortype, flower_formats.flow_format, flower_customers.customer_name, flower_companies.company_name, flower_entry.id, flower_entry.enter_date, flower_entry.comment FROM flower_entry INNER JOIN flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN flower_formats ON flower_entry.flower_format = flower_formats.flowformat_id INNER JOIN flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN flower_companies ON flower_entry.company_name = flower_companies.company_id ORDER BY flower_entry.id DESC"></asp:SqlDataSource>
        </div>
        <asp:Button runat="server" ID="btn_copy" Text="کپی" CssClass="button" OnClick="btn_copy_OnClick"/>
        <asp:DropDownList runat="server" CssClass="form-control" ID="drp_form_source" DataSourceID="sqlsourceforms" DataTextField="form_number" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="drp_form_source_SelectedIndexChanged"/>
        <asp:SqlDataSource ID="sqlsourceforms" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT  id , form_number , flower_id FROM flower_forms_entry WHERE (flower_id = @source_flower_id)">
            <SelectParameters>
                <asp:SessionParameter Name="source_flower_id" SessionField="source_flower_id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <label>  آیتم های فرم</label>
        <asp:Panel runat="server" ID="pnl_show_arrange_info" Visible="False" CssClass="panelwarning" Direction="RightToLeft">
            <div>
                <label style="margin: 0px;">
                    <label><asp:Label ID="Label4" runat="server" Text="نوع چیدمان : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_type" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;
                    <label><asp:Label ID="Label5" runat="server" Text="ابعاد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_dimension" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;
                    <label><asp:Label ID="Label6" runat="server" Text="تعداد برگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_sheet_count" runat="server" Font-Size="13pt"></asp:Label></label> 
                    &nbsp;&nbsp;&nbsp;  
                    <label><asp:Label ID="Label7" runat="server" Text="نوع مارک و تعداد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_mark" runat="server" Font-Size="13pt"></asp:Label></label> 
                    &nbsp;&nbsp;&nbsp;  
                    <label style="margin: 0px;"><asp:Label ID="Label8" runat="server" Text="تاریخ ورود : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_lastenterdate" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;  
                    <label style="margin: 0px;"><asp:Label ID="Label9" runat="server" Text="توضیحات : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_comment" runat="server" Font-Size="13pt"></asp:Label></label>  
                </label>
            </div>
        </asp:Panel>
        <asp:Panel class="panelwarning" runat="server" Visible="False" ID="pnl_copy_warning" style="padding: 0; margin: 0;"> <label class="label label-success"> ! کپی شد</label></asp:Panel>
    </asp:Panel>
      

    <div class="headerstyle" style="margin-top: 5px; margin-bottom: 5px;"></div>
   
    <asp:Panel runat="server" CssClass="panelwarning" Visible="False" style="margin-top: 0;" ID="pnl_destination_controls">
    <asp:Panel runat="server" DefaultButton="btn_search_destination">
    <div class="panelwarning" style="padding: 0; margin: 0;">
        <asp:Button runat="server" CssClass="button" Text="جستوجو" ID="btn_search_destination" OnClick="btn_search_destination_OnClick"/>
        <asp:TextBox runat="server"  dir="rtl" CssClass="form-control" ID="txt_flowname_dest"></asp:TextBox>
        <label> : کپی به آیتم های گل</label>
    </div>
    </asp:Panel>
    <asp:Panel class="panelwarning" runat="server" ID="pnl_show_res_dest" style="margin-bottom: 0;" Visible="False">
        <div class="panelwarning" style="margin: 0; padding: 0;">
        <div class="gridstyle">
        <asp:GridView runat="server" AutoGenerateColumns="False" style="margin: 0; padding: 0;"
             CssClass="table table-bordered" ID="grid_search_dest" DataSourceID="sqlsearch_dest" 
            DataKeyNames="id" OnRowCommand="grid_search_dest_RowCommand">
            <Columns>
                <asp:ButtonField Text="انتخاب" CommandName="choose_dest">
                    <ControlStyle ForeColor="#0066FF" />
                </asp:ButtonField>
                <asp:BoundField DataField="flower_name" HeaderText="نام گل" SortExpression="flower_name" />
                <asp:BoundField DataField="flow_color" HeaderText="رنگ" SortExpression="flow_color"/>
                <asp:BoundField DataField="flow_colortype" HeaderText="نوع رنگ" SortExpression="flow_colortype" />
                <asp:BoundField DataField="flow_format" HeaderText="قالب" SortExpression="flow_format" />
                <asp:BoundField DataField="flower_code" HeaderText="کد گل" SortExpression="flower_code" >
                    <ItemStyle Font-Names="Tahoma" />
                </asp:BoundField>
                <asp:BoundField DataField="customer_name" HeaderText="مشتری" SortExpression="customer_name" />
                <asp:BoundField DataField="company_name" HeaderText="سازنده" SortExpression="company_name" />
                <asp:BoundField DataField="enter_date" HeaderText="تاریخ ورود به انبار" SortExpression="enter_date" />
                <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment" />
            </Columns>
        </asp:GridView>
        </div>
        </div>
        <asp:Button runat="server" ID="btn_paste_destination" CssClass="button" Text="چسباندن" OnClick="btn_paste_destination_OnClick"/>
        <asp:DropDownList runat="server" CssClass="form-control" ID="drp_form_destination" DataSourceID="sqldestforms" DataTextField="form_number" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="drp_form_destination_SelectedIndexChanged"/>
        <asp:SqlDataSource ID="sqldestforms" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT id, form_number, flower_id FROM flower_forms_entry WHERE (flower_id = @destination_flower_id)">
            <SelectParameters>
                <asp:SessionParameter Name="destination_flower_id" SessionField="destination_flower_id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <label>  آیتم های فرم</label>
        <asp:Panel runat="server" ID="pnl_show_arrange_info1" Direction="RightToLeft" Visible="False" CssClass="panelwarning">
            <div>
                <label style="margin: 0px;">
                    <label><asp:Label ID="Label10" runat="server" Text="نوع چیدمان : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_type1" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;
                    <label><asp:Label ID="Label14" runat="server" Text="ابعاد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_dimension1" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;
                    <label><asp:Label ID="Label16" runat="server" Text="تعداد برگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_sheet_count1" runat="server" Font-Size="13pt"></asp:Label></label> 
                    &nbsp;&nbsp;&nbsp;  
                    <label><asp:Label ID="Label2" runat="server" Text="نوع مارک و تعداد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_mark1" runat="server" Font-Size="13pt"></asp:Label></label> 
                    &nbsp;&nbsp;&nbsp;  
                    <label style="margin: 0px;"><asp:Label ID="Label1" runat="server" Text="تاریخ ورود : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_lastenterdate1" runat="server" Font-Size="13pt"></asp:Label></label>
                    &nbsp;&nbsp;&nbsp;  
                    <label style="margin: 0px;"><asp:Label ID="Label3" runat="server" Text="توضیحات : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                        <asp:Label ID="lbl_arrange_comment1" runat="server" Font-Size="13pt"></asp:Label></label>  
                </label>
            </div>
        </asp:Panel>
        <asp:Panel CssClass="panelwarning" style="margin: 0; padding: 0;" runat="server" ID="pnl_show_success" Visible="False">
            <label class="label label-success">.با موفقیت انجام شد</label>
        </asp:Panel>
    </asp:Panel>
    <asp:SqlDataSource ID="sqlsearch_dest" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flower_entry.flower_name, flower_entry.flower_code, flower_colors.flow_color, flower_colortypes.flow_colortype, flower_formats.flow_format, flower_customers.customer_name, flower_companies.company_name, flower_entry.id, flower_entry.enter_date, flower_entry.comment FROM flower_entry INNER JOIN flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN flower_formats ON flower_entry.flower_format = flower_formats.flowformat_id INNER JOIN flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN flower_companies ON flower_entry.company_name = flower_companies.company_id ORDER BY flower_entry.id DESC"></asp:SqlDataSource>
    </asp:Panel> 
</asp:Content>

