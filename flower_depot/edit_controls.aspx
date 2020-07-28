<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/MasterPage.master" AutoEventWireup="true" CodeFile="edit_controls.aspx.cs" Inherits="edit_controls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <div class="headerstyle">
        <style>
            .rbl input[type="radio"] {
                vertical-align: middle;
                margin-left: 6px;
            }
           .search {
                font-family: myfont;
                font-weight: 800;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                text-align: right;
                font-size: 16px;
                background-color: white;
                background-image: url('Images/Search_Dark.png');
                background-size: 15px;
                background-position: right 10px top 10px;
                background-repeat: no-repeat;
                padding: 5px 35px 5px 5px;
                -webkit-transition: width 0.4s ease-in-out;
                transition: width .4s ease-in-out;
                }
        </style>
        <div class="panelwarning"><label>.:: انتخاب مورد ویرایش ::.</label></div>
        <asp:RadioButtonList RepeatDirection="Horizontal" dir="rtl" CssClass="rbl" ID="rbl_choose" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_choose_SelectedIndexChanged">
            <asp:ListItem Value="0">آیتم</asp:ListItem>
            <asp:ListItem Value="1">مشتری</asp:ListItem>
            <asp:ListItem Value="2">ابعاد</asp:ListItem>
            <asp:ListItem Value="3">رنگ</asp:ListItem>
            <asp:ListItem Value="4">نوع رنگ</asp:ListItem>
            <asp:ListItem Value="5">قالب</asp:ListItem>
            <asp:ListItem Value="6">شرکت سازنده</asp:ListItem>
            <asp:ListItem Value="7">نوع سفارش</asp:ListItem>
        </asp:RadioButtonList>
    </div>

    <asp:Panel class="panelwarning" ID="pnl_item" Visible="False" runat="server">
    <div class="headerstyle" style="margin-bottom: 10px;"><label>.:: ثبت آیتم ::.</label></div>
        <div class="panelwarning" style="margin-top: 0; margin-bottom: 10px; padding: 0; margin-bottom: 3px;"><label class="label label-warning" style="font-size: 10pt; color: black;">*** قبل از ثبت آیتم توسط ابزار جستجوی زیر نام آیتم را جستجو کنید تا از ثبت آیتم های تکراری جلوگیری شود ***</label></div>
        <div class="panelwarning" style="margin-top: 0; margin-bottom: 10px; padding: 0; margin-bottom: 3px;"><label class="label label-warning" style="font-size: 10pt; color: black;">*** با ویرایش در این قسمت آیتم در کل برنامه ویرایش می شود ***</label></div>
        <div style="width: 100%; margin: 5px;">
            <asp:TextBox ID="txtsearch" CssClass="search" type="text" dir="rtl" Visible="True" placeholder="جستجو" runat="server"/>
        </div>
    <asp:Button runat="server" ID="btn_item" Text="ثبت" CssClass="button" OnClick="btn_item_OnClick"/>
        <asp:TextBox runat="server" dir="rtl" ID="txt_item_name"  CssClass="form-control"></asp:TextBox>
        <label> : نام آیتم</label>
        <div class="gridstyle panelwarning">
            <asp:GridView runat="server" Width="500px" CssClass="table table-bordered" ID="grid_item" AutoGenerateColumns="False" DataKeyNames="item_id" DataSourceID="items">
                <Columns>
                    <asp:BoundField DataField="item_id" HeaderText="item_id" Visible="False" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
                    <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                        <ControlStyle ForeColor="#0066FF" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="items" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT item_id, item_name FROM items WHERE (item_id &lt;&gt; 0) order by item_name" UpdateCommand="UPDATE items SET item_name = @item_name WHERE (item_id = @item_id)">
                <UpdateParameters>
                    <asp:Parameter Name="item_name" />
                    <asp:Parameter Name="item_id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Panel>

    <asp:Panel class="panelwarning" ID="pnl_color" Visible="False" runat="server">
        <div class="headerstyle" style="margin-bottom: 10px;"><label>.:: ثبت رنگ ::.</label></div>
        <asp:Button runat="server" ID="btn_color" Text="ثبت" CssClass="button" OnClick="btn_color_OnClick"/>
        <asp:TextBox runat="server" dir="rtl" ID="txt_color" CssClass="form-control"></asp:TextBox>
        <label> : رنگ</label>
        <div class="gridstyle panelwarning">
            <asp:GridView runat="server" Width="500px" CssClass="table table-bordered" ID="grid_color" AutoGenerateColumns="False" DataKeyNames="flowcolor_id" DataSourceID="color">
                <Columns>
                    <asp:BoundField DataField="flowcolor_id" HeaderText="flowcolor_id" Visible="False" InsertVisible="False" ReadOnly="True" SortExpression="flowcolor_id" />
                    <asp:BoundField DataField="flow_color" HeaderText="رنگ" SortExpression="flow_color" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                        <ControlStyle ForeColor="#0066FF" />
                    </asp:CommandField>                  </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="color" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [flowcolor_id], [flow_color] FROM [flower_colors]
