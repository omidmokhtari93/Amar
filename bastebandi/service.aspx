<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="bastebandi_service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:HiddenField runat="server" ID="ServiceId"/>
<asp:HiddenField runat="server" ID="itemId"/>
<style>
    .borderless {
        border: none;
        background-color: transparent;
        float: left;
        outline: none;
        font-family: myfont;
        direction: rtl;
        font-weight: 800;
        font-size: 12pt;
    }

    body { font-family: myfont; }

    .table { font-size: 11pt; }

    .table td {
        padding: 2px !important;
        vertical-align: middle !important;
    }

    #btnAddRizSerItem:hover { color: blue; }
</style>
<div class="panel panel-primary">
    <div class="panel-heading">ثبت سرویس</div>
    <div class="panel-body">
        <div class="row" style="padding: 5px; margin: 0; text-align: right;">
            <div class="col-sm-6">
                <div style="width: 100%; padding-right: 17px;">
                    <label>آیتم های سرویس</label>
                    <input type="text" dir="rtl" id="txtsearch" style="width: 100%;" placeholder="جستجو"/>
                </div>
                <div style="overflow-y: scroll; height: 410px;">
                    <asp:GridView runat="server" ShowHeader="False" ID="gridItems" ClientIDMode="Static" AutoGenerateColumns="False" CssClass="table table-bordered" Width="100%" DataSourceID="SqlItems" DataKeyNames="ID">
                        <Columns>
                            <asp:BoundField DataField="nam">
                                <ItemStyle Width="50%"></ItemStyle>
                            </asp:BoundField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:TextBox runat="server" Height="30px" ID="txtIC" CssClass="form-control text-center"></asp:TextBox>
                                </ItemTemplate>
                                <ItemStyle Width="50%"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlItems" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, nam FROM Item where nam is not null and ID &lt;&gt; 0"></asp:SqlDataSource>
            </div>
            <div class="col-sm-6">
                <label>نام</label>
                <asp:TextBox runat="server" ID="txtnam" dir="rtl" Width="100%" CssClass="form-control"></asp:TextBox>
                <label>کد</label>
                <asp:TextBox runat="server" ID="txtCod" Width="100%" CssClass="form-control text-center"></asp:TextBox>
                <label>وزن</label>
                <asp:TextBox runat="server" ID="txtVazn" Width="100%" CssClass="form-control text-center"></asp:TextBox>
                <label>ملاحظات</label>
                <asp:TextBox runat="server" dir="rtl" ID="txtmem" Width="100%" CssClass="form-control"></asp:TextBox>
                <br/>
                <br/>
                <label style="display: block; background-color: rgb(204, 204, 204); padding-right: 10px;">بسته بندی</label>
                <label>کارتن 1</label>
                <asp:DropDownList runat="server" ID="drBox1" Width="100%" AppendDataBoundItems="True" CssClass="form-control" DataSourceID="SqlBox" DataTextField="box" DataValueField="ID">
                    <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                </asp:DropDownList>
                <label>کارتن 2</label>
                <asp:DropDownList runat="server" ID="drBox2" Width="100%" CssClass="form-control" AppendDataBoundItems="True" DataSourceID="SqlBox" DataTextField="box" DataValueField="ID">
                    <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlBox" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, box FROM Box where box is not null and ID &lt;&gt; 0"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    <div class="panel-footer">
        <asp:Button runat="server" CssClass="button" Text="ثبت" ID="btnSabt" OnClick="btnSabt_OnClick"/>
    </div>
    <div class="panel-footer">
        <div id="pnldeleteservice" runat="server" Visible="False">
            <div style="padding: 15px;">
                <div style="border: 2px solid red; display: inline-block; padding: 10px; border-radius: 5px;">
                    <label style="display: block;">این سرویس با تمامی آیتم های آن حذف خواهد شد. آیا مطمئن هستید؟</label>
                    <asp:Button runat="server" ID="btnYes" CssClass="button" Text="بله" OnClick="btnYes_OnClick"/>
                    <asp:Button runat="server" ID="btnNoDeleteService" CssClass="button" Text="خیر" OnClick="btnNoDeleteService_OnClick"/>
                </div>
            </div>
        </div>

        <div id="pnldeleteSerItem" runat="server" Visible="False">
            <div style="padding: 15px;">
                <div style="border: 2px solid red; display: inline-block; padding: 10px; border-radius: 5px;">
                    <label style="display: block;">آیتم از لیست این سرویس حذف خواهد شد. آیا مطمئن هستید؟</label>
                    <asp:Button runat="server" ID="btnYesItesm" CssClass="button" Text="بله" OnClick="btnYesItesm_OnClick"/>
                    <asp:Button runat="server" ID="btnNoDeleteRizSer" CssClass="button" Text="خیر" OnClick="btnNoDeleteRizSer_OnClick"/>
                </div>
            </div>
        </div>
        <div class="row" style="margin: 0;">
            <div class="col-sm-6">
                <label style="padding: 10px; background-color: rgb(223, 223, 223); width: 100%;">
                    آیتم های سرویس
                    <button id="btnAddRizSerItem" class="glyphicon glyphicon-plus borderless" type="button"
                            onclick="document.getElementById('AddRizSerItem').style.display = 'block'">
                        افزودن آیتم
                    </button>
                </label>
                <asp:GridView runat="server" ID="gridRizService" ClientIDMode="Static" CssClass="table table-bordered" DataKeyNames="idI" AutoGenerateColumns="False" DataSourceID="SqlRizServ" OnRowCommand="gridRizService_OnRowCommand">
                    <Columns>
                        <asp:BoundField DataField="nam" HeaderText="آیتم" ReadOnly="True" SortExpression="nam"/>
                        <asp:BoundField DataField="ted" HeaderText="تعداد" SortExpression="ted"/>
                        <asp:ButtonField CommandName="editRiz" Text="ویرایش">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                        <asp:ButtonField CommandName="deleteRiz" Text="حذف">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlRizServ" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT Item.nam, RizSer.ted, RizSer.idS, RizSer.idI FROM RizSer INNER JOIN Item ON RizSer.idI = Item.ID WHERE (Item.ID &lt;&gt; 0) AND (RizSer.idS = @ids)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ServiceId" Name="ids" PropertyName="Value"/>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="col-sm-6">
                <label style="padding: 10px; background-color: rgb(223, 223, 223); width: 100%;">سرویس ها</label>
                <asp:Panel style="width: 100%; padding-bottom: 5px;" runat="server" DefaultButton="btnSearch">
                    <asp:Button runat="server" CssClass="form-control" Text="جستجو" ID="btnSearch" OnClick="btnSearch_OnClick"/>
                    <asp:TextBox runat="server" placeholder="جستجو" Width="80%" CssClass="form-control" dir="rtl" ID="txtSearchService"></asp:TextBox>
                </asp:Panel>
                <asp:GridView runat="server" CssClass="table table-bordered" ID="gridService" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlService" OnRowCommand="gridService_OnRowCommand" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="ID"/>
                        <asp:BoundField DataField="nam" HeaderText="نام سرویس" SortExpression="nam"/>
                        <asp:BoundField DataField="vazn" HeaderText="وزن" SortExpression="vazn"/>
                        <asp:ButtonField CommandName="showriz" Text="نمایش آیتم ها">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                        <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ویرایش" CancelText="لغو">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:CommandField>
                        <asp:ButtonField CommandName="deleteService" Text="حذف">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlService" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, nam , vazn FROM Service WHERE (ID &lt;&gt; 0) AND (nam IS NOT NULL) order by ID desc" UpdateCommand="UPDATE Service SET nam = @nam , vazn=@vazn WHERE (ID = @ID)">
                    <UpdateParameters>
                        <asp:Parameter Name="nam"/>
                        <asp:Parameter Name="ID"/>
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>

