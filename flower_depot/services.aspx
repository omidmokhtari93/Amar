<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <div class="headerstyle"><label>.:: ثبت سرویس ها ::.</label></div>
    <div class="panelwarning">
        <asp:Button runat="server" ID="btn_add_service_items" CssClass="button" Text="ثبت آیتم های سرویس" OnClick="btn_add_service_items_OnClick" />
        <asp:Button runat="server" ID="btn_add_new_service" CssClass="button" Text="ثبت سرویس جدید" OnClick="btn_add_new_service_OnClick" />
    </div>
    <asp:Panel ID="pnl_add_services" Visible="False" CssClass="panelforflowerinfo" runat="server">
    <div class="panelwarning">
        <asp:Button runat="server" Height="40px" CssClass="button" Text="ثبت" ID="btn_add_service" OnClick="btn_add_service_OnClick"/>
        <asp:TextBox runat="server" ID="txt_service_name" dir="rtl" Width="350px" CssClass="form-control"></asp:TextBox>
        <label> : نام سرویس</label>
        <div class="panelwarning">
            <asp:GridView runat="server" Width="40%" ID="grid_service_name" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="sql_services">
                <Columns>
                    
                    <asp:BoundField DataField="id" HeaderText="شناسه" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="service_name" HeaderText="نام سرویس" SortExpression="service_name" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" CancelText="لغو" UpdateText="ثبت">
                        <ControlStyle ForeColor="#0066FF" />
                        </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sql_services" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT service_name, id FROM services" UpdateCommand="UPDATE services SET service_name =@ service_name where id  = @id">
                <UpdateParameters>
                    <asp:Parameter />
                    <asp:Parameter Name="id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    </asp:Panel>
    <asp:Panel runat="server" ID="pnl_add_service_items" CssClass="panelforflowerinfo" Visible="False">
        <div class="panelwarning">
        <asp:DropDownList runat="server" ID="drp_services" CssClass="form-control" DataSourceID="Sqlservicesource" DataTextField="service_name" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="drp_services_SelectedIndexChanged"/>
            <asp:SqlDataSource ID="Sqlservicesource" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT id, service_name FROM services"></asp:SqlDataSource>
        <label> : نام سرویس</label>
        </div>
        <div class="panelwarning">
            <asp:Button runat="server" Height="40px" ID="btn_insert_items" CssClass="button" Text="ثبت" OnClick="btn_insert_items_OnClick"/>
            <asp:Button runat="server" Height="40px" ID="btn_edit_item" CssClass="button" Visible="False" Text="ویرایش" OnClick="btn_edit_item_OnClick" />
            <asp:TextBox runat="server" ID="txt_item_count" Width="70px" CssClass="form-control"></asp:TextBox>
            <label> : تعداد</label>
            &nbsp;&nbsp;
            <asp:DropDownList runat="server" ID="drp_items" CssClass="form-control" DataSourceID="sql_itemsource" DataTextField="item_name" DataValueField="item_id"/>
            <asp:SqlDataSource ID="sql_itemsource" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT item_name, item_id FROM items where item_id != 0"></asp:SqlDataSource>
            <label> : نام آیتم</label>
        </div>
        <div class="panelwarning">
            <asp:GridView runat="server" CssClass="table table-bordered" ID="grid_service_items"
                 Width="40%" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد" DataSourceID="sqlserviceitems" DataKeyNames="id,item,count" OnRowCommand="grid_service_items_RowCommand">
                <Columns>
                    <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name" />
                    <asp:BoundField DataField="count" HeaderText="تعداد" SortExpression="count" />
                    <asp:ButtonField Text="ویرایش" CommandName="edit_item">
                        <ControlStyle ForeColor="#0066FF" />
                    </asp:ButtonField>
                    <asp:ButtonField Text="حذف" CommandName="delete_item">
                        <ControlStyle ForeColor="red" />
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlserviceitems" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT items.item_name, service_items.count, service_items.service_id, service_items.id, service_items.item FROM items INNER JOIN service_items ON items.item_id = service_items.item"></asp:SqlDataSource>
        </div>
    </asp:Panel>
</asp:Content>

