<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="EditService.aspx.cs" Inherits="bastebandi_EditService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        input[type="checkbox"] {
            margin: 0;padding: 0;vertical-align: middle;width: 15px;height: 15px;
        }
    </style>
    <div class="panel panel-primary">
        <div class="panel-heading">سرویس های کمتر از 30 پارچه</div>
        <div class="panel-body">
            <asp:GridView runat="server" style="margin: auto;" Width="350px" ID="gridSer" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlSer">
                <Columns>
                    <asp:BoundField DataField="nam" ReadOnly="True" HeaderText="نام سرویس" SortExpression="nam" />
                    <asp:CheckBoxField DataField="low30" HeaderText="" SortExpression="low30" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" CancelText="لغو" UpdateText="ویرایش" >
                        <ControlStyle ForeColor="blue"></ControlStyle>
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlSer" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, nam, low30 FROM Item WHERE (ser = 1)" UpdateCommand="UPDATE Item SET low30 = @low30 WHERE (ID = @ID)">
                <UpdateParameters>
                    <asp:Parameter Name="low30" />
                    <asp:Parameter Name="ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