order by flow_color" UpdateCommand="UPDATE flower_colors SET flow_color = @flow_color WHERE (flowcolor_id = @flowcolor_id)">
                <UpdateParameters>
                    <asp:Parameter Name="flow_color" />
                    <asp:Parameter Name="flowcolor_id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Panel>
    
    <asp:Panel class="panelwarning" ID="pnl_colortype" Visible="False" runat="server">
        <div class="headerstyle" style="margin-bottom: 10px;"><label>.:: ثبت نوع رنگ ::.</label></div>
        <asp:Button runat="server" ID="btn_cltype" Text="ثبت" CssClass="button" OnClick="btn_cltype_OnClick"/>
        <asp:TextBox runat="server" dir="rtl" ID="txt_color_type" CssClass="form-control"></asp:TextBox>
        <label> : نوع رنگ</label>
        <div class="gridstyle panelwarning">
            <asp:GridView runat="server" Width="500px" CssClass="table table-bordered" ID="grid_colortype" AutoGenerateColumns="False" DataKeyNames="colortype_id" DataSourceID="colortype">
                <Columns>
                    <asp:BoundField DataField="colortype_id" HeaderText="colortype_id" Visible="False" InsertVisible="False" ReadOnly="True" SortExpression="colortype_id" />
                    <asp:BoundField DataField="flow_colortype" HeaderText="نوع رنگ" SortExpression="flow_colortype" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                        <ControlStyle ForeColor="#0066FF" />
                    </asp:CommandField>                  </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="colortype" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [colortype_id], [flow_colortype] FROM [flower_colortypes]" UpdateCommand="UPDATE flower_colortypes SET flow_colortype = @flow_colortype WHERE (colortype_id = @colortype_id)">
                <UpdateParameters>
                    <asp:Parameter Name="flow_colortype" />
                    <asp:Parameter Name="colortype_id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Panel>
    
    <asp:Panel class="panelwarning" ID="pnl_format" Visible="False" runat="server">
        <div class="headerstyle" style="margin-bottom: 10px;"><label>.:: ثبت قالب ::.</label></div>
        <asp:Button runat="server" ID="btn_form" Text="ثبت" CssClass="button" OnClick="btn_form_OnClick"/>
        <asp:TextBox runat="server" dir="rtl" ID="txtTedadDarBarg" CssClass="form-control"></asp:TextBox>
        <label> : تعداد در برگ</label>&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" dir="rtl" ID="txt_format" CssClass="form-control"></asp:TextBox>
        <label> : نام قالب</label>
        <div class="gridstyle panelwarning">
            <asp:GridView runat="server" Width="500px" CssClass="table table-bordered" ID="grid_format" AutoGenerateColumns="False" DataKeyNames="flowformat_id" DataSourceID="format">
                <Columns>
                    <asp:BoundField DataField="flowformat_id" HeaderText="flowformat_id" Visible="False" InsertVisible="False" ReadOnly="True" SortExpression="flowformat_id" />
                    <asp:BoundField DataField="flow_format" HeaderText="قالب" SortExpression="flow_format" />
                    <asp:BoundField DataField="tedad" HeaderText="تعداد در برگ 50 * 70" SortExpression="tedad" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                        <ControlStyle ForeColor="#0066FF" />
                    </asp:CommandField>                  </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="format" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flowformat_id, flow_format, tedad FROM flower_formats" UpdateCommand="UPDATE flower_formats SET flow_format = @flow_format, tedad = @tedad WHERE (flowformat_id = @flowformat_id)">
                <UpdateParameters>
                    <asp:Parameter Name="flow_format" />
                    <asp:Parameter Name="tedad" />
                    <asp:Parameter Name="flowformat_id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Panel>
    
    <asp:Panel class="panelwarning" ID="pnl_dimension" Visible="False" runat="server">
        <div class="headerstyle" style="margin-bottom: 10px;"><label>.:: ثبت ابعاد ::.</label></div>
        <asp:Button runat="server" ID="btn_dim" Text="ثبت" CssClass="button" OnClick="btn_dim_OnClick"/>
        <asp:TextBox runat="server" ID="txt_dim" CssClass="form-control"></asp:TextBox>
        <label> : ابعاد</label>
        <div class="gridstyle panelwarning">
            <asp:GridView runat="server" Width="500px" CssClass="table table-bordered" ID="grid_dimension" AutoGenerateColumns="False" DataKeyNames="dimension_id" DataSourceID="dimension">
                <Columns>
                    <asp:BoundField DataField="dimension_id" HeaderText="dimension_id" Visible="False" InsertVisible="False" ReadOnly="True" SortExpression="dimension_id" />
                    <asp:BoundField DataField="flow_dimension" HeaderText="ابعاد" SortExpression="flow_dimension" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                        <ControlStyle ForeColor="#0066FF" />
                    </asp:CommandField>  
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dimension" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [dimension_id], [flow_dimension] FROM [flower_dimensions]" UpdateCommand="UPDATE flower_dimensions SET flow_dimension = @flow_dimension WHERE (dimension_id = @dimension_id)">
                <UpdateParameters>
                    <asp:Parameter Name="flow_dimension" />
                    <asp:Parameter Name="dimension_id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Panel>
    
    <asp:Panel class="panelwarning" ID="pnl_customer" Visible="False" runat="server">
        <div class="headerstyle" style="margin-bottom: 10px;"><label>.:: ثبت مشتری ::.</label></div>
        <asp:Button runat="server" ID="btn_cus" Text="ثبت" CssClass="button" OnClick="btn_cus_OnClick"/>
        <asp:TextBox runat="server" dir="rtl" ID="txt_cus" CssClass="form-control"></asp:TextBox>
        <label> : نام مشتری</label>
        <div class="gridstyle panelwarning">
            <asp:GridView runat="server" Width="500px" CssClass="table table-bordered" ID="grid_customer" AutoGenerateColumns="False" DataKeyNames="customer_id" DataSourceID="customer">
                <Columns>
                    <asp:BoundField DataField="customer_id" HeaderText="id" Visible="False" InsertVisible="False" ReadOnly="True" SortExpression="customer_id" />
                    <asp:BoundField DataField="customer_name" HeaderText="نام مشتری" SortExpression="customer_name" />
                    <asp:BoundField DataField="customer_number" HeaderText="شناسه مشتری" SortExpression="customer_number" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                        <ControlStyle ForeColor="#0066FF" />
                    </asp:CommandField>  
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="customer" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [customer_id], [customer_number], [customer_name] FROM [flower_customers]" UpdateCommand="UPDATE flower_customers SET customer_name = @customer_name, customer_number = @customer_number WHERE (customer_id = @customer_id)">
                <UpdateParameters>
                    <asp:Parameter Name="customer_name" />
                    <asp:Parameter Name="customer_number" />
                    <asp:Parameter Name="customer_id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Panel>
    
    <asp:Panel class="panelwarning" ID="pnl_company" Visible="False" runat="server">
        <div class="headerstyle" style="margin-bottom: 10px;"><label>.:: ثبت شرکت سازنده ::.</label></div>
        <asp:Button runat="server" ID="btn_comp" Text="ثبت" CssClass="button" OnClick="btn_comp_OnClick"/>
        <asp:TextBox runat="server" dir="rtl" ID="txt_comp" CssClass="form-control"></asp:TextBox>
        <label> : نام شرکت</label>
        <div class="gridstyle panelwarning">
            <asp:GridView runat="server" Width="500px" CssClass="table table-bordered" ID="grid_company" AutoGenerateColumns="False" DataKeyNames="company_id" DataSourceID="company">
                <Columns>
                    <asp:BoundField DataField="company_name" HeaderText="نام شرکت سازنده" SortExpression="company_name" />
                    <asp:BoundField DataField="company_id" HeaderText="company_id" Visible="False" InsertVisible="False" ReadOnly="True" SortExpression="company_id" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                        <ControlStyle ForeColor="#0066FF" />
                    </asp:CommandField>                
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="company" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [company_name], [company_id] FROM [flower_companies]" UpdateCommand="UPDATE flower_companies SET company_name = @company_name WHERE (company_id = @company_id)">
                <UpdateParameters>
                    <asp:Parameter Name="company_name" />
                    <asp:Parameter Name="company_id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Panel>
    
