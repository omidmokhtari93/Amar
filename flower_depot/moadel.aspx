<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="moadel.aspx.cs" Inherits="flower_depot_moadel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <style>
        html *{ font-family: myfont;}
        input[type="checkbox"] {margin-top: 38px;width: 20px;height: 20px;}
    </style>
    
    
    <div class="panel panel-primary">
        <div class="panel-heading">دپوی بسته بندی</div>
        <div class="panel-body">
            <div class="row" style="margin: 0; text-align: right; direction: rtl;">
                <div class="col-lg-2">
                    <asp:Button runat="server" Text="ثبت" ID="btnsabt" style="margin-top: 28px;" CssClass="button" OnClick="btnsabt_OnClick"/>
                    <asp:Button runat="server" Text="ویرایش" Visible="False" ID="btnEdit" style="margin-top: 28px;" CssClass="button" OnClick="btnEdit_OnClick"/>
                    <asp:Button runat="server" Text="انصراف" ID="btnCancel" Visible="False" style="margin-top: 28px;" CssClass="button" OnClick="btnCancel_OnClick"/>
                </div>
                <div class="col-lg-5">
                    <label style="display: block;">آیتم انبار گل</label>
                    <asp:DropDownList runat="server" ID="drkhitem" CssClass="form-control" Width="100%" DataSourceID="sqlKhitem" DataTextField="item_name" DataValueField="item_id"/>
                    <asp:SqlDataSource ID="sqlKhitem" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT item_id, item_name FROM flower_depot.dbo.items where item_id <> 0 and item_id not in (SELECT gitem FROM flower_depot.dbo.moadel)"></asp:SqlDataSource>
                </div>
                <div class="col-lg-5">
                    <label style="display: block;">آیتم بسته بندی</label>
                    <asp:DropDownList runat="server" ID="drbitem" CssClass="form-control" Width="100%" DataSourceID="sqlBitem" DataTextField="nam" DataValueField="ID"/>
                    <asp:SqlDataSource ID="sqlBitem" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, nam FROM bastebandi.dbo.Item WHERE (ID <> 0) and (nam is not null) and ID not in (select bitem from flower_depot.dbo.moadel) order by nam"></asp:SqlDataSource>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <div style="display: inline-block; padding: 10px; width: 700px;">
                <input type="text" id="txtsearch" style="width: 100%; direction: rtl; font-weight: 300;" placeholder="جستجو"/>
                <asp:GridView runat="server" ID="gridMoadel" Width="100%" ClientIDMode="Static" DataKeyNames="id"
                    CssClass="table table-bordered" AutoGenerateColumns="False" DataSourceID="SqlMoadel" OnRowCommand="gridMoadel_OnRowCommand">
                    <Columns>
                        <asp:BoundField DataField="radif" HeaderText="ردیف" SortExpression="radif" />
                        <asp:BoundField DataField="bitem" HeaderText="آیتم بسته بندی" SortExpression="nam" />
                        <asp:BoundField DataField="fitem" HeaderText="آیتم خط" SortExpression="item_name" />
                        <asp:ButtonField CommandName="ed" Text="ویرایش">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlMoadel" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="
SELECT row_number()over(order by (select null)) as radif,
flower_depot.dbo.moadel.id, flower_depot.dbo.items.item_name as fitem
,bastebandi.dbo.Item.nam as bitem FROM flower_depot.dbo.moadel 
INNER JOIN flower_depot.dbo.items ON flower_depot.dbo.moadel.gitem = flower_depot.dbo.items.item_id
INNER JOIN bastebandi.dbo.Item ON flower_depot.dbo.moadel.bitem = bastebandi.dbo.Item.ID"></asp:SqlDataSource>
            </div>
        </div>
    </div>
   
    <script>
        $('#txtsearch').keyup(function () {
            var val = $(this).val().toUpperCase();
            $('#gridMoadel> tbody > tr').each(function (index, element) {
                if ($(this).text().toUpperCase().indexOf(val) < 0)
                    $(this).hide();
                else
                    $(this).show();
            });
        });
    </script>
</asp:Content>

