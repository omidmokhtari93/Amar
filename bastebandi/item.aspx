<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="item.aspx.cs" Inherits="bastebandi_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:HiddenField runat="server" ID="ItemID"/>
    <style>
        body{ font-family: myfont;}
        .table {
            font-size: 11pt;
        }
        .table td { padding: 2px !important;}
        input[type="checkbox"] {
            vertical-align: middle;
            margin: 0;
            margin-left: 5px;
        }
    </style>
    <div class="panel panel-primary">
        <div class="panel-heading">ثبت آیتم</div>
        <div class="panel-body">
            <div class="row" style="padding: 5px; margin: 0; text-align: right;">
                <div class="col-sm-3">
                    <label>تعداد در کارتن کوچک</label>
                    <asp:TextBox runat="server" type="number" ID="txtAddtedadCH" CssClass="form-control text-center" Width="100%"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <label>کارتن کوچک</label>
                    <asp:DropDownList runat="server" ID="drAddCHkartoon" AppendDataBoundItems="True" CssClass="form-control" Width="100%" DataSourceID="SqlBox" DataTextField="box" DataValueField="ID">
                        <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlBox" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, box FROM Box where ID<>0 and box is not null"></asp:SqlDataSource>
                </div>
                <div class="col-sm-3">
                    <label></label>
                    <div style="height: 40px; vertical-align: middle; padding-top: 15px;border-bottom: 1px solid darkgray;">
                        <asp:CheckBox runat="server" TextAlign="Left" ID="chkAddDarb" Text="با درب" style="vertical-align: middle;" Width="100%"></asp:CheckBox>
                    </div>
                </div>
                <div class="col-sm-3">
                    <label>نام آیتم</label>
                    <asp:TextBox dir="rtl" ID="txtAdditemName" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="padding: 5px; margin: 0;text-align: right;">
                <div class="col-sm-3">
                    <label>کد سرویس</label>
                    <asp:DropDownList runat="server" ID="drAddServieCod" CssClass="form-control" dir="rtl" AppendDataBoundItems="True" Width="100%" DataSourceID="SqlServices" DataTextField="nam" DataValueField="ID">
                        <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlServices" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, nam FROM Service where nam is not null AND ID <> 0 order by nam"></asp:SqlDataSource>
                </div>
                <div class="col-sm-3">
                    <label></label>
                    <div style="height: 40px; vertical-align: middle; padding-top: 15px;border-bottom: 1px solid darkgray;">
                        <asp:CheckBox runat="server" TextAlign="Left" ID="chkAddIsService" Text="سرویس" style="vertical-align: middle;" Width="100%"></asp:CheckBox>
                    </div>
                </div>
                <div class="col-sm-3">
                    <label>تعداد در کارتن مادر</label>
                    <asp:TextBox runat="server" ID="txtAddTedadM" type="number" CssClass="form-control text-center" Width="100%"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <label>کارتن مادر</label>
                    <asp:DropDownList runat="server" ID="drAddMkartoon" AppendDataBoundItems="True" CssClass="form-control" Width="100%" DataSourceID="SqlBox" DataTextField="box" DataValueField="ID">
                        <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row" style="padding: 5px; margin: 0; text-align: right;">
                <div class="col-sm-3">
                    <label>ملاحظات</label>
                    <asp:TextBox dir="rtl" runat="server" ID="txtAddmem" CssClass="form-control" Width="100%"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <label>وزن تقریبی</label>
                    <asp:TextBox runat="server" ID="txtAddVazn" CssClass="form-control text-center" Width="100%"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <label>تولید</label>
                    <asp:DropDownList runat="server" ID="drAddTolid" CssClass="form-control" Width="100%">
                        <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                        <asp:ListItem Value="1">پرس</asp:ListItem>
                        <asp:ListItem Value="2">ریخته گری</asp:ListItem>
                        <asp:ListItem Value="3">فرمینگ</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-3">
                    <label>تعداد در سرویس</label>
                    <asp:TextBox runat="server" type="number" ID="txtAddServiceTedad" CssClass="form-control text-center" Width="100%"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <asp:Button runat="server" CssClass="button" ID="btnSabtItem" Text="ثبت" OnClick="btnSabtItem_OnClick"/>
            <asp:Button runat="server" CssClass="button" ID="btnEdit" Text="ویرایش" Visible="False" OnClick="btnEdit_OnClick"/>
            <asp:Button runat="server" CssClass="button" ID="btnCancel" Text="انصراف" Visible="False" OnClick="btnCancel_OnClick"/>
        </div>
        <div class="panel-footer">
            <div id="delete" runat="server" Visible="False">
                <div style="padding: 15px;">
                    <div style="border: 2px solid red; display: inline-block; padding: 10px; border-radius: 5px;">
                        <label style="display: block;">این آیتم حذف حذف خواهد شد. آیا مطمئن هستید؟</label>
                        <asp:Button runat="server" ID="btnYes" CssClass="button" Text="بله" OnClick="btnYes_OnClick"/>
                        <asp:Button runat="server" ID="btnNo" CssClass="button" Text="خیر"/>
                    </div>
                </div>
            </div>
            <asp:Panel runat="server" DefaultButton="btnSearch">
                <input type="text" runat="server" id="txtSearch" style="height: 30px; width: 100%;" placeholder="جستجو" class="form-control" dir="rtl"/>
                <asp:Button runat="server" style="display: none;" ID="btnSearch" OnClick="btnSearch_OnClick"/>
                <asp:GridView runat="server" ID="gridItems" ClientIDMode="Static" CssClass="table table-bordered" AutoGenerateColumns="False"
                    DataSourceID="SqlItems" AllowPaging="True" DataKeyNames="ID" OnRowCommand="gridItems_OnRowCommand" OnPageIndexChanged="gridItems_OnPageIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="nam" HeaderText="نام آیتم" SortExpression="nam" />
                        <asp:CheckBoxField DataField="darb" HeaderText="درب" SortExpression="darb" />
                        <asp:BoundField DataField="ChildBox" HeaderText="جعبه کوچک" SortExpression="ChildBox" />
                        <asp:BoundField DataField="TBoxCh" HeaderText="تعداد در جعبه کوچک" SortExpression="TBoxCh" />
                        <asp:BoundField DataField="MBox" HeaderText="جعبه بزرگ" SortExpression="MBox" />
                        <asp:BoundField DataField="TDK" HeaderText="تعداد در جعبه بزرگ" SortExpression="TDK" />
                        <asp:CheckBoxField DataField="ser" HeaderText="سرویس" SortExpression="ser" />
                        <asp:BoundField DataField="ServiceName" HeaderText="نام سرویس" SortExpression="ServiceName" />
                        <asp:BoundField DataField="tds" HeaderText="تعداد در سرویس" SortExpression="tds" />
                        <asp:BoundField DataField="ghesmat" HeaderText="بخش تولید" ReadOnly="True" SortExpression="ghesmat" />
                        <asp:BoundField DataField="vazn" HeaderText="وزن" SortExpression="vazn" />
                        <asp:BoundField DataField="mem" HeaderText="ملاحظات" SortExpression="mem" />
                        <asp:ButtonField CommandName="editItem" Text="ویرایش">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                        <asp:ButtonField CommandName="deleteItem" Text="حذف">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlItems" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="
        SELECT Item.nam, Item.darb, Box.box AS ChildBox,
Item.TBoxCh, Box_1.box AS MBox, Item.TDK, Item.ser, Service.nam AS ServiceName, Item.tds,
CASE WHEN Item.ghes = 1 THEN N'پرس' WHEN Item.ghes = 2 THEN N'ریخته گری' WHEN Item.ghes = 3 THEN N'فرمینگ' 
END AS ghesmat, Item.vazn, Item.mem, Item.ID FROM Item left JOIN Box ON Item.BoxChCode = Box.ID 
left JOIN Box AS Box_1 ON Item.BoxMCode = Box_1.ID left JOIN Service ON Item.idser = Service.ID 
WHERE (Item.ID <> 0) order by Item.ID desc"></asp:SqlDataSource>
    <script>
        function error() {
            $.notify("!!لطفا فیلد خالی را پر کنید", { className: 'error', globalPosition: 'top left' });
        }

        function success() {
            $.notify("!!با موفقیت انجام شد", { className: 'success', globalPosition: 'top left' });
        }
    </script>
</asp:Content>

