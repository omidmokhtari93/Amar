<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="moshtari.aspx.cs" Inherits="bastebandi_moshtari" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:HiddenField runat="server" ID="moshtartiID"/>
    <style>
        body{ font-family: myfont;}
        .table {
            font-size: 11pt;
        }
        .table td { padding: 2px !important;}
    </style>
    <div class="panel panel-primary">
        <div class="panel-heading">ثبت مشتری</div>
        <div class="panel-body">
            <div class="row" style="margin: 0; padding: 10px; text-align: right;">
                <div class="col-sm-3">
                    <label>ملاحظات</label>
                    <asp:TextBox runat="server" ID="txtmem" dir="rtl" Width="100%" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <label>آدرس</label>
                    <asp:TextBox runat="server" ID="txtAdd" Width="100%" CssClass="form-control text-center"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <label>کد مشتری</label>
                    <asp:TextBox runat="server" ID="txtcod" dir="rtl" Width="100%" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <label>نام</label>
                    <asp:TextBox runat="server" ID="txtnam" dir="rtl" Width="100%" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <asp:Button runat="server" ID="btnSabt" CssClass="button" Text="ثبت" OnClick="btnSabt_OnClick"/>
        </div>
        <div class="panel-footer">
            <div id="pnldeletecus" runat="server" Visible="False">
                <div style="padding: 15px;">
                    <div style="border: 2px solid red; display: inline-block; padding: 10px; border-radius: 5px;">
                        <label style="display: block;">مشتری حذف خواهد شد. آیا مطمئن هستید؟</label>
                        <asp:Button runat="server" ID="btnYes" CssClass="button" Text="بله" OnClick="btnYes_OnClick"/>
                        <asp:Button runat="server" ID="btnNo" CssClass="button" Text="خیر" OnClick="btnNo_OnClick"/>
                    </div>
                </div>   
            </div>
            <br/>
            <div style="width: 700px; margin: auto;">
                <asp:GridView runat="server" ID="gridmosh" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="Sqlmosh" OnRowCommand="gridmosh_OnRowCommand">
                    <Columns>
                        <asp:BoundField DataField="nam" HeaderText="نام مشتری" SortExpression="nam" />
                        <asp:BoundField DataField="cod" HeaderText="کد مشتری" SortExpression="cod" />
                        <asp:BoundField DataField="Addr" HeaderText="آدرس" SortExpression="Addr" />
                        <asp:BoundField DataField="mem" HeaderText="ملاحظات" SortExpression="mem" />
                        <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ویرایش" CancelText="لغو">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:CommandField>
                        <asp:ButtonField CommandName="deletemosh" Text="حذف">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="Sqlmosh" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, nam, cod, Addr, mem FROM Moshtari WHERE (ID &lt;&gt; 0) AND (nam IS NOT NULL)" UpdateCommand="UPDATE Moshtari SET nam = @nam, cod = @cod, Addr = @Addr, mem = @mem WHERE (ID = @ID)">
                    <UpdateParameters>
                        <asp:Parameter Name="nam" />
                        <asp:Parameter Name="cod" />
                        <asp:Parameter Name="Addr" />
                        <asp:Parameter Name="mem" />
                        <asp:Parameter Name="ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    <script>
        function error() {
            $.notify("!!لطفا فیلد خالی را پر کنید", { className: 'error', globalPosition: 'top left' });
        }

        function success() {
            $.notify("!!با موفقیت ثبت شد", { className: 'success', globalPosition: 'top left' });
        }
    </script>
</asp:Content>