<div id="addItem" class="w3-modal">
    <div class="w3-modal-content" style="background-color: beige; display: inline-block;">
        <div class="w3-container">
            <span onclick="document.getElementById('addItem').style.display = 'none'" class="w3-button w3-display-topright">&times;</span>
            <label style="padding: 15px;">.::ویرایش آیتم سرویس::.</label>
            <div style="padding: 15px;">
                <asp:Button runat="server" Text="ثبت" ID="btnSabtSerItem" CssClass="button" OnClick="btnSabtSerItem_OnClick"/>
                <asp:TextBox runat="server" ID="txtSerItemCount" CssClass="form-control text-center" dir="rtl" placeholder="تعداد"></asp:TextBox>
                <asp:DropDownList runat="server" ID="drSerItem" CssClass="form-control" DataTextField="nam" DataValueField="ID" DataSourceID="SqlItemsSer"/>
                <asp:SqlDataSource ID="SqlItemsSer" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, nam FROM Item WHERE (ID &lt;&gt; 0) AND (nam IS NOT NULL)"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>

<div id="AddRizSerItem" class="w3-modal">
    <div class="w3-modal-content" style="background-color: beige; display: inline-block;">
        <div class="w3-container">
            <span onclick="document.getElementById('AddRizSerItem').style.display = 'none'" class="w3-button w3-display-topright">&times;</span>
            <label style="padding: 15px;">.::اضافه کردن آیتم::.</label>
            <div style="padding: 15px;">
                <asp:Button runat="server" Text="ثبت" ID="btnAddRizSer" CssClass="button" OnClick="btnAddRizSer_OnClick"/>
                <asp:TextBox runat="server" ID="txtAddrizSer" CssClass="form-control text-center" dir="rtl" placeholder="تعداد"></asp:TextBox>
                <asp:DropDownList runat="server" ID="drAddRizSer" CssClass="form-control" DataTextField="nam" DataValueField="ID" DataSourceID="SqlItemsSer"/>
            </div>
        </div>
    </div>
</div>


<script>
    $('#txtsearch').keyup(function() {
        var val = $(this).val().toUpperCase();
        $('#gridItems> tbody > tr').each(function(index, element) {
            if ($(this).text().toUpperCase().indexOf(val) < 0)
                $(this).hide();
            else
                $(this).show();
        });
    });

    function error() {
        $.notify("!!لطفا فیلد خالی را پر کنید", { className: 'error', globalPosition: 'top left' });
    }

    function success() {
        $.notify("!!با موفقیت انجام شد", { className: 'success', globalPosition: 'top left' });
    }

    $(document).ready(function() {
        if (!$('#gridRizService tr').length) {
            $('#btnAddRizSerItem').attr('disabled', 'disabled');
            $('#btnAddRizSerItem').css('cursor', 'not-allowed');
        } else {
            $('#btnAddRizSerItem').removeAttr('disabled');
            $('#btnAddRizSerItem').css('cursor', 'pointer');
        }
    });
</script>
</asp:Content>

