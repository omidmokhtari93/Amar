<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="carton.aspx.cs" Inherits="bastebandi_carton" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:HiddenField runat="server" ID="cartonID"/>
    <style>
        body{ font-family: myfont;}
        .table {
            font-size: 11pt;
        }
        .table td { padding: 2px !important;}
    </style>
    <div class="panel panel-primary">
        <div class="panel-heading">ثبت کارتن</div>
        <div class="panel-body">
            <div class="row" style="margin: 0; padding: 10px; text-align: right;">
                <div class="col-sm-5">
                    <label>ملاحظات</label>
                    <asp:TextBox runat="server" ID="txtmem" dir="rtl" Width="100%" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-2">
                    <label>نقطه سفارش</label>
                    <asp:TextBox runat="server" ID="txtNS" Width="100%" CssClass="form-control text-center"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <label>شرح</label>
                    <asp:TextBox runat="server" ID="txtName" dir="rtl" Width="100%" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <asp:Button runat="server" ID="btnSabt" OnClick="btnSabt_OnClick" CssClass="button" Text="ثبت"/>
        </div>
        <div class="panel-footer">
            <div id="pnldelete" runat="server" Visible="False">
                <div style="padding: 15px;">
                    <div style="border: 2px solid red; display: inline-block; padding: 10px; border-radius: 5px;">
                        <label style="display: block;">کارتن حذف خواهد شد. آیا مطمئن هستید؟</label>
                        <asp:Button runat="server" ID="btnYes" CssClass="button" Text="بله" OnClick="btnYes_OnClick"/>
                        <asp:Button runat="server" ID="btnNo" CssClass="button" Text="خیر" OnClick="btnNo_OnClick"/>
                    </div>
                </div>
            </div>
            <br/>
            <div style="width: 500px; margin: auto;">
                <asp:Panel style="width: 100%; padding-bottom: 5px;" runat="server" DefaultButton="btnSearch">
                    <asp:Button runat="server" CssClass="form-control" Text="جستجو" ID="btnSearch" OnClick="btnSearch_OnClick"/>
                    <asp:TextBox runat="server" placeholder="جستجو" Width="80%" CssClass="form-control"  dir="rtl" ID="txtSearch"></asp:TextBox>
                </asp:Panel>
                <asp:GridView runat="server" ID="gridcarton" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="Sqlcarton" AllowPaging="True" OnRowCommand="gridcarton_OnRowCommand">
                    <Columns>
                        <asp:BoundField DataField="box" HeaderText="شرح" SortExpression="box" />
                        <asp:BoundField DataField="ns" HeaderText="نقطه سفارش" SortExpression="ns" />
                        <asp:BoundField DataField="mem" HeaderText="ملاحظات" SortExpression="mem" />
                        <asp:ButtonField CommandName="editcarton" Text="ویرایش">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                        <asp:ButtonField CommandName="deletecarton" Text="حذف">
                            <ControlStyle ForeColor="blue"></ControlStyle>
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
            </div>
            <asp:SqlDataSource ID="Sqlcarton" runat="server" ConnectionString="<%$ ConnectionStrings:bastebandi %>" SelectCommand="SELECT ID, box, mem, ns FROM Box where box is not null and ID &lt;&gt; 0 order by ID desc">
            </asp:SqlDataSource>
        </div>
    </div>
  
    <div id="edit" class="w3-modal">
        <div class="w3-modal-content" style="background-color: beige; display: inline-block;">
            <div class="w3-container">
                <span onclick="document.getElementById('edit').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                <label style="padding: 15px;">.::ویرایش کارتن::.</label>
                <div style="padding: 15px;">
                    <asp:Button runat="server" Text="ثبت" ID="btnEditCarton" CssClass="button" OnClick="btnEditCarton_OnClick"/>
                    <asp:TextBox runat="server" ID="txtEditmem" CssClass="form-control" dir="rtl" placeholder="ملاحظات"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txteditNS" CssClass="form-control text-center" placeholder="نقطه سفارش"/>
                    <asp:TextBox runat="server" ID="txtEditName" CssClass="form-control" dir="rtl" placeholder="شرح"/>
                </div>
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

