<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="khorooj.aspx.cs" Inherits="flower_depot_khorooj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <asp:HiddenField runat="server" ID="khoroojID"/>
    <asp:Panel runat="server" ID="pnlkhorooj">
    <div style="width: 60%;">
        <div style="border: 1px solid darkgray; border-radius: 5px;">
    <div class="row" style="margin: 0; text-align: right;">
        <div class="col-md-3">
            <label>شماره</label>
            <asp:TextBox runat="server" ID="txtshomare" TabIndex="4" CssClass="form-control text-center" Width="100%"></asp:TextBox>
        </div>
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <label style="display: block;">تاریخ</label>
            <asp:DropDownList ID="drpyear"  Width="29%" TabIndex="3" CssClass="form-control"   runat="server" Height="40px">
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
            <asp:DropDownList ID="drpmonth"  Width="25%" TabIndex="2" CssClass="form-control"  runat="server" Height="40px">
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
            <asp:DropDownList ID="drpday"  Width="25%" TabIndex="1" CssClass="form-control" runat="server" Height="40px">
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
    </div>
        <div class="row" style="margin: 0; text-align: right;">
            <div class="col-md-12">
                <label>گیرنده</label>
                <asp:TextBox runat="server" ID="txtgirande" TabIndex="5" CssClass="form-control" Width="100%" dir="rtl"></asp:TextBox>  
            </div>
        </div>
        <div class="row" style="margin: 0; text-align: right;">
            <div class="col-md-12">
                <label style="display: block;">توضیحات</label>
                <asp:TextBox runat="server" ID="txttozihat" TabIndex="6" CssClass="form-control" Width="100%" dir="rtl"></asp:TextBox>  
            </div>
        </div>
        <div style="padding: 5px;">
            <asp:Button runat="server" CssClass="button" Text="ثبت" TabIndex="7" ID="btnkhorooj" OnClick="btnkhorooj_OnClick"/>
            </div>
        </div>
        <div runat="server" id="pnldel" Visible="False" style="padding-top: 5px;">
            <div style="display: inline-block; padding: 10px; border: 2px solid darkgray;">
                <label style="display: block; padding: 5px;">حذف شود؟</label>
                <asp:Button runat="server" CssClass="button" Text="خیر" ID="btnNO" OnClick="btnNO_OnClick"/>
                <asp:Button runat="server" CssClass="button" Text="بله" ID="btnYes" OnClick="btnYes_OnClick"/>
            </div>
        </div>

        <div style="padding: 15px;">
            <asp:Panel runat="server" DefaultButton="btnSearch">
        <asp:TextBox runat="server" placeholder="جستجو" autocomplete="off" dir="rtl" ID="txtSearch" CssClass="form-control" Width="100%"></asp:TextBox>
            <asp:Button runat="server" ID="btnSearch" style="display: none;" OnClick="btnSearch_OnClick"/>
            </asp:Panel>
        <asp:GridView runat="server" ID="gridkhorooj" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Sqlkhorooj" OnRowCommand="gridkhorooj_OnRowCommand" OnRowDataBound="gridkhorooj_OnRowDataBound">
            <Columns>
                <asp:BoundField DataField="rownum" HeaderText="ردیف" SortExpression="rownum" />
                <asp:BoundField DataField="sh" HeaderText="شماره" SortExpression="sh" />
                <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh" />
                <asp:BoundField DataField="girande" HeaderText="گیرنده" SortExpression="girande" />
                <asp:BoundField DataField="tozihat" HeaderText="توضیحات" SortExpression="tozihat" />
                <asp:ButtonField CommandName="riz" Text="ثبت آیتم">
                    <ControlStyle ForeColor="blue"></ControlStyle>
                </asp:ButtonField>
                <asp:ButtonField CommandName="del" Text="حذف">
                    <ControlStyle ForeColor="blue"></ControlStyle>
                </asp:ButtonField>
            </Columns>
        </asp:GridView>
        </div>
    </div>
        <asp:SqlDataSource ID="Sqlkhorooj" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT ROW_NUMBER()over (order by id) as rownum,id ,girande , tozihat , sh, tarikh,closed FROM khorooj"></asp:SqlDataSource>
    </asp:Panel>
    
    <asp:Panel runat="server" Visible="False" ID="pnlRiz" Width="100%">
        <div style="border: 1px solid darkgray; border-radius: 5px;">
    <div class="row" style="margin: 0; text-align: right;">
        <div class="col-md-1">
            <label>تعداد برگ</label>
            <asp:TextBox runat="server" TabIndex="7" ID="txttedadKol" CssClass="form-control text-center" Width="100%" dir="rtl"></asp:TextBox>  
        </div>
        <div class="col-md-1">
            <label>تعداد بسته</label>
            <asp:TextBox runat="server" TabIndex="6" ID="txttedadB" CssClass="form-control text-center" Width="100%" dir="rtl"></asp:TextBox>  
        </div>
        <div class="col-md-2">
            <label>ابعاد</label>
            <asp:TextBox runat="server" TabIndex="5" ID="txtdim" CssClass="form-control" Width="100%" dir="rtl"></asp:TextBox>  
        </div>
        <div class="col-md-2">
            <label>رنگ گل</label>
            <asp:TextBox runat="server" TabIndex="4" ID="txtRang" CssClass="form-control" Width="100%" dir="rtl"></asp:TextBox>  
        </div>
        <div class="col-md-2">
            <label>نام گل</label>
            <asp:TextBox runat="server" TabIndex="3" ID="txtnameG" CssClass="form-control" Width="100%" dir="rtl"></asp:TextBox>  
        </div>
        <div class="col-md-2">
            <label>کد گل</label>
            <asp:TextBox runat="server" TabIndex="2" ID="txtcode" CssClass="form-control" Width="100%" dir="rtl"></asp:TextBox>  
        </div>
        <div class="col-md-2">
            <label>شماره فرم</label>
            <asp:TextBox runat="server" TabIndex="1" ID="txtFormnumber" CssClass="form-control" Width="100%"></asp:TextBox>
        </div>
    </div>
        <div class="panel-footer" style="margin-top: 10px;">
            <asp:Button runat="server" CssClass="button" Text="بازگشت" ID="btnBack" OnClick="btnBack_OnClick"/>
            <asp:Button runat="server" CssClass="button" TabIndex="8" Text="ثبت" ID="btnRiz" OnClick="btnRiz_OnClick"/>
            <button type="button" id="btnPrint" class="glyphicon glyphicon-print" style="border: none; background-color: transparent; outline: none;"></button>
        </div>
            </div>
        <br/>
        <div id="printRiz" style="width: 210mm; height: 148mm; position: relative;">
            <img src="Images/taghdis.jpg" style="height: 95%; width: auto; position: absolute; top: 5mm; left: 25mm; z-index: -55; opacity: .2;"/>
            <style>
                @font-face {
                    font-family: 'myfont';
                    src: url('fonts/Far_Nazanin.eot'),
                         url('fonts/glyphicons-halflings-regular.eot')format('embedded-opentype'),
                         url('fonts/Far_Nazanin.eot?#FooAnything') format('embedded-opentype');
                    src: local('☺'),
                         url('fonts/Far_Nazanin.woff') format('woff'),
                         url('fonts/Far_Nazanin.ttf') format('truetype'),
                         url('fonts/Far_Nazanin.svg') format('svg'),
                         url('fonts/glyphicons-halflings-regular.woff') format('woff'),
                         url('fonts/glyphicons-halflings-regular.ttf') format('truetype'),
                         url('fonts/glyphicons-halflings-regular.svg#glyphicons-halflingsregular') format('svg'),
                         url('fonts/glyphicons-halflings-regular.woff2')format('woff2');
                    font-weight: 400;
                }
                .table th {text-align: center !important; background-color: #65dbff; border-top: 1px solid black !important;}
                .table { direction: rtl;  font-size: 12pt; font-weight : 900;border: 1px solid black!important;}
                .table tr th { padding: 2px 5px !important; }
                .table td { padding: 2px 5px !important;vertical-align: middle !important; }
                .table tr:nth-child(even){background-color: #beefff;}
                .table tr:nth-child(odd){background-color: #eaf4fa;}
                .table td span {color:red;font-weight:bold;}
                html{ font-family: myfont !important;}
                @media print {
                    .table { text-align: center !important;background-color: transparent!important;}
                    .table th{background-color: transparent!important;}
                    .table tr th{background-color: transparent!important;}
                    .table td{background-color: transparent!important;}
                    #taghdis{ font-size: 20pt;left: 32%!important;}
                    #bargkhorooj{left: 40%!important;}
                    h3{ margin-top: 0;}
                    h4{ margin-top: 0;}
                    #havalehHeader{ display: block!important;}
                    #havalehFooter{ display: block !important;}
                    #gridArea{ padding-top: 132px !important;}
                    .editbtn{ display: none !important;}
                    .deletebtn{ display: none !important;}
                    .pagercss{ display: none !important;}
                }
                @page {
                    margin: 5mm;
                    margin-right: 8mm;
                    margin-left: 8mm;
                    -webkit-transform: rotate(-90deg); -moz-transform:rotate(-90deg);

                }
            </style>
        <div style="position: relative;">
            <div style="width: 100%; position: absolute; top: 0; left: 0; height: 130px; background-color: white; display: none;" class="havalehHeader" id="havalehHeader">
                <label style="position: absolute; top: 20px; left: 30px;" runat="server" id="lblsh"></label>
                <label style="position: absolute; top: 25px; left: 5px;">........................................ : شماره</label>
                <label style="position: absolute; top: 50px; left: 20px;" runat="server" id="lbltarikh"></label>
                <label style="position: absolute; top: 55px; left: 5px;">........................................ : تاریخ</label>
                <h3 style="position: absolute; top: 0; left: 36%; font-weight: 800; font-family: myfont;" id="taghdis">.:: شرکت صنایع چینی تقدیس ::.</h3>
                <h4 style="position: absolute; top: 50px; left: 39%; font-weight: 800; font-family: myfont;" id="bargkhorooj">(برگ خروج عکس برگردان)</h4>
                <img src="Images/arm-n.jpg" style="position: absolute; right: 5px; top: 5px; height: 90px;width: auto;"/>
                <label style="position: absolute; right: 20px; top: 100px;"> : گیرنده</label>
                <label style="position: absolute; right: 70px; top: 100px;" runat="server" id="lbladd"></label>
            </div>
        </div>
        <div id="gridArea">
            <asp:GridView runat="server" ID="gridRiz" Width="100%" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlRiz" AllowPaging="True" PageSize="10" OnRowDataBound="gridRiz_OnRowDataBound">
                <Columns>
                    <asp:BoundField DataField="rownum" ReadOnly="True" HeaderText="ردیف" SortExpression="rownum" />
                    <asp:BoundField DataField="code" HeaderText="کد گل" SortExpression="code" />
                    <asp:BoundField DataField="form" HeaderText="شماره فرم" SortExpression="form" />
                    <asp:BoundField DataField="name" HeaderText="نام گل" SortExpression="name" />
                    <asp:BoundField DataField="rang" HeaderText="رنگ گل" SortExpression="rang" />
                    <asp:BoundField DataField="dim" HeaderText="ابعاد" SortExpression="dim" />
                    <asp:BoundField DataField="tedadB" HeaderText="تعداد بسته" SortExpression="tedadB" />
                    <asp:BoundField DataField="tedadK" HeaderText="تعداد برگ" SortExpression="tedadK" />
                    <asp:CommandField ShowHeader="False" ShowEditButton="True" EditText="ویرایش" UpdateText="ویرایش" CancelText="لغو">                        
                        <ItemStyle CssClass="editbtn"></ItemStyle>
                        <HeaderStyle CssClass="editbtn"></HeaderStyle>
                    </asp:CommandField>
                    <asp:CommandField ShowHeader="False" ShowDeleteButton="True" DeleteText="حذف">
                        <ItemStyle CssClass="deletebtn"></ItemStyle>
                        <HeaderStyle CssClass="deletebtn"></HeaderStyle>
                    </asp:CommandField>
                </Columns>
                <PagerStyle CssClass="pagercss" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlRiz" runat="server" ConnectionString="<%$ ConnectionStrings:flower_depot %>" SelectCommand="SELECT ROW_NUMBER()over (order by id) as rownum,id,form, idkh, code, name, rang, dim, tedadB, tedadK FROM khoroojRiz
where idkh = @idkh" DeleteCommand="DELETE FROM khoroojRiz WHERE (id = @id)" UpdateCommand="UPDATE khoroojRiz SET code = @code, name = @name,form= @form, rang = @rang, dim = @dim, tedadB = @tedadB, tedadK = @tedadK WHERE (id = @id)">
                <DeleteParameters>
                    <asp:Parameter Name="id" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="khoroojID" Name="idkh" PropertyName="Value" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="idkh" />
                    <asp:Parameter Name="code" />
                    <asp:Parameter Name="name" />
                    <asp:Parameter Name="rang" />
                    <asp:Parameter Name="dim" />
                    <asp:Parameter Name="tedadB" />
                    <asp:Parameter Name="tedadK" />
                    <asp:Parameter Name="id" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button runat="server" CssClass="button" Text="ثبت نهایی" ID="btnSabtnahaee" OnClick="btnSabtnahaee_OnClick"/>
        </div>
            <div style="width: 100%; position: absolute; height: 50px; bottom: 0; left: 0; background-color: white; text-align: center; display: none;" id="havalehFooter" class="havalehFooter">
               <label style="position: absolute; top: 10px; right: 10px;"> : توضیحات</label>
                <label style="position: absolute; top: 10px; right: 70px; direction: rtl;" id="lbltozihat" runat="server"></label>
            </div>
        </div>
    </asp:Panel>
    <script type="text/javascript">
        $('#btnPrint').click(function () {
            var headstr = "<html><head><title></title></head><body>";
            var footstr = "</body>";
            var newstr = document.all.item('printRiz').innerHTML;
            var oldstr = document.body.innerHTML;
            document.body.innerHTML = headstr + newstr + footstr;
            window.print();
            document.body.innerHTML = oldstr;
        });
    </script>
</asp:Content>

