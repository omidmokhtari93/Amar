<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="moadel.aspx.cs" Inherits="bastebandi_moadel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                <div class="col-lg-3">
                    <div id="pnldarb" style="display: none;">
                        <label style="display: block;">انتخاب درب</label>
                        <asp:DropDownList runat="server" ID="drdarb" CssClass="form-control" AppendDataBoundItems="True" ClientIDMode="Static" Width="100%" DataSourceID="Sqldarb" DataTextField="item_name" DataValueField="id">
                            <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Sqldarb" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT id, item_name FROM item WHERE (item_name LIKE '%درب%') order by item_name"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="col-lg-1">
                    <input type="checkbox" id="chdarb" runat="server" ClientIDMode="Static"/>
                    <label style="vertical-align: middle; margin-bottom: 15px;">دارای درب </label>
                    <script>
                        $('#chdarb').click(function () {
                            $("#pnldarb").toggle(this.checked);
                        });
                    </script>
                </div>
                <div class="col-lg-3">
                    <label style="display: block;">آیتم خط</label>
                    <asp:DropDownList runat="server" ID="drkhitem" CssClass="form-control" Width="100%" DataSourceID="sqlKhitem" DataTextField="item_name" DataValueField="id"/>
                    <asp:SqlDataSource ID="sqlKhitem" runat="server" ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT id, item_name FROM taghdis_amar.dbo.item where id not in (SELECT khitem FROM bastebandi.dbo.cItems) and item_name not LIKE '%درب%' order by item_name"></asp:SqlDataSource>
                </div>
                <div class="col-lg-3">
                    <label style="display: block;">آیتم بسته بندی</label>
                    <asp:DropDownList runat="server" ID="drbitem" CssClass="form-control" Width="100%" DataSourceID="sqlBitem" DataTextField="nam" DataValueField="ID"/>
                    <asp:SqlDataSource ID="sqlBitem" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, nam FROM Item WHERE (ID <> 0)and (nam is not null) and ID not in (select bitem from cItems) order by nam"></asp:SqlDataSource>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <div style="display: inline-block; padding: 10px; width: 700px;">
                <input type="text" id="txtsearch" style="width: 100%; direction: rtl; font-weight: 300;" placeholder="جستجو"/>
                <asp:GridView runat="server" ID="gridMoadel" Width="100%" DataKeyNames="cid" ClientIDMode="Static"  CssClass="table table-bordered" AutoGenerateColumns="False" DataSourceID="SqlMoadel" OnRowCommand="gridMoadel_OnRowCommand">
                    <Columns>
                        <asp:BoundField DataField="radif" HeaderText="ردیف" SortExpression="radif" />
                        <asp:BoundField DataField="nam" HeaderText="آیتم بسته بندی" SortExpression="nam" />
                        <asp:BoundField DataField="item_name" HeaderText="آیتم خط" SortExpression="item_name" />
                        <asp:BoundField DataField="darb" HeaderText="درب" ReadOnly="True" SortExpression="darb" />
                        <asp:BoundField DataField="nameDarb" HeaderText="آیتم" ReadOnly="True" SortExpression="nameDarb" />
                        <asp:ButtonField CommandName="ed" Text="ویرایش">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlMoadel" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="
                    SELECT ROW_NUMBER()over(order by bastebandi.dbo.cItems.id) as radif,Item.nam, i.item_name, 
                    CASE WHEN door = 1 THEN N'دارد' ELSE N'ندارد' END AS darb, CASE WHEN iddoor &lt;&gt; 0 THEN
                    j.item_name ELSE '----' END AS nameDarb, cItems.id AS cid FROM cItems INNER JOIN Item ON 
                    cItems.bitem = Item.ID INNER JOIN taghdis_amar.dbo.item AS i ON cItems.khitem = i.id LEFT OUTER JOIN 
                    taghdis_amar.dbo.item AS j ON cItems.iddoor = j.id"></asp:SqlDataSource>
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

        function showDarb() {
            if (document.getElementById('chdarb').checked) {
                $("#pnldarb").show();
            }
        }
    </script>
</asp:Content>