<asp:Panel class="panelwarning" ID="pnl_ordertype" Visible="False" runat="server">
    <div class="headerstyle" style="margin-bottom: 10px;"><label>.:: ثبت نوع سفارش ::.</label></div>
    <asp:Button runat="server" ID="btn_order_type" Text="ثبت" CssClass="button" OnClick="btn_order_type_OnClick"/>
    <asp:TextBox runat="server" dir="rtl" ID="txt_order_type" CssClass="form-control"></asp:TextBox>
    <label> : نوع سفارش</label>
    <div class="gridstyle panelwarning">
        <asp:GridView runat="server" Width="500px" CssClass="table table-bordered" ID="grid_ordertype" 
            AutoGenerateColumns="False" DataSourceID="order_type" DataKeyNames="order_id" >
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="id" SortExpression="order_id" Visible="False" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="order_type" HeaderText="نوع سفارش" SortExpression="order_type" /> 
                <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                    <ControlStyle ForeColor="#0066FF" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="order_type" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT order_id, order_type FROM order_type
order by order_type" UpdateCommand="UPDATE order_type SET order_type = @order_type WHERE (order_id = @order_id)">
            <UpdateParameters>
                <asp:Parameter Name="order_type" />
                <asp:Parameter Name="order_id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Panel>
<script>
    $(document).on('keyup', function () {
        SearchGrid('<%=txtsearch.ClientID%>', '<%=grid_item.ClientID%>');
    });
    function SearchGrid(txtSearch, grd) {
        if ($("[id *=" + txtSearch + " ]").val() != '') {
            $("[id *=" + grd + " ]").children
                ('tbody').children('tr').each(function () {
                    $(this).show();
                });
            $("[id *=" + grd + " ]").children
                ('tbody').children('tr').each(function () {
                    var match = false;
                    $(this).children('td').each(function () {
                        if ($(this).text().toUpperCase().indexOf($("[id *=" +
                            txtSearch + " ]").val().toUpperCase()) > -1) {
                            match = true;
                            return false;
                        }
                    });
                    if (match) {
                        $(this).show();
                        $(this).children('th').show();
                    }
                    else {
                        $(this).hide();
                        $(this).children('th').show();
                    }
                });


            $("[id *=" + grd + " ]").children('tbody').
                children('tr').each(function (index) {
                    if (index == 0)
                        $(this).show();
                });
        }
        else {
            $("[id *=" + grd + " ]").children('tbody').
                children('tr').each(function () {
                    $(this).show();
                });
        }
    }
</script>
</asp:Content>



