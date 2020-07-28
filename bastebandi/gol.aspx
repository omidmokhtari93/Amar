<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="gol.aspx.cs" Inherits="bastebandi_gol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .row input {
            width: 100%!important;
        }
    </style>
    <div id="golArea">
        <div class="panel panel-primary">
            <div class="panel-heading">.:: ثبت گل ::.</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddGolMolahez" placeholder="ملاحضات"></asp:TextBox>    
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddGolMoshtari" placeholder="مشتری"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddGolCode" placeholder="کد"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ClientIDMode="Static" dir="rtl" CssClass="form-control" ID="txtAddGol" placeholder="نام گل"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <asp:Button runat="server" ClientIDMode="Static" CssClass="button" Text="ثبت" ID="btnAddGolM" OnClick="btnAddGolM_OnClick"/>
            </div>
            <div class="panel-footer">
                <asp:Panel runat="server" DefaultButton="btnSearch">
                    <input type="text" runat="server" id="txtSearch" style="height: 30px; width: 100%;" placeholder="جستجو" class="form-control" dir="rtl"/>
                    <asp:Button runat="server" style="display: none;" ID="btnSearch" OnClick="btnSearch_OnClick"/>
                    <asp:GridView runat="server" ID="gridGol" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlGol" PageSize="15" OnPageIndexChanged="gridGol_OnPageIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="nam" HeaderText="نام گل" SortExpression="nam" />
                            <asp:BoundField DataField="cod" HeaderText="کد گل" SortExpression="cod" />
                            <asp:BoundField DataField="moshtari" HeaderText="مشتری" SortExpression="moshtari" />
                            <asp:BoundField DataField="mem" HeaderText="ملاحظات" SortExpression="mem" />
                            <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ویرایش" CancelText="لغو"/>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
                <asp:SqlDataSource ID="SqlGol" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, nam, cod, moshtari, mem FROM Gol" UpdateCommand="UPDATE Gol SET nam = @nam, cod = @cod, moshtari = @moshtari, mem = @mem WHERE (ID = @ID)">
                    <UpdateParameters>
                        <asp:Parameter Name="nam" />
                        <asp:Parameter Name="cod" />
                        <asp:Parameter Name="moshtari" />
                        <asp:Parameter Name="mem" />
                        <asp:Parameter Name="ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

