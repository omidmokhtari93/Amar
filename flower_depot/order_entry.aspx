<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/MasterPage.master" AutoEventWireup="true" CodeFile="order_entry.aspx.cs" Inherits="OrderEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <%--show search items--%>
<asp:UpdatePanel runat="server" UpdateMode="Always">
<ContentTemplate>
    <asp:Panel ID="pnl_add_by_search" runat="server">
            <label class="headerstyle">.:: ثبت سفارشات گل ::.</label>
        <asp:Panel class="container" runat="server" Direction="RightToLeft" Visible="False" ID="pnl_show_flowinfo">
            <label>
                <asp:Label ID="Label1" runat="server" dir="rtl" Text="نام گل : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                <asp:Label ID="lbl_flowname" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="کد گل : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                <asp:Label ID="lbl_flowcode" dir="ltr" Font-Names="Tahoma" runat="server" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" dir="rtl" Text="رنگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                <asp:Label ID="lbl_color" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" dir="rtl" Text="نوع رنگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                <asp:Label ID="lbl_colortype" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" dir="rtl" Text="قالب : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                <asp:Label ID="lbl_format" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" dir="rtl" Text="مشتری : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                <asp:Label ID="lbl_customer" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" dir="rtl" Text="سازنده : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
                <asp:Label ID="lbl_company" runat="server" dir="rtl" Font-Size="13pt"></asp:Label>
            </label>
        </asp:Panel>
        <asp:Panel class="panelwarning" style="margin-top: 0;" runat="server" Visible="False" ID="pnl_back_to_previous_page">
            <asp:Button runat="server" ID="btn_back_to_previous_page" CssClass="button" Text="بازگشت به صفحه ی قبل" OnClick="btn_back_to_previous_page_OnClick" />
        </asp:Panel>
     
        </asp:Panel>
    </ContentTemplate>
    </asp:UpdatePanel>
    <%-- show order item controls--%>
