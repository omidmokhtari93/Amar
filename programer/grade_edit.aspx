<%@ Page Title="اصلاح آمار درجه بندی" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="grade_edit.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            width: 62px;
        }
      

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
        <br />
        <br />
        <center style=" vertical-align:middle;" > 
        <table dir="ltr" style="margin-left: 0px; width: 19%;" __designer:mapid="c6" 
                id="tbldate0">
            <tr __designer:mapid="c7">
                <td class="style2" __designer:mapid="c8">
                    <asp:Label ID="lblyear" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="سال"></asp:Label>
                </td>
                <td class="style3" __designer:mapid="ca">
                    <asp:Label ID="lblmounth" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text="ماه"></asp:Label>
                </td>
                <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="lblday" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="روز"></asp:Label>
                </td>
                <tr __designer:mapid="ce">
                    <td class="style2" __designer:mapid="cf">
                        <asp:DropDownList ID="dryear" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="2" 
                            onselectedindexchanged="dryear_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Selected="True" Value="1390">1390</asp:ListItem>
                            <asp:ListItem Value="1391">1391</asp:ListItem>
                            <asp:ListItem Value="1392">1392</asp:ListItem>
                            <asp:ListItem Value="1393">1393</asp:ListItem>
                            <asp:ListItem Value="1394">1394</asp:ListItem>
                            <asp:ListItem Value="1395">1395</asp:ListItem>
                            <asp:ListItem>1396</asp:ListItem>
                            <asp:ListItem Value="1397">1397</asp:ListItem>
                            <asp:ListItem Value="1398">1398</asp:ListItem>
                            <asp:ListItem>1399</asp:ListItem>
                            <asp:ListItem>1400</asp:ListItem>
                            <asp:ListItem>1401</asp:ListItem>
                            <asp:ListItem>1402</asp:ListItem>
                            <asp:ListItem>1403</asp:ListItem>
                            <asp:ListItem>1404</asp:ListItem>
                            <asp:ListItem>1405</asp:ListItem>
                            <asp:ListItem>1406</asp:ListItem>
                            <asp:ListItem>1407</asp:ListItem>
                            <asp:ListItem>1408</asp:ListItem>
                            <asp:ListItem>1409</asp:ListItem>
                            <asp:ListItem>1410</asp:ListItem>
                            <asp:ListItem>1411</asp:ListItem>
                            <asp:ListItem>1412</asp:ListItem>
                            <asp:ListItem>1413</asp:ListItem>
                            <asp:ListItem>1414</asp:ListItem>
                            <asp:ListItem>1415</asp:ListItem>
                            <asp:ListItem>1416</asp:ListItem>
                            <asp:ListItem>1417</asp:ListItem>
                            <asp:ListItem>1418</asp:ListItem>
                            <asp:ListItem>1419</asp:ListItem>
                            <asp:ListItem>1420</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style3" __designer:mapid="f0">
                        <asp:DropDownList ID="drmounth" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="1" 
                            onselectedindexchanged="drmounth_SelectedIndexChanged" AutoPostBack="True">
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
                        </asp:DropDownList>
                    </td>
                    <td class="style1" __designer:mapid="fe">
                        <asp:DropDownList ID="drday" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px" 
                            onselectedindexchanged="drday_SelectedIndexChanged" AutoPostBack="True">
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
                    </td>
                </tr>
            </tr>
        </table>
            <br />
        <asp:Label ID="labldate" runat="server" Font-Names="B titr" Font-Size="Medium"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Names="Titr" Font-Size="Medium" 
            Text=":اصلاح آمار درجه بندی در تاریخ"></asp:Label>
        <br />
         <asp:RadioButtonList ID="rdbglaze" runat="server" Font-Names="Tahoma" style="margin-left: 14%;"
        Font-Size="Medium"  TabIndex="-1" Width="152px">
        <asp:ListItem Value="1" Selected="True">فاز یک</asp:ListItem>
        <asp:ListItem Value="2">فاز دو</asp:ListItem>
    </asp:RadioButtonList>
            
            <br />
            <asp:Button ID="compare" runat="server" Font-Names="tahoma" 
                Text="مشاهده اختلافات احتمالی" Width="158px" onclick="compare_Click" />
            <asp:Button ID="nochange" runat="server" Font-Names="tahoma" 
                Text="ورود بدون تغییر" Width="100px" onclick="nochange_Click" 
                style="margin-left: 48px" />
            <asp:Button ID="Edit_grade" runat="server" Font-Names="tahoma" 
                Text="ویرایش آمار" Width="100px" onclick="Edit_grade_Click" 
                style="margin-left: 49px" />
        <br />
            <br />
            <asp:Button ID="btndont_show" runat="server" Font-Names="tahoma" 
                Font-Size="Small" ForeColor="Red" onclick="btndont_show_Click" 
                Text="عدم نمایش آمار" Width="10%" />
            <asp:Button ID="btnshow" runat="server" Font-Names="tahoma" Font-Size="Small" 
                ForeColor="Blue" onclick="btnshow_Click" style="margin-left: 26px" 
                Text="نمایش آمار" Width="10%" />
            <br />
            <br />
                  <asp:Panel ID="pnldelete" runat="server" BorderStyle="Solid" ForeColor="Red" 
                       Width="552px" Visible="False" Height="125px">
                      <asp:Label ID="Label42" runat="server" Text="***حذف آیتم انتخاب شده***" 
                          Font-Names="Tahoma" Font-Size="Large"></asp:Label>
                          <br />
                          <asp:Label ID="Label43" runat="server" Font-Names="Tahoma" 
                          Font-Size="Medium" ForeColor="Blue" 
                          Text="آیا می خواهید آیتم انتخاب شده را حذف نمائید؟"></asp:Label>
                          <br />
                          <br />
                           <asp:Button ID="btncancel" runat="server" Font-Names="Tahoma" 
                          Font-Size="Medium" ForeColor="Black" Text="انصراف" 
                          onclick="btncancel_Click" Width="18%" />
                           <asp:Button ID="btndelete" runat="server" Font-Names="tahoma" 
                          Font-Size="Medium" ForeColor="Black" onclick="btndelete_Click" 
                          style="margin-left: 20px" Text="حذف" Width="18%" />
                           <br />
                      <br />
                      </asp:Panel>
        <br />
        
            <asp:Panel ID="pnlrikhtegari" runat="server" Width="95%" 
                HorizontalAlign="Center">
                <br />
                <center>
                    
                <asp:Label ID="Label2" runat="server" Font-Names="B Titr" 
                    Text="اصلاح آمار درجه بندی فاز"></asp:Label>
                    <asp:Label ID="lblfaz" runat="server" Font-Names="b titr" ForeColor="#0000CC"></asp:Label>
                    <br />
                    <asp:Label ID="lblcompair" runat="server" Font-Names="B titr" 
                        Font-Size="Medium" Visible="False"></asp:Label>
                    <asp:Label ID="lblerror" runat="server" Font-Names="Tahoma" ForeColor="Red" 
                        Text=":اختلاف در محاسبات انجام شده -میزان اختلاف" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="lbladd" runat="server" Font-Names="Tahoma" ForeColor="Red" 
                        Text="لطفا در وارد کردن مقادیر معایب از + استفاده نکنید" Visible="False"></asp:Label>
                <br />
                    <asp:GridView ID="grid_sort1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="faz1" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" ShowHeaderWhenEmpty="True" 
                        Visible="False" onrowupdating="grid_sort1_RowUpdating" 
                        onrowcommand="grid_sort1_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField CancelText="انصراف" DeleteText="" EditText="ویرایش" 
                                SelectText="انتخاب" ShowDeleteButton="false" ShowEditButton="True" 
                                UpdateText="ویرایش">
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" 
                                HorizontalAlign="Center" VerticalAlign="Middle"  />
                            </asp:CommandField>
                            <asp:ButtonField CommandName="selectdell" Text="حذف">
            <ItemStyle Font-Names="tahoma" Font-Size="Small" ForeColor="#000099" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:ButtonField>
                            <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="equal" HeaderText="تطابق" SortExpression="equal">
                        <HeaderStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" ForeColor="Red" />
                        </asp:CheckBoxField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" ForeColor="#0000CC" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" ForeColor="#0000CC" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" ForeColor="#0000CC" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" ForeColor="#0000CC" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سرسوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" ForeColor="#0000CC" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" ForeColor="#0000CC" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true"
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_id" HeaderText="ش آیتم " 
                                SortExpression="item_id">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="grid_sort1test" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="sqlfaz1_test" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" onrowcommand="grid_sort1test_RowCommand" 
                        onrowupdating="grid_sort1test_RowUpdating" ShowHeaderWhenEmpty="True" 
                        Visible="False" Caption="آیتم های آزمایشی">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField CancelText="انصراف" DeleteText="" EditText="ویرایش" 
                                SelectText="انتخاب" ShowDeleteButton="false" ShowEditButton="True" 
                                UpdateText="ویرایش">
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:CommandField>
                            <asp:ButtonField CommandName="selectdell" Text="حذف">
                            <ItemStyle Font-Names="tahoma" Font-Size="Small" ForeColor="#000099" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                            <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="equal" HeaderText="تطابق" SortExpression="equal">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:CheckBoxField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سرسوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_id" HeaderText="ش آیتم " 
                                SortExpression="item_id">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Font-Names="B titr" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="gridcompare1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="faz1compare" ForeColor="#333333" GridLines="None" 
                        HorizontalAlign="Center" Visible="False" Width="276px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم های دارای اختلاف" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                <br />
                
                     <br />
                <asp:GridView ID="grid_sort2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="faz2" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                    Font-Size="Small" ForeColor="#333333" onrowupdating="grid_sort2_RowUpdating" 
                    ShowHeaderWhenEmpty="True" Visible="False" 
                    onrowcommand="grid_sort2_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField CancelText="انصراف" DeleteText="" EditText="ویرایش" 
                            SelectText="انتخاب" ShowDeleteButton="false" ShowEditButton="True" 
                            UpdateText="ویرایش">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
                         <asp:ButtonField CommandName="selectdell" Text="حذف">
            <ItemStyle Font-Names="tahoma" Font-Size="Small" ForeColor="#000099" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:ButtonField>
                        <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh">
                        <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="equal" HeaderText="تطابق" SortExpression="equal">
                        <HeaderStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" ForeColor="Red" />
                        </asp:CheckBoxField>
                        <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                            SortExpression="return_glaze">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                            SortExpression="wastage">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                        <HeaderStyle Font-Names="tahoma" Font-Size="Medium" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                        <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                            SortExpression="labpar">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                            SortExpression="oftadegi">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                          <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                            SortExpression="tarpayeh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                            SortExpression="khbadaneh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                            SortExpression="پایه پریدگی">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sarsozani" HeaderText="سرسوزنی" 
                            SortExpression="sarsozani">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                            SortExpression="dorangi">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                            SortExpression="deformation">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                            SortExpression="kafsefid">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                            SortExpression="khglaze">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                            SortExpression="noglaze">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                            SortExpression="kharegi">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                            SortExpression="khlabeh">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                            SortExpression="item_name">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="item_id" HeaderText="ش آیتم " 
                            SortExpression="item_id">
                        <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                        <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                        HorizontalAlign="Center" VerticalAlign="Middle"  />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                    <asp:GridView ID="grid_sort2test" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="sqlfaz2_test" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
                        Font-Size="Small" ForeColor="#333333" onrowcommand="grid_sort2test_RowCommand" 
                        onrowupdating="grid_sort2test_RowUpdating" ShowHeaderWhenEmpty="True" 
                        Visible="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField CancelText="انصراف" DeleteText="" EditText="ویرایش" 
                                SelectText="انتخاب" ShowDeleteButton="false" ShowEditButton="True" 
                                UpdateText="ویرایش">
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:CommandField>
                            <asp:ButtonField CommandName="selectdell" Text="حذف">
                            <ItemStyle Font-Names="tahoma" Font-Size="Small" ForeColor="#000099" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                            <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="equal" HeaderText="تطابق" SortExpression="equal">
                            <HeaderStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:CheckBoxField>
                            <asp:BoundField DataField="return_glaze" HeaderText="برگشتی" 
                                SortExpression="return_glaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                                SortExpression="wastage">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeC" HeaderText="C" SortExpression="gradeC">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradeB" HeaderText="1/5" SortExpression="gradeB">
                            <HeaderStyle Font-Names="B titr" Font-Size="Medium" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khash" HeaderText="خش" SortExpression="khash">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="labpar" HeaderText="لب پریدگی" 
                                SortExpression="labpar">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rizesh" HeaderText="ریزش" SortExpression="rizesh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="oftadegi" HeaderText="افتادگی" 
                                SortExpression="oftadegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tardasteh" HeaderText="ترک دسته" 
                                SortExpression="tardasteh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarpayeh" HeaderText="ترک پایه" 
                                SortExpression="tarpayeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khbadaneh" HeaderText="خرابی بدنه" 
                                SortExpression="khbadaneh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="payeh" HeaderText="پایه پریدگی" 
                                SortExpression="پایه پریدگی">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hobab" HeaderText="حباب" SortExpression="hobab">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sarsozani" HeaderText="سرسوزنی" 
                                SortExpression="sarsozani">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dorangi" HeaderText="دو رنگی" 
                                SortExpression="dorangi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarak" HeaderText="ترک لبه" SortExpression="ترک لبه">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="deformation" HeaderText="دفورمگی" 
                                SortExpression="deformation">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kafsefid" HeaderText="کف سفید" 
                                SortExpression="kafsefid">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rageh" HeaderText="رگه" SortExpression="rageh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khglaze" HeaderText="خ لعاب" 
                                SortExpression="khglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pin" HeaderText="پین" SortExpression="pin">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="noglaze" HeaderText="لعاب نگرفتگی" 
                                SortExpression="noglaze">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="kharegi" HeaderText="دانه خارجی" 
                                SortExpression="kharegi">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="khlabeh" HeaderText="خرابی لبه" 
                                SortExpression="khlabeh">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ahan" HeaderText="لک سیاه" SortExpression="ahan">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gradea" HeaderText="A" SortExpression="gradea">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tedad" HeaderText="تعداد" SortExpression="tedad">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" ForeColor="#0000CC" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم" ReadOnly="true" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" Wrap="False" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item_id" HeaderText="ش آیتم " 
                                SortExpression="item_id">
                            <HeaderStyle Font-Names="b titr" Font-Size="Small" />
                            <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Font-Names="tahoma" Font-Size="Small" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="gridcompare2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="faz2compare" ForeColor="#333333" GridLines="None" 
                        HorizontalAlign="Center" Visible="False" Width="276px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="item_name" HeaderText="نام آیتم های دارای اختلاف" 
                                SortExpression="item_name">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Medium" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                <br />
                <br />
                <br />
                <br />
                     <br />
            <br />
     
    <br />
           </center>
             <br />
            </asp:Panel>
            </center>
            <br />

    <br />
    <asp:SqlDataSource ID="faz1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT grade_faz1.item_id, grade_faz1.tedad, grade_faz1.gradea, grade_faz1.ahan, grade_faz1.khlabeh, grade_faz1.kharegi, grade_faz1.noglaze, grade_faz1.pin, grade_faz1.khglaze, grade_faz1.rageh, grade_faz1.kafsefid, grade_faz1.deformation, grade_faz1.tarak, grade_faz1.dorangi, grade_faz1.sarsozani, grade_faz1.hobab, grade_faz1.payeh, grade_faz1.khbadaneh, grade_faz1.tarpayeh, grade_faz1.oftadegi, grade_faz1.rizesh, grade_faz1.labpar, grade_faz1.khash, grade_faz1.gradeB, grade_faz1.gradeC, grade_faz1.wastage, grade_faz1.return_glaze, item.item_name, grade_faz1.tarikh, grade_faz1.equal, grade_faz1.tardasteh FROM grade_faz1 INNER JOIN item ON grade_faz1.item_id = item.id WHERE (grade_faz1.tarikh = @tarikh) ORDER BY item.sector_product, item.item_name" 
        
        
        
        
        
        UpdateCommand="UPDATE grade_faz1 SET gradea = @gradea, ahan = @ahan, khlabeh = @khlabeh, kharegi = @kharegi, noglaze = @noglaze, pin = @pin, khglaze = @khglaze, kafsefid = @kafsefid, deformation = @deformation, tarak = @tarak, dorangi = @dorangi, sarsozani = @sarsozani, oftadegi = @oftadegi, payeh = @payeh, khbadaneh = @khbadaneh, tarpayeh = @tarpayeh,tardasteh=@tardasteh, labpar = @labpar, rizesh = @rizesh, hobab = @hobab, rageh = @rageh, khash = @khash, gradeB = @gradeB, gradeC = @gradeC, wastage = @wastage, return_glaze = @return_glaze, tedad = @gradea*1 + @gradeB*1 + @gradeC*1 + @wastage*1 + @return_glaze*1 WHERE (item_id = @item_id) AND (tarikh = @tarikh)">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="gradea" />
            <asp:Parameter Name="ahan" />
            <asp:Parameter Name="khlabeh" />
            <asp:Parameter Name="kharegi" />
            <asp:Parameter Name="noglaze" />
            <asp:Parameter Name="pin" />
            <asp:Parameter Name="khglaze" />
            <asp:Parameter Name="kafsefid" />
            <asp:Parameter Name="deformation" />
            <asp:Parameter Name="tarak" />
            <asp:Parameter Name="dorangi" />
            <asp:Parameter Name="sarsozani" />
            <asp:Parameter Name="oftadegi" />
            <asp:Parameter Name="payeh" />
            <asp:Parameter Name="khbadaneh" />
            <asp:Parameter Name="tarpayeh" />
            <asp:Parameter Name="tardasteh" />
            <asp:Parameter Name="labpar" />
            <asp:Parameter Name="rizesh" />
            <asp:Parameter Name="hobab" />
            <asp:Parameter Name="rageh" />
            <asp:Parameter Name="khash" />
            <asp:Parameter Name="gradeB" />
            <asp:Parameter Name="gradeC" />
            <asp:Parameter Name="wastage" />
            <asp:Parameter Name="return_glaze" />
            <asp:Parameter Name="item_id" />
            <asp:Parameter Name="tarikh" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT grade_faz2.item_id, grade_faz2.tedad, grade_faz2.gradea, grade_faz2.ahan, grade_faz2.khlabeh, grade_faz2.kharegi, grade_faz2.noglaze, grade_faz2.pin, grade_faz2.khglaze, grade_faz2.rageh, grade_faz2.kafsefid, grade_faz2.deformation, grade_faz2.tarak, grade_faz2.dorangi, grade_faz2.sarsozani, grade_faz2.hobab, grade_faz2.payeh, grade_faz2.khbadaneh, grade_faz2.tarpayeh, grade_faz2.oftadegi, grade_faz2.rizesh, grade_faz2.labpar, grade_faz2.khash, grade_faz2.gradeB, grade_faz2.gradeC, grade_faz2.wastage, grade_faz2.return_glaze, item.item_name, grade_faz2.tarikh,grade_faz2.equal, grade_faz2.tardasteh FROM grade_faz2 INNER JOIN item ON grade_faz2.item_id = item.id WHERE (grade_faz2.tarikh = @tarikh) order by item.sector_product ,item.item_name" 
        
        
        
        
        
        
        UpdateCommand="UPDATE grade_faz2 SET gradea = @gradea, ahan = @ahan, khlabeh = @khlabeh, kharegi = @kharegi, noglaze = @noglaze, pin = @pin, khglaze = @khglaze, kafsefid = @kafsefid, deformation = @deformation, tarak = @tarak, dorangi = @dorangi, sarsozani = @sarsozani, oftadegi = @oftadegi, payeh = @payeh, khbadaneh = @khbadaneh, tarpayeh = @tarpayeh,tardasteh=@tardasteh, labpar = @labpar, rizesh = @rizesh, hobab = @hobab, rageh = @rageh, khash = @khash, gradeB = @gradeB, gradeC = @gradeC, wastage = @wastage, return_glaze = @return_glaze, tedad = @gradea*1 + @gradeB*1 + @gradeC*1 + @wastage*1 + @return_glaze*1 WHERE (item_id = @item_id) AND (tarikh = @tarikh)">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="gradea" />
            <asp:Parameter Name="ahan" />
            <asp:Parameter Name="khlabeh" />
            <asp:Parameter Name="kharegi" />
            <asp:Parameter Name="noglaze" />
            <asp:Parameter Name="pin" />
            <asp:Parameter Name="khglaze" />
            <asp:Parameter Name="kafsefid" />
            <asp:Parameter Name="deformation" />
            <asp:Parameter Name="tarak" />
            <asp:Parameter Name="dorangi" />
            <asp:Parameter Name="sarsozani" />
            <asp:Parameter Name="oftadegi" />
            <asp:Parameter Name="payeh" />
            <asp:Parameter Name="khbadaneh" />
            <asp:Parameter Name="tarpayeh" />
            <asp:Parameter Name="tardasteh" />
            <asp:Parameter Name="labpar" />
            <asp:Parameter Name="rizesh" />
            <asp:Parameter Name="hobab" />
            <asp:Parameter Name="rageh" />
            <asp:Parameter Name="khash" />
            <asp:Parameter Name="gradeB" />
            <asp:Parameter Name="gradeC" />
            <asp:Parameter Name="wastage" />
            <asp:Parameter Name="return_glaze" />
            <asp:Parameter Name="item_id" />
            <asp:Parameter Name="tarikh" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz1compare" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT item.item_name FROM grade_faz1 INNER JOIN item ON grade_faz1.item_id = item.id WHERE (grade_faz1.equal = 0) AND (grade_faz1.tarikh = @tarikh)">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="faz2compare" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT item.item_name FROM grade_faz2 INNER JOIN item ON grade_faz2.item_id = item.id WHERE (grade_faz2.equal = 0) AND (grade_faz2.tarikh = @tarikh)">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlfaz1_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT grade_faz1test.item_id, grade_faz1test.tedad, grade_faz1test.gradea, grade_faz1test.ahan, grade_faz1test.khlabeh, grade_faz1test.kharegi, grade_faz1test.noglaze, grade_faz1test.pin, grade_faz1test.khglaze, grade_faz1test.rageh, grade_faz1test.kafsefid, grade_faz1test.deformation, grade_faz1test.tarak, grade_faz1test.dorangi, grade_faz1test.sarsozani, grade_faz1test.hobab, grade_faz1test.payeh, grade_faz1test.khbadaneh, grade_faz1test.tarpayeh, grade_faz1test.oftadegi, grade_faz1test.rizesh, grade_faz1test.labpar, grade_faz1test.khash, grade_faz1test.gradeB, grade_faz1test.gradeC, grade_faz1test.wastage, grade_faz1test.return_glaze, item.item_name, grade_faz1test.tarikh, grade_faz1test.equal, grade_faz1test.tardasteh FROM grade_faz1test INNER JOIN item ON grade_faz1test.item_id = item.id WHERE (grade_faz1test.tarikh = @tarikh) ORDER BY item.sector_product, item.item_name" 
        UpdateCommand="UPDATE grade_faz1test SET gradea = @gradea, ahan = @ahan, khlabeh = @khlabeh, kharegi = @kharegi, noglaze = @noglaze, pin = @pin, khglaze = @khglaze, kafsefid = @kafsefid, deformation = @deformation, tarak = @tarak, dorangi = @dorangi, sarsozani = @sarsozani, oftadegi = @oftadegi, payeh = @payeh, khbadaneh = @khbadaneh, tarpayeh = @tarpayeh,tardasteh=@tardasteh, labpar = @labpar, rizesh = @rizesh, hobab = @hobab, rageh = @rageh, khash = @khash, gradeB = @gradeB, gradeC = @gradeC, wastage = @wastage, return_glaze = @return_glaze, tedad = @gradea*1 + @gradeB*1 + @gradeC*1 + @wastage*1 + @return_glaze*1 WHERE (item_id = @item_id) AND (tarikh = @tarikh)">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="gradea" />
            <asp:Parameter Name="ahan" />
            <asp:Parameter Name="khlabeh" />
            <asp:Parameter Name="kharegi" />
            <asp:Parameter Name="noglaze" />
            <asp:Parameter Name="pin" />
            <asp:Parameter Name="khglaze" />
            <asp:Parameter Name="kafsefid" />
            <asp:Parameter Name="deformation" />
            <asp:Parameter Name="tarak" />
            <asp:Parameter Name="dorangi" />
            <asp:Parameter Name="sarsozani" />
            <asp:Parameter Name="oftadegi" />
            <asp:Parameter Name="payeh" />
            <asp:Parameter Name="khbadaneh" />
            <asp:Parameter Name="tarpayeh" />
            <asp:Parameter Name="tardasteh" />
            <asp:Parameter Name="labpar" />
            <asp:Parameter Name="rizesh" />
            <asp:Parameter Name="hobab" />
            <asp:Parameter Name="rageh" />
            <asp:Parameter Name="khash" />
            <asp:Parameter Name="gradeB" />
            <asp:Parameter Name="gradeC" />
            <asp:Parameter Name="wastage" />
            <asp:Parameter Name="return_glaze" />
            <asp:Parameter Name="item_id" />
            <asp:Parameter Name="tarikh" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlfaz2_test" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT grade_faz2test.item_id, grade_faz2test.tedad, grade_faz2test.gradea, grade_faz2test.ahan, grade_faz2test.khlabeh, grade_faz2test.kharegi, grade_faz2test.noglaze, grade_faz2test.pin, grade_faz2test.khglaze, grade_faz2test.rageh, grade_faz2test.kafsefid, grade_faz2test.deformation, grade_faz2test.tarak, grade_faz2test.dorangi, grade_faz2test.sarsozani, grade_faz2test.hobab, grade_faz2test.payeh, grade_faz2test.khbadaneh, grade_faz2test.tarpayeh, grade_faz2test.oftadegi, grade_faz2test.rizesh, grade_faz2test.labpar, grade_faz2test.khash, grade_faz2test.gradeB, grade_faz2test.gradeC, grade_faz2test.wastage, grade_faz2test.return_glaze, item.item_name, grade_faz2test.tarikh,grade_faz2test.equal, grade_faz2test.tardasteh FROM grade_faz2test INNER JOIN item ON grade_faz2test.item_id = item.id WHERE (grade_faz2test.tarikh = @tarikh) order by item.sector_product ,item.item_name" 
        UpdateCommand="UPDATE grade_faz2test SET gradea = @gradea, ahan = @ahan, khlabeh = @khlabeh, kharegi = @kharegi, noglaze = @noglaze, pin = @pin, khglaze = @khglaze, kafsefid = @kafsefid, deformation = @deformation, tarak = @tarak, dorangi = @dorangi, sarsozani = @sarsozani, oftadegi = @oftadegi, payeh = @payeh, khbadaneh = @khbadaneh, tarpayeh = @tarpayeh,tardasteh=@tardasteh, labpar = @labpar, rizesh = @rizesh, hobab = @hobab, rageh = @rageh, khash = @khash, gradeB = @gradeB, gradeC = @gradeC, wastage = @wastage, return_glaze = @return_glaze, tedad = @gradea*1 + @gradeB*1 + @gradeC*1 + @wastage*1 + @return_glaze*1 WHERE (item_id = @item_id) AND (tarikh = @tarikh)">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="gradea" />
            <asp:Parameter Name="ahan" />
            <asp:Parameter Name="khlabeh" />
            <asp:Parameter Name="kharegi" />
            <asp:Parameter Name="noglaze" />
            <asp:Parameter Name="pin" />
            <asp:Parameter Name="khglaze" />
            <asp:Parameter Name="kafsefid" />
            <asp:Parameter Name="deformation" />
            <asp:Parameter Name="tarak" />
            <asp:Parameter Name="dorangi" />
            <asp:Parameter Name="sarsozani" />
            <asp:Parameter Name="oftadegi" />
            <asp:Parameter Name="payeh" />
            <asp:Parameter Name="khbadaneh" />
            <asp:Parameter Name="tarpayeh" />
            <asp:Parameter Name="tardasteh" />
            <asp:Parameter Name="labpar" />
            <asp:Parameter Name="rizesh" />
            <asp:Parameter Name="hobab" />
            <asp:Parameter Name="rageh" />
            <asp:Parameter Name="khash" />
            <asp:Parameter Name="gradeB" />
            <asp:Parameter Name="gradeC" />
            <asp:Parameter Name="wastage" />
            <asp:Parameter Name="return_glaze" />
            <asp:Parameter Name="item_id" />
            <asp:Parameter Name="tarikh" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    </asp:Content>

