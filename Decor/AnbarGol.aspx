<%@ Page Title="" Language="C#" MasterPageFile="~/Decor/MasterPage.master" AutoEventWireup="true" CodeFile="AnbarGol.aspx.cs" Inherits="Decor_AnbarGol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        #grid_show_flowers tr td:nth-child(6) {
            direction: ltr !important;
        }
    </style>
    <asp:HiddenField runat="server" ID="HiddenflowerId" Value="0" />
    <div class="text-center">
        <div style="padding: 10px;">
            <img src="Images/loading.png" style="width: 30px; margin-right: 10px; display: none;" />
            <asp:Button ClientIDMode="Static" runat="server" CssClass="button" Text="جستجو" OnClick="btnSearch_OnClick" ID="btnSearch" />
            <asp:TextBox runat="server" ID="txtFlowerName" CssClass="form-control" dir="rtl" placeholder="جستجو ..."></asp:TextBox>
        </div>
        <asp:GridView ID="grid_show_flowers" Visible="False" CssClass="table table-bordered" runat="server"
            ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد." Style="font-size: 13pt !important; margin-top: 15px;"
            AutoGenerateColumns="False" DataSourceID="sqlSearchSource" DataKeyNames="id" AllowSorting="True" OnRowCommand="grid_show_flowers_OnRowCommand">
            <Columns>
                <asp:ButtonField Text="مشاهده موجودی" CommandName="show">
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
        <asp:SqlDataSource ID="sqlSearchSource" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>"
            SelectCommand="SELECT flower_entry.flower_name, flower_entry.flower_code, flower_colors.flow_color,
            flower_colortypes.flow_colortype, flower_formats.flow_format, flower_customers.customer_name, flower_companies.company_name, 
            flower_entry.id, flower_entry.enter_date, flower_entry.comment, flower_entry.customer_name AS customername FROM flower_entry
            INNER JOIN flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN flower_colortypes ON
            flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN flower_formats ON flower_entry.flower_format =
            flower_formats.flowformat_id INNER JOIN flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN
            flower_companies ON flower_entry.company_name = flower_companies.company_id ORDER BY flower_entry.id DESC"></asp:SqlDataSource>

        <div style="display: inline-block;">
            <asp:GridView ID="TableMojoodi" CssClass="table table-bordered" runat="server" dir="rtl" Visible="False"
                AutoGenerateColumns="False" DataKeyNames="ID" Style="margin-bottom: 0;" DataSourceID="cutted">
                <Columns>
                    <asp:BoundField DataField="item_name" ReadOnly="True" HeaderText="نام آیتم" SortExpression="item_name" />
                    <asp:BoundField DataField="cutted" ReadOnly="True" HeaderText="برش خورده" SortExpression="cutted" />
                    <asp:BoundField DataField="falleh" ReadOnly="True" HeaderText="آیتم فله" SortExpression="falleh" />
                    <asp:BoundField DataField="service" ReadOnly="True" HeaderText="آیتم سرویسی" SortExpression="service" />
                    <asp:BoundField DataField="total" ReadOnly="True" HeaderText="موجودی کل" SortExpression="total" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="cutted" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="
            SELECT cutted_and_remain.ID, cutted_and_remain.flower_id, cutted_and_remain.total, cutted_and_remain.cutted,
            cutted_and_remain.falleh, cutted_and_remain.service , cutted_and_remain.comment, cutted_and_remain.record1,
            cutted_and_remain.record2, cutted_and_remain.record3, cutted_and_remain.record4, items.item_name,
            cutted_and_remain.td1, cutted_and_remain.td2, cutted_and_remain.td3, cutted_and_remain.td4 
            FROM cutted_and_remain INNER JOIN items ON cutted_and_remain.item_name = items.item_id WHERE 
            (cutted_and_remain.flower_id = @report) ORDER BY items.item_name">
            <SelectParameters>
                <asp:ControlParameter ControlID="HiddenflowerId" Name="report" PropertyName="Value" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <script>
        $('table a , #btnSearch').on('click', function () { $('img').show(); })
    </script>
</asp:Content>