<asp:UpdatePanel runat="server">
    <ContentTemplate>
            <asp:Panel ID="pnl_enterinformation" Visible="False" runat="server" Width="100%">
        <div class="headerstyle"><label><asp:Label runat="server" ID="lbl_flowname_order" Text=""></asp:Label></label></div>
       
            <div class="row">
                <div class="col-lg-3">
                    <div style="margin: 5px">
                        <asp:DropDownList ID="drpyear1" TabIndex="7"  CssClass="form-control"  runat="server" Height="40px">
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
                        <asp:DropDownList ID="drpmonth1" TabIndex="6"  CssClass="form-control"  runat="server" Height="40px">
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
                        <asp:DropDownList ID="drpday1" TabIndex="5"  CssClass="form-control" runat="server" Height="40px">
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
                        <asp:TextBox ID="txt_comment" dir="rtl" TabIndex="10" Width="80%" CssClass="form-control" runat="server" Height="40px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-1 text-left">
                    <div style="margin-top: 13px; margin-bottom: 25px;"><label style="margin: 0px">: تاریخ تکمیل</label></div>
                    <div><label style="margin: 0px">: توضیحات</label></div>
                </div>
                <div class="col-lg-3">
                    <div style="margin: 5px">
                        <asp:DropDownList ID="drpyear" TabIndex="4"  CssClass="form-control"  runat="server" Height="40px">
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
                        <asp:DropDownList ID="drpmonth" TabIndex="3"  CssClass="form-control"  runat="server" Height="40px">
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
                        <asp:DropDownList ID="drpday" TabIndex="2"  CssClass="form-control" runat="server" Height="40px">
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
                        <asp:TextBox ID="txt_remain" TabIndex="9" CssClass="form-control text-center" runat="server" Height="40px" Width="80%"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-1 text-left">
                    <div style="margin-top: 13px; margin-bottom: 25px;"><label style="margin: 0px">: تاریخ سفارش</label></div>
                    <div><label style="margin: 0px">: مانده</label></div>
                </div>
                <div class="col-lg-3">
                    <div style="margin: 5px">
                        <asp:DropDownList ID="drp_ordertype" TabIndex="1" dir="rtl" Width="100%" CssClass="form-control" runat="server" AppendDataBoundItems="True" Height="40px" DataSourceID="orderSource" DataTextField="order_type" DataValueField="order_id">
                            <asp:ListItem >انتخاب کنید</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div style="margin: 5px">
                        <asp:TextBox ID="txt_ordercount" TabIndex="8" Width="100%" CssClass="form-control text-center" runat="server" Height="40px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-1 text-left">
                    <div style="margin-top: 13px; margin-bottom: 25px;"><label style="margin: 0px">: نوع سفارش</label></div>
                    <div><label style="margin: 0px">: تعداد سفارش</label></div>
                </div>
            </div>        
    
                
        <div class="container">
        <asp:Panel runat="server" ID="pnl_show_failed" Visible="False" Width="100%">
        <asp:Label runat="server" ID="lblfailed" CssClass="label label-danger" Text=".لطفا فیلدهای خالی را تکمیل نمایید"></asp:Label>
        </asp:Panel>
        <asp:Panel runat="server" ID="pnl_show_success" Visible="False" Width="100%">
        <asp:Label runat="server" ID="lblsuccess" CssClass="label label-success" Text=".با موفقیت ثبت شد"></asp:Label>
        </asp:Panel>
        </div>
        <div class="container">
            <asp:Button ID="btn_save" TabIndex="11" CssClass="button" runat="server" Text="ثبت" OnClick="btn_save_OnClick"/>
            <asp:Button ID="btnCancelEdit" CssClass="button" runat="server" Text="انصراف" Visible="False" OnClick="btnCancelEdit_OnClick"/>
            <asp:Button ID="btn_edit" CssClass="button" runat="server" Text="ویرایش" Visible="False" OnClick="btn_edit_OnClick"/>
        </div>
                
                <div class="row">
                    <div class="col-sm-3">
                        <asp:Panel runat="server" Width="100%">
                            <asp:Panel runat="server" Visible="False" ID="pnl_deleteorder_warning" CssClass="panelwarning"><label class="label label-success" >.سفارش با موفقیت حذف شد</label></asp:Panel>
                            <asp:Panel runat="server" ID="pnl_delete_order" Visible="False" CssClass="delete_order_warning">
                                <div><label>آیا مطمئن هستید ؟</label></div>
                                <div>
                                    <asp:Button runat="server" ID="btn_cancel_deleteorder" CssClass="button" Text="خیر" OnClick="btn_cancel_deleteorder_OnClick" />
                                    <asp:Button runat="server" ID="btn_accept_deleteorder" CssClass="button" Text="بله" OnClick="btn_accept_deleteorder_OnClick" />
                                </div>
                            </asp:Panel>
                        </asp:Panel>
                    </div>
                    <div class="col-sm-9">
                        <style>
                            .mycss { }
                        </style>
                        <div class="gridstyle">
                            <asp:GridView ID="grid_show_orders" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="showOrderSource" OnRowCommand="grid_show_orders_RowCommand" DataKeyNames="id,flower_id,order_id" AllowPaging="True">
                                <PagerSettings NextPageText="" PreviousPageText="" />
                                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <rowstyle Height="10px" />
                                <Columns>
                                    <asp:BoundField DataField="order_type" HeaderText="نوع سفارش" SortExpression="order_type" />
                                    <asp:BoundField DataField="order_count" HeaderText="تعداد سفارش" SortExpression="order_count" />
                                    <asp:BoundField DataField="order_enter_date" HeaderText="تاریخ سفارش" SortExpression="order_enter_date" />
                                    <asp:BoundField DataField="order_complete_date" HeaderText="تاریخ تکمیل سفارش" SortExpression="order_complete_date" />
                                    <asp:BoundField DataField="order_remain" HeaderText="باقی مانده" SortExpression="order_remain" />
                                    <asp:BoundField DataField="comment" HeaderText="توضیحات" SortExpression="comment" />
                                    <asp:ButtonField CommandName="editorder" >
                                    <ControlStyle ForeColor="blue" CssClass="glyphicon glyphicon-pencil"/>
                                    </asp:ButtonField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" style="color: #0066FF;" CssClass="mycss" CommandName="enter_forms" Text="ثبت فرم ها" CommandArgument='<%# Container.DataItemIndex %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ButtonField CommandName="Delete_order" >
                                    <ControlStyle ForeColor="blue" CssClass="glyphicon glyphicon-trash"/>
                                    </asp:ButtonField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            <script>
                $(document).ready(function() {
                    $(document).on('click', '.mycss', function () {
                        $("html, body").animate({ scrollTop: $(document).height() }, 1500);
                    });
                });
            </script>
                </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>

       <%--ثبت فرم ها--%>

    <asp:UpdatePanel UpdateMode="Always" runat="server">
        <ContentTemplate>
        <asp:Panel runat="server"  Visible="False" ID="pnl_show_sheet_count">   
            <asp:Panel runat="server" CssClass="panelwarning">
                <label class="headerstyle">.:: ثبت فرم ها و تعداد برگ ::.</label>

    <div class="panelwarning">
        <asp:Button runat="server" ID="btn_add_forms" Height="40px" Text="ثبت" CssClass="button" OnClick="btn_add_forms_OnClick"></asp:Button>
        <asp:DropDownList ID="drpyear3"  CssClass="form-control"  runat="server" Height="40px">
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
        <asp:DropDownList ID="drpmonth3"  CssClass="form-control"  runat="server" Height="40px">
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
        <asp:DropDownList ID="drpday3"  CssClass="form-control" runat="server" Height="40px">
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
        <label>: تاریخ تحویل</label> 
        &nbsp;&nbsp;&nbsp;
        <div class="input-group">
            <div class="input-group-btn">
                <asp:DropDownList runat="server" ID="drp_formnumber" dir="rtl" CssClass="btn btn-default dropdown-toggle" style="font-weight: 900;" Height="40px" DataSourceID="arranges" DataTextField="form_number" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="drp_formnumber_SelectedIndexChanged" />
            </div>
            <asp:TextBox type="text" class="form-control text-center" ID="txt_form_count" Width="90px" runat="server" placeholder="تعداد" style="left: 0px; top: 0px"></asp:TextBox>
        </div>
        <label>: فرم های تحویلی</label>  
    </div>
            </asp:Panel>

    <asp:Panel ID="pnl_showarrangeinfo" Direction="RightToLeft" CssClass="panelwarning_orders" Visible="False" runat="server">
        <label><asp:Label ID="Label3" runat="server" Text="نوع چیدمان : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_arrange_type" runat="server" Font-Size="13pt"></asp:Label></label>
        &nbsp;&nbsp;&nbsp;
        <label><asp:Label ID="Label6" runat="server" Text="ابعاد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_dimension" runat="server" Font-Size="13pt"></asp:Label></label>
        &nbsp;&nbsp;&nbsp;
        <label><asp:Label ID="Label8" runat="server" Text="تعداد برگ : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_arrange_sheet_count" runat="server" Font-Size="13pt"></asp:Label></label> 
        &nbsp;&nbsp;&nbsp;  
        <label><asp:Label ID="Label10" runat="server" Text="نوع مارک و تعداد : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_mark" runat="server" Font-Size="13pt"></asp:Label></label> 
        &nbsp;&nbsp;&nbsp;  
        <label style="margin: 0px;"><asp:Label ID="Label12" runat="server" Text="تاریخ ورود : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_lastenterdate" runat="server" Font-Size="13pt"></asp:Label></label>
        &nbsp;&nbsp;&nbsp;  
        <label style="margin: 0px;"><asp:Label ID="Label13" runat="server" Text="توضیحات : " ForeColor="#999999" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lbl_arrange_comment" runat="server" Font-Size="13pt"></asp:Label></label>  
    </asp:Panel>
            <asp:Panel runat="server" ID="pnl_forms_warning" Visible="False" Width="100%">
                <label style="margin: 0;" class="label label-danger">!خطا در ورود اطلاعات</label>
            </asp:Panel>
            <div class="panelwarning" style="margin: 0;">
                <asp:Panel runat="server" ID="pnl_delete_warning" Visible="False" CssClass="delete_order_warning">
                    <div><label>آیا مطمئن هستید ؟</label></div>
                    <div>
                        <asp:Button runat="server" ID="btn_cancel_delete" CssClass="button" Text="خیر"  OnClick="btn_cancel_delete_OnClick"/>
                        <asp:Button runat="server" ID="btn_accept_delete" CssClass="button" Text="بله"  OnClick="btn_accept_delete_OnClick"/>
                    </div>
                </asp:Panel>
            </div>
            <style>
                .hiddencol{display: none;}
            </style>
        <div class="gridstyle">
            <asp:GridView ID="grid_show_sheet_count" CssClass="table table-bordered" runat="server" style="margin: 0; padding: 0;"
                 ShowHeaderWhenEmpty="True" EmptyDataText="داده ای وجود ندارد."
                 AutoGenerateColumns="False" DataSourceID="order_sheet_count" DataKeyNames="id" OnRowCommand="grid_show_sheet_count_RowCommand">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="" ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol" InsertVisible="False" ReadOnly="True" SortExpression="id" ShowHeader="False"/>
                    <asp:BoundField DataField="form_number" HeaderText="شماره فرم" InsertVisible="False" ReadOnly="True" SortExpression="form_number" />
                    <asp:BoundField DataField="recieve_date" HeaderText="تاریخ تحویل" SortExpression="recieve_date" />
                    <asp:BoundField DataField="sheet_count" HeaderText="تعداد برگ" SortExpression="sheet_count" />
                    <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ثبت" CancelText="لغو" >
                        <ControlStyle ForeColor="#0066FF" />
                        </asp:CommandField>
                    <asp:ButtonField  CommandName="delete_order_form">
                        <ControlStyle ForeColor="blue" CssClass="glyphicon glyphicon-trash"></ControlStyle>
                    </asp:ButtonField>

                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="order_sheet_count" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT id, form_number, recieve_date, sheet_count, order_id FROM order_sheet_count WHERE (order_id = @order_id) ORDER BY form_number" DeleteCommand="DELETE FROM order_sheet_count WHERE (id = @id)" UpdateCommand="UPDATE order_sheet_count SET sheet_count= @sheet_count , recieve_date=@recieve_date WHERE (id = @id)">
                <DeleteParameters>
                    <asp:Parameter Name="id" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="order_id" SessionField="order_id" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sheet_count" />
                    <asp:Parameter Name="recieve_date" />
                    <asp:Parameter Name="id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        </asp:Panel> 

        <asp:SqlDataSource ID="searchsource" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT flower_entry.flower_name, flower_entry.flower_code, flower_colors.flow_color, flower_colortypes.flow_colortype, flower_formats.flow_format, flower_customers.customer_name, flower_companies.company_name, flower_entry.id, flower_entry.enter_date, flower_entry.comment FROM flower_entry INNER JOIN flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN flower_formats ON flower_entry.flower_format = flower_formats.flowformat_id INNER JOIN flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN flower_companies ON flower_entry.company_name = flower_companies.company_id ORDER BY flower_entry.id DESC">  </asp:SqlDataSource>
        <asp:SqlDataSource ID="orderSource" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="select order_type ,order_id from (SELECT order_id,order_type, bastebandi.dbo.GetNumeric(order_type) as od FROM [dbo].[order_type])i order by i.od"></asp:SqlDataSource>
    <asp:SqlDataSource ID="arranges" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT form_number, id, flower_id FROM flower_forms_entry WHERE (flower_id = @flower_identity) ORDER BY form_number"><SelectParameters>
        <asp:QueryStringParameter Name="flower_identity" QueryStringField="fid" />
        </SelectParameters></asp:SqlDataSource>
    <asp:SqlDataSource ID="showOrderSource" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT order_type.order_type, orders.order_enter_date, orders.order_complete_date, orders.order_remain, orders.comment, orders.flower_id, orders.id, orders.order_count, order_type.order_id FROM orders INNER JOIN order_type ON orders.order_type = order_type.order_id WHERE (orders.flower_id = @flower_id)
order by orders.id desc"><SelectParameters>
            <asp:QueryStringParameter Name="flower_id" QueryStringField="fid" />
        </SelectParameters></asp:SqlDataSource>

            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

