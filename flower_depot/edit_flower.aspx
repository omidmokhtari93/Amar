<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/MasterPage.master" AutoEventWireup="true" CodeFile="edit_flower.aspx.cs" Inherits="edit_flower" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
           
<asp:Panel runat="server" ID="pnl_editflower"> 
    <label class="headerstyle">.:: ویرایش گل ::.</label>

    <asp:Panel runat="server" Width="100%">
        <asp:Panel runat="server" Visible="False" ID="pnl_deleteall_warning" CssClass="panelwarning"><label class="label label-success" >.گل با موفقیت حذف شد</label></asp:Panel>
        <asp:Panel runat="server" ID="pnl_delete_all" Visible="False" CssClass="delete_all_warning">
            <div><label><asp:Label Font-Size="14pt" ID="lbl_warning_flowername" runat="server" Text="Label"></asp:Label></label></div>
            <div><label>. این گل و تمامی چیدمان ها و آیتم های آن حذف خواهند شد</label></div>
            <div><label>آیا مطمئن هستید ؟</label></div>
            <div>
                <asp:Button runat="server" ID="btn_cancel_deleteall" CssClass="button" Text="خیر" OnClick="btn_cancel_deleteall_OnClick"/>
                <asp:Button runat="server" ID="btn_accept_deleteall" CssClass="button" Text="بله" OnClick="btn_accept_deleteall_OnClick" />
            </div>
        </asp:Panel>
    </asp:Panel>

    <asp:Panel class="panelforflowerinfo" runat="server">
    <div class="row">
        <div class="col-lg-2" style="padding-top: 5px;">
            <div class="w3-container">
                <asp:Image ID="img_flowerimage" Width="134px" Height="134px" CssClass="img-thumbnail"  alt="تصویر موجود نیست" runat="server" style="cursor:zoom-in" 
                           onclick="document.getElementById('modal01').style.display='block'"/>
                <div id="modal01" class="w3-modal" onclick="this.style.display='none'">
                    <span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
                    <div class="w3-modal-content w3-animate-zoom">
                        <asp:Image ID="img_flowerimage1" runat="server" style="width:100%"/>
                    </div>
                </div>
            </div>
            <asp:LinkButton runat="server" style="width: 100%; color: blue; text-decoration: underline; font-weight: 900;" Text="حذف تصویر" ID="btn_delete_flower_image" OnClick="btn_delete_flower_image_OnClick"></asp:LinkButton>
        </div>
        <div class="col-lg-3">
            <div style="margin: 5px">
            <asp:TextBox ID="txt_flowercode" Width="100%" style="text-transform:uppercase;" Font-Names="Tahoma" dir="ltr" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin: 5px">
            <asp:DropDownList ID="drpcolortype" dir="rtl" Width="100%" runat="server" CssClass="form-control"  DataSourceID="SqlDataSource3" DataTextField="flow_colortype" DataValueField="colortype_id" Height="40px" >
            </asp:DropDownList>
            </div>
            <div style="margin: 5px">
            <asp:DropDownList ID="drpcostumername" dir="rtl" Width="100%" CssClass="form-control"  runat="server"  DataSourceID="SqlDataSource4" DataTextField="customer_name" DataValueField="customer_id" Height="40px">
            </asp:DropDownList>
            </div>
            <div style="margin: 5px">
            <asp:DropDownList ID="drpyear" CssClass="form-control" runat="server" Height="40px">
                <asp:ListItem>سال</asp:ListItem>
                <asp:ListItem>1385</asp:ListItem>
                <asp:ListItem>1386</asp:ListItem>
                <asp:ListItem>1387</asp:ListItem>
                <asp:ListItem>1388</asp:ListItem>
                <asp:ListItem>1389</asp:ListItem>
                <asp:ListItem>1390</asp:ListItem>
                <asp:ListItem>1391</asp:ListItem>
                <asp:ListItem>1392</asp:ListItem>
                <asp:ListItem>1393</asp:ListItem>
                <asp:ListItem>1394</asp:ListItem>
                <asp:ListItem>1395</asp:ListItem>
                <asp:ListItem>1396</asp:ListItem>
                <asp:ListItem>1397</asp:ListItem>
                <asp:ListItem>1398</asp:ListItem>
                <asp:ListItem>1399</asp:ListItem>
                <asp:ListItem>1400</asp:ListItem>
                <asp:ListItem>1401</asp:ListItem>
                <asp:ListItem>1402</asp:ListItem>
                <asp:ListItem>1403</asp:ListItem>
                <asp:ListItem>1404</asp:ListItem>
                <asp:ListItem>1405</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="drpmonth" CssClass="form-control"  runat="server" Height="40px">
                <asp:ListItem>ماه</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem Value="03"></asp:ListItem>
                <asp:ListItem Value="04"></asp:ListItem>
                <asp:ListItem Value="05"></asp:ListItem>
                <asp:ListItem Value="06"></asp:ListItem>
                <asp:ListItem Value="07"></asp:ListItem>
                <asp:ListItem Value="08"></asp:ListItem>
                <asp:ListItem Value="09"></asp:ListItem>
                <asp:ListItem Value="10"></asp:ListItem>
                <asp:ListItem Value="11"></asp:ListItem>
                <asp:ListItem Value="12"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="drpday" CssClass="form-control" runat="server" Height="40px">
                <asp:ListItem>روز</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div style="margin: 5px">
                <style>
                    .input-group-addon {
                        cursor: pointer;
                    }
                    .input-group-addon:hover {
                        font-weight: 900;
                        text-decoration: underline;
                    }
                </style>
                <div class="uploadgroup">
                    <div class="input-group">
                        <label class="input-group-addon" >تغییر تصویر
                            <asp:FileUpload ID="upload_control" type="file" accept=".png,.jpg,.jpeg" style="display: none" runat="server" onchange="CopyMe(this, 'uploadFile');"/></label>
                        <input id="uploadFile" type="text" class="form-control" placeholder="مسیر" disabled="disabled" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-2" style="padding: 0px;">
            <div style="margin-top: 13px; margin-bottom: 25px;"><label style="margin: 0px">: کد گل</label></div>
            <div style="margin-bottom: 22px;"><label style="margin: 0px">: نوع رنگ</label> </div>
            <div style="margin-bottom: 22px;"><label style="margin: 0px">: نام مشتری</label></div>
            <div style="margin-bottom: 22px;"><label style="margin: 0px">: تاریخ ورود به انبار</label></div>
            <div><label style="margin: 0px">: تصویر</label></div>
        </div>
        <div class="col-lg-3">
            <div style="margin: 5px">
                <asp:TextBox ID="txt_flowername" Width="100%" dir="rtl" runat="server" CssClass="form-control" ></asp:TextBox>        
            </div>
            <div style="margin: 5px">
                <asp:DropDownList ID="drpcolor" runat="server" dir="rtl" CssClass="form-control" Width="100%" Height="40px" DataSourceID="color" DataTextField="flow_color" DataValueField="flowcolor_id" >
                </asp:DropDownList>
            </div>
            <div style="margin: 5px">
                <asp:DropDownList ID="drpformat" runat="server" dir="rtl" CssClass="form-control" Width="100%" Height="40px" DataSourceID="format" DataTextField="flow_format" DataValueField="flowformat_id" >
                </asp:DropDownList>
            </div>
            <div style="margin: 5px">
                <asp:DropDownList ID="drpcompany"  runat="server" dir="rtl" CssClass="form-control" Width="100%" DataSourceID="SqlDataSource5" DataTextField="company_name" DataValueField="company_id" Height="40px">
                </asp:DropDownList>
            </div>
            <div style="margin: 5px">
                <asp:TextBox ID="txtcomment" dir="rtl" CssClass="form-control" Width="100%" runat="server" Height="40px"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-2" style="padding: 0px;"> 
            <div style="margin-top: 13px; margin-bottom: 25px;"><label style="margin: 0px">: نام گل</label></div>
            <div style="margin-bottom: 22px;"><label style="margin: 0px">: رنگ</label> </div>
            <div style="margin-bottom: 22px;"><label style="margin: 0px">: قالب</label></div>
            <div style="margin-bottom: 22px;"><label style="margin: 0px">: شرکت سازنده</label></div>
            <div><label style="margin: 0px">: توضیحات</label></div>
        </div>
    </div>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [customer_id], [customer_name] FROM [flower_customers]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [company_name], [company_id] FROM [flower_companies]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [colortype_id], [flow_colortype] FROM [flower_colortypes]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="format" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [flowformat_id], [flow_format] FROM [flower_formats]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="color" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT [flowcolor_id], [flow_color] FROM [flower_colors]"></asp:SqlDataSource>
    
    <asp:Panel runat="server" ID="pnl_edit_success" Visible="False" CssClass="panelwarning"><label class="label label-success" >.گل با موفقیت ویرایش شد</label></asp:Panel>
    <div class="panelwarning" style="margin: 0; padding: 0;">
        <asp:Button ID="btn_edit" style="margin-top: 10px" runat="server" CssClass="button" Text="ویرایش" Visible="True" OnClick="btn_edit_OnClick" />
        <asp:Button runat="server" CssClass="button" Text="حذف کامل" ID="btn_delete_all" OnClick="btn_delete_all_OnClick"/>
    </div>
    </asp:Panel> 
</asp:Panel>
    <div class="panelwarning" style="margin-bottom: 0;">
        <asp:Button runat="server" CssClass="button" ID="btn_back" Text="بازگشت به صفحه ی قبل" OnClick="btn_back_OnClick"/>
    </div>
</asp:Content>

