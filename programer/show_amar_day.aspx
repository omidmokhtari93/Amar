<%@ Page Title="مشاهده آمار " Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="show_amar_day.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="vertical-align:middle;">
        <br />
        <table dir="ltr" style="margin-left: 0px; width: 19%;" __designer:mapid="c6" 
                id="tbldate">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="2">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="1">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px">
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
     <asp:Button ID="btnshow" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="نمایش" onclick="btnshow_Click" TabIndex="3" />
        <br />
        <br />
                <asp:Button ID="btnexcell" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnexcell_Click" Text="خروجی اکسل" Width="110px" />
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="110px" style="margin-left: 21px" />
        <br />
        <asp:Panel ID="pnlprint" runat="server">
       <center>
        <br />
        <asp:Label ID="labldate" runat="server" Font-Names="B titr"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Names="Titr" Font-Size="Medium" 
            Text="   :آمار تولید روزانه واحد ها در تاریخ "></asp:Label>
           <br />
           <asp:Label ID="Label5" runat="server" Font-Names="B Titr" Font-Size="Small" Text="آمار کل روزانه ریخته گری"></asp:Label>
        <br />
        <asp:Panel ID="Panel1" runat="server" Width="77%" BorderStyle="Solid" >
        <br />
                     <asp:GridView ID="grid_rikhtegari" runat="server" 
                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="Tahoma" 
                    Font-Size="Small" ForeColor="#333333" GridLines="None" 
                    ShowHeaderWhenEmpty="True" Width="73%" HorizontalAlign="Center">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                                 SortExpression="darsad">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="waight_wastday" HeaderText="وزن ضایعات" 
                                 SortExpression="waight_wastday">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="wastday" HeaderText="تعداد ضایعات روز" 
                                 SortExpression="wastday">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="totalday" HeaderText="آمار کل تولید روزانه" 
                                 SortExpression="totalday">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" />
                         <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" 
                             Font-Names="tahoma" Font-Size="Small" ForeColor="#0066FF" />
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
    </asp:Panel>
           <asp:Label ID="Label2" runat="server" Font-Names="B Titr" Font-Size="Small" Text="آمار کل روزانه پرس"></asp:Label>
    <br />
    <asp:Panel ID="pnlpress" runat="server" Width="77%" BorderStyle="Solid" 
            >
        <br />
        <asp:GridView ID="grid_press" runat="server"  AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2"  
            EmptyDataText="داده ای برای نمایش وجود ندارد" ShowHeaderWhenEmpty="True"  
                Font-Names="tahoma" Font-Size="Small"  ForeColor="#333333"
            GridLines="None" Width="96%" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                    SortExpression="darsad">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="B titr" Font-Size="Small"/>
                </asp:BoundField>
                <asp:BoundField DataField="wast_waight" HeaderText="وزن کل ضایعات" 
                    SortExpression="wast_waight" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wast_day" HeaderText="تعداد ضایعات" 
                    SortExpression="wast_day" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="time_stop" HeaderText="مدت زمان توقف" 
                    SortExpression="time_stop">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="B titr" Font-Size="Small"/>
                </asp:BoundField>
                <asp:BoundField DataField="total_waight" HeaderText="وزن کل تولید" 
                    SortExpression="total_waight" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="time_work" HeaderText="مدت زمان کارکرد" 
                    SortExpression="time_work">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="B titr" Font-Size="Small"/>
                </asp:BoundField>
                <asp:BoundField DataField="rework_day" HeaderText="تولید بازکاری" 
                    SortExpression="rework_day">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_day" HeaderText="تولید سالم" 
                    SortExpression="total_day" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="sum_total" HeaderText="جمع تولید" 
                    SortExpression="sum_total">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" 
                    Font-Names="B titr" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" 
                HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#0066FF" />
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
        <asp:Label ID="Label3" runat="server" Font-Names="B Titr" Font-Size="Small" 
            Text="آمار تولید سه شیفت پرس بر اساس آیتم"></asp:Label>
        <br />

        <asp:GridView ID="grid_total_press" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" 
            EmptyDataText="داده ای برای نمایش وجود ندارد"  ForeColor="#333333" 
            Font-Names="tahoma" Font-Size="Small"   GridLines="None" 
            ShowHeaderWhenEmpty="True" Width="95%" HorizontalAlign="Center" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                    SortExpression="darsad">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="B titr" 
                    Font-Size="Small"/>
                </asp:BoundField>
                <asp:BoundField DataField="waight_wastage" HeaderText="وزن ضایعات" 
                    SortExpression="waight_wastage">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <FooterStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="B titr" 
                    Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                    SortExpression="wastage">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="B titr" 
                    Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="rework" HeaderText="بازکاری" 
                    SortExpression="rework">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="waight" HeaderText="وزن" 
                    SortExpression="waight">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total" HeaderText="پرداخت شده" 
                    SortExpression="total">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="B titr" 
                    Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="sum_totrework" HeaderText="جمع تولید" 
                    SortExpression="sum_totrework">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="B titr" 
                    Font-Size="Small"/>
                </asp:BoundField>
                <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                    SortExpression="item_name">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="B titr" 
                    Font-Size="Small" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataRowStyle Font-Names="tahoma" Font-Size="Small" 
                HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#0066FF" />
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

    </asp:Panel>
           <asp:Label ID="lbltotalday" runat="server" Font-Names="B Titr" Font-Size="Small" Text="آمار کل  تولیدی روزانه فرمینگ" Width="43%"></asp:Label>
    <br />
        <asp:Panel ID="Panel2" runat="server" Width="77%" BorderStyle="Solid" 
            HorizontalAlign="Center" >
        <br />
                     <asp:GridView ID="gridforming" runat="server" 
                AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" 
                EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                GridLines="None" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
                 Width="42%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="wwforming" HeaderText="وزن ضایعات" 
                                 SortExpression="wwforming">
                            <HeaderStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_wastage" HeaderText="ضایعات" 
                                 SortExpression="total_wastage">
                             <HeaderStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total" HeaderText="تعداد تولید خالص" 
                                 SortExpression="total">
                             <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                 SortExpression="item_name">
                             <HeaderStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" />
                         <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" 
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

            <asp:GridView ID="gridform_day" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource5" 
                EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                GridLines="None" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
                 Width="58%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh">
                    <HeaderStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                        SortExpression="darsad">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="wwforming" HeaderText="وزن ضایعات" 
                        SortExpression="wwforming" >
                    <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                          </asp:BoundField>
                    <asp:BoundField DataField="sum_wast" HeaderText="تعداد ضایعات" 
                        SortExpression="sum_wast">
                    <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="tot_weight" HeaderText="وزن تولید" 
                        SortExpression="tot_weight" >
                    <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sum_tot" HeaderText="جمع خالص تولید" 
                        SortExpression="sum_tot">
                    <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" 
                    Font-Underline="False" />
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
    </asp:Panel>
           <asp:Label ID="Label1" runat="server" Font-Names="B Titr" Font-Size="Small" Text="آمار کل  تولیدی روزانه پرداخت" Width="43%"></asp:Label>
    <br />
    <asp:Panel ID="Panel5" runat="server" Width="77%" BorderStyle="Solid" >
        <br />
                     <asp:GridView ID="GridView1" runat="server" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                DataSourceID="SqlDataSource6" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" 
                Width="65%" HorizontalAlign="Center">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="tarikh" HeaderText="تاریخ" SortExpression="tarikh">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="remain" HeaderText="مانده" SortExpression="remain">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                                 SortExpression="darsad">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="waight_wastage" HeaderText="وزن ضایعات" 
                                 SortExpression="waight_wastage">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_wastage" HeaderText="تعداد ضایعات" 
                                 SortExpression="total_wastage">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="waight_total" HeaderText="وزن کل پرداخت" 
                                 SortExpression="waight_total">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_pardakht" HeaderText="تعداد پرداخت شده" 
                                 SortExpression="total_pardakht">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" />
                         <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
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
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="#333333" 
                GridLines="None" Width="74%" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="press_wwast" HeaderText="وزن ض پرس" 
                        SortExpression="press_wwast" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="press_wast" HeaderText="ضایعات پرس" 
                        SortExpression="press_wast">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="press" HeaderText="تعداد پرس" ReadOnly="True" 
                        SortExpression="press">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="form_wwast" HeaderText="وزن ض فرمینگ" 
                        SortExpression="form_wwast" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="form_wast" HeaderText="ضایعات فرمینگ" 
                        SortExpression="form_wast">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="form" HeaderText="تعداد فرمینگ" ReadOnly="True" 
                        SortExpression="form">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="rikht_wwast" HeaderText="وزن ض ریخته گری" 
                        SortExpression="rikht_wwast" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="rikht_wast" HeaderText="ضایعات ریخته گری" 
                        SortExpression="rikht_wast">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="rikht" HeaderText="تعداد ریخته گری" ReadOnly="True" 
                        SortExpression="rikht">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
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
    </asp:Panel>
           <asp:Label ID="lbltotalday3" runat="server" Font-Names="B Titr" Font-Size="Small" Text="آمار بارگیری کوره اصلی بیسکوییت" Width="43%"></asp:Label>
    <br />
    <asp:Panel ID="Panel7" runat="server" Width="90%" BorderStyle="Solid" >
    <br />
            <asp:GridView ID="gridbis_day" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource10" 
        EmptyDataText="داده ای برای نمایش وجود ندارد" 
    ShowHeaderWhenEmpty="True" ForeColor="#333333" 
        GridLines="None" Width="95%" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                SortExpression="ww_bis" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Wrap="True" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="wast_bis_day" HeaderText="ضایعات بیسکوییت" 
                SortExpression="wast_bis_day" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Wrap="False" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="darsad" 
                HeaderText="درصد ضایعات خام" SortExpression="darsad">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" 
                VerticalAlign="Middle" Font-Names="B titr" Font-Size="Small" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ww_raw" HeaderText="وزن ضایعات خام" 
                SortExpression="ww_raw" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Wrap="False" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="wast_raw_day" HeaderText="ضایعات خام" 
                SortExpression="wast_raw_day" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Wrap="False" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="total_press" HeaderText="تعداد آیتم پرس" 
                SortExpression="total_press" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Wrap="False" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="total_forming" HeaderText="تعداد آیتم فرمینگ" 
                SortExpression="total_forming" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Wrap="False" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="total_rikhtegari" HeaderText="تعداد آیتم ریخته گری" 
                SortExpression="total_rikhtegari" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Wrap="False" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="total_waight" HeaderText="وزن کل" 
                SortExpression="total_waight" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Wrap="False" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="total_day" HeaderText="تعداد کل" 
                SortExpression="total_day" >
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" Wrap="False" />
                    <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" 
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
        <asp:GridView ID="gridbis" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource11" 
            EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
            GridLines="None" ShowHeaderWhenEmpty="True" Width="95%" 
            HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="wastage_bis" HeaderText="ضایعات بیسکوییت" 
                    SortExpression="wastage_bis">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wastage_raw" HeaderText="ضایعات خام" 
                    SortExpression="wastage_raw">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ww_raw" HeaderText="وزن ضایعات خام" 
                    SortExpression="ww_raw">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                    SortExpression="ww_bis">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="waight" HeaderText="وزن" SortExpression="waight">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total" HeaderText="تعداد بارگیری" 
                    SortExpression="total">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                    SortExpression="item_name">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" 
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

            </asp:Panel>
           <asp:Label ID="lbltotalday2" runat="server" Font-Names="B Titr" Font-Size="Small" Text="آمار بارگیری لعاب یک" Width="43%"></asp:Label>
    <br />
     <asp:Panel ID="Panel6" runat="server" Width="95%" BorderStyle="Solid" >
            <br />
        <asp:GridView ID="grid_total_glaze1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" 
            EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333"
            ShowHeaderWhenEmpty=True
            GridLines="Vertical" 
             CaptionAlign="Top" Font-Names="Tahoma" 
            Font-Size="Medium" HorizontalAlign="Center" DataSourceID="SqlDataSource9" 
                Width="99%">

            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="total_press" HeaderText="تعداد پرس" 
                    SortExpression="total_press" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_forming" HeaderText="تعداد فرمینگ" 
                    SortExpression="total_forming" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_rikhtegari" HeaderText="تعداد ریخته گری" 
                    SortExpression="total_rikhtegari" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ww_glaze" HeaderText="وزن ضایعات لعاب" 
                    SortExpression="ww_glaze" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                    SortExpression="ww_bis" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wast_glaze_day" HeaderText="تعداد ضایعات لعاب" 
                    SortExpression="wast_glaze_day" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wast_bis_day" HeaderText="تعداد ضایعات بیسکوییت" 
                    SortExpression="wast_bis_day" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="tot_recover" HeaderText="ترمیمی" 
                    SortExpression="tot_recover">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_waight" HeaderText="وزن کل بدون ترمیم" 
                    SortExpression="total_waight" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_day" HeaderText="جمع کل بارگیری" 
                    SortExpression="total_day" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="tot2_waight" HeaderText="وزن کل با ترمیم" 
                    SortExpression="tot2_waight">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
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
    </asp:Panel>
           <asp:Label ID="lbltotalday1" runat="server" Font-Names="B Titr" Font-Size="Small" Text="آمار بارگیری لعاب دو" Width="43%"></asp:Label>
    <br />
     <asp:Panel ID="Panel4" runat="server" Width="95%" BorderStyle="Solid" >
            <br />
        <asp:GridView ID="grid_total_glaze2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="id" 
            EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333"
            ShowHeaderWhenEmpty=True
            GridLines="Vertical" 
             CaptionAlign="Top" Font-Names="Tahoma" 
            Font-Size="Medium" HorizontalAlign="Center" DataSourceID="SqlDataSource8" 
                Width="99%">

            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="total_press" HeaderText="تعداد پرس" 
                    SortExpression="total_press" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_forming" HeaderText="تعداد فرمینگ" 
                    SortExpression="total_forming" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_rikhtegari" HeaderText="تعداد ریخته گری" 
                    SortExpression="total_rikhtegari" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ww_glaze" HeaderText="وزن ضایعات لعاب" 
                    SortExpression="ww_glaze" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                    SortExpression="ww_bis" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wast_glaze_day" HeaderText="تعداد ضایعات لعاب" 
                    SortExpression="wast_glaze_day" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wast_bis_day" HeaderText="تعداد ضایعات بیسکوییت" 
                    SortExpression="wast_bis_day" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="tot_recover" HeaderText="ترمیمی" 
                    SortExpression="tot_recover">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_waight" HeaderText="وزن کل بدون ترمیم" 
                    SortExpression="total_waight" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_day" HeaderText="جمع کل بارگیری" 
                    SortExpression="total_day" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="tot2_waight" HeaderText="وزن کل با ترمیم" 
                    SortExpression="tot2_waight">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="B titr" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
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
    </asp:Panel>
    <br />

     </center>
        
       
         </asp:Panel>
         </center>
        <br />
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
            DeleteCommand="DELETE FROM [press_totalday] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [press_totalday] ([total_waight], [wast_waight], [tarikh], [total_day], [rework_day], [wast_day]) VALUES (@total_waight, @wast_waight, @tarikh, @total_day, @rework_day, @wast_day)" 
            
        
        
        
        
        
        SelectCommand="SELECT totalday, wastday,cast(waight_wastday as varchar)+' کیلوگرم' as waight_wastday ,tarikh,'% '+cast(left(((wastday*1.0/(totalday+wastday))*100),4) as varchar) as darsad FROM rikht_totalday ">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="total_waight" Type="Double" />
                <asp:Parameter Name="wast_waight" Type="Double" />
                <asp:Parameter Name="tarikh" Type="String" />
                <asp:Parameter Name="total_day" Type="Int32" />
                <asp:Parameter Name="rework_day" Type="Int32" />
                <asp:Parameter Name="wast_day" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        DeleteCommand="DELETE FROM [press_total] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [press_total] ([item_id], [waight_wastage], [waight], [tarikh], [time_work], [time_stop], [total], [rework], [wastage]) VALUES (@item_id, @waight_wastage, @waight, @tarikh, @time_work, @time_stop, @total, @rework, @wastage)" 
        
        
        
        
        SelectCommand="SELECT id, cast(total_waight as varchar)+' کیلو گرم' as total_waight , cast(wast_waight as varchar)+' کیلوگرم' As wast_waight , tarikh, total_day, rework_day,time_work,time_stop, wast_day,sum_total, '% '+cast(left(((wast_day*1.0/(wast_day+sum_total))*100),4)as varchar) as darsad  FROM press_totalday where tarikh=@tarikh">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="item_id" Type="Int32" />
            <asp:Parameter Name="waight_wastage" Type="Double" />
            <asp:Parameter Name="waight" Type="Double" />
            <asp:Parameter Name="tarikh" Type="String" />
            <asp:Parameter Name="time_work" Type="String" />
            <asp:Parameter Name="time_stop" Type="String" />
            <asp:Parameter Name="total" Type="Int32" />
            <asp:Parameter Name="rework" Type="Int32" />
            <asp:Parameter Name="wastage" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
   <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        SelectCommand="SELECT press_total.id, press_total.item_id, cast(press_total.waight_wastage as varchar)+' کیلو' as waight_wastage , cast(press_total.waight as varchar)+' کیلو' as waight , press_total.tarikh, press_total.total, press_total.rework, press_total.wastage, press_total.sum_totrework,item.item_name,'% '+cast(left(((press_total.wastage*1.0/ (press_total.sum_totrework+press_total.wastage))*100),4) as varchar) as darsad  FROM press_total INNER JOIN item ON press_total.item_id = item.id WHERE (press_total.tarikh = @tarikh) order by item.item_name">
            <SelectParameters>
                <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
            </SelectParameters>
    </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        SelectCommand="SELECT forming.id, forming.total, forming.total_wastage, forming.tarikh, forming.item_id, item.item_name, round(forming.total_wastage * item.waight_raw,2) AS wwforming FROM forming INNER JOIN item ON forming.item_id = item.id WHERE (forming.tarikh = @tarikh)">
            <SelectParameters>
                <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     REPLACE(ROUND(SUM(wtot_form), 2), '.', '/') AS tot_weight,SUM(total) AS sum_tot, SUM(total_wastage) AS sum_wast, SUM(wwforming) AS wwforming, '% ' + CAST(LEFT(SUM(total_wastage) * 1.0 / (SUM(total)+SUM(total_wastage)) * 100, 4) AS varchar) AS darsad, 
                      @tarikh AS tarikh
FROM         (SELECT     dbo.forming.total, dbo.forming.total_wastage, round(dbo.forming.total_wastage * dbo.item.waight_raw,2) AS wwforming,forming.total * item.waight_raw AS wtot_form
                        FROM         dbo.forming INNER JOIN
                                              dbo.item ON dbo.forming.item_id = dbo.item.id
                        WHERE     (dbo.forming.tarikh = @tarikh)) AS derivedtbl_1">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="
SELECT [id], [total_pardakht], [total_wastage],'% '+cast(left((total_wastage*1.0/(total_pardakht+total_wastage)*100),4) as varchar )as darsad, [remain], [tarikh],cast( [waight_wastage] as varchar)+' کیلوگرم' as waight_wastage ,cast( [waight_total] as varchar)+' کیلوگرم' As waight_total FROM [pardakht_total] where tarikh=@tarikh">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     (SELECT     SUM(dbo.pardakht1.total) AS press
                        FROM         dbo.pardakht1 INNER JOIN
                                              dbo.item ON dbo.pardakht1.item_id = dbo.item.id
                        WHERE     (dbo.item.sector_product = 3) AND (dbo.pardakht1.tarikh = @tarikh)) AS press,
                          (SELECT     SUM(pardakht1_2.wastage) AS press_wast
                             FROM         dbo.pardakht1 AS pardakht1_2 INNER JOIN
                                                   dbo.item AS item_4 ON pardakht1_2.item_id = item_4.id
                             WHERE     (item_4.sector_product = 3) AND (pardakht1_2.tarikh = @tarikh)) AS press_wast,
                          (SELECT     SUM(pardakht1_1.w_wastage) AS press_wwast
                             FROM         dbo.pardakht1 AS pardakht1_1 INNER JOIN
                                                   dbo.item AS item_3 ON pardakht1_1.item_id = item_3.id
                             WHERE     (item_3.sector_product = 3) AND (pardakht1_1.tarikh = @tarikh)) AS press_wwast,
                          (SELECT     SUM(pardakht_2.total) AS form
                             FROM         dbo.pardakht1 AS pardakht_2 INNER JOIN
                                                   dbo.item AS item_2 ON pardakht_2.item_id = item_2.id
                             WHERE     (item_2.sector_product = 2) AND (pardakht_2.tarikh = @tarikh)) AS form,
                          (SELECT     SUM(pardakht_2.wastage) AS form_wast
                             FROM         dbo.pardakht1 AS pardakht_2 INNER JOIN
                                                   dbo.item AS item_2 ON pardakht_2.item_id = item_2.id
                             WHERE     (item_2.sector_product = 2) AND (pardakht_2.tarikh = @tarikh)) AS form_wast,
                          (SELECT     SUM(pardakht_2.w_wastage) AS form_wwast
                             FROM         dbo.pardakht1 AS pardakht_2 INNER JOIN
                                                   dbo.item AS item_2 ON pardakht_2.item_id = item_2.id
                             WHERE     (item_2.sector_product = 2) AND (pardakht_2.tarikh = @tarikh)) AS form_wwast,
                          (SELECT     SUM(pardakht_1.total) AS rikht
                             FROM         dbo.pardakht1 AS pardakht_1 INNER JOIN
                                                   dbo.item AS item_1 ON pardakht_1.item_id = item_1.id
                             WHERE     (item_1.sector_product = 1) AND (pardakht_1.tarikh = @tarikh)) AS rikht,
                          (SELECT     SUM(pardakht_1.wastage) AS rikht_wast
                             FROM         dbo.pardakht1 AS pardakht_1 INNER JOIN
                                                   dbo.item AS item_1 ON pardakht_1.item_id = item_1.id
                             WHERE     (item_1.sector_product = 1) AND (pardakht_1.tarikh = @tarikh)) AS rikht_wast,
                          (SELECT     SUM(pardakht_1.w_wastage) AS rikht_wwast
                             FROM         dbo.pardakht1 AS pardakht_1 INNER JOIN
                                                   dbo.item AS item_1 ON pardakht_1.item_id = item_1.id
                             WHERE     (item_1.sector_product = 1) AND (pardakht_1.tarikh = @tarikh)) AS rikht_wwast">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT total_waight, ww_glaze, ww_bis, total_day, wast_glaze_day, wast_bis_day, total_press, tot_recover, waight_recover + total_waight AS tot2_waight, total_forming, total_rikhtegari, id, tarikh FROM glaze2_total_day WHERE (tarikh = @tarikh)">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT total_waight, ww_glaze, ww_bis, total_day, wast_glaze_day, wast_bis_day, total_press, tot_recover, waight_recover + total_waight AS tot2_waight, total_forming, total_rikhtegari, id, tarikh FROM glaze1_total_day WHERE (tarikh = @tarikh)">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT [id], [total_waight], [ww_raw], [ww_bis], [total_day], [wast_raw_day], [wast_bis_day], [total_press], [total_forming], [total_rikhtegari], [tarikh],'%'+cast(left((wast_raw_day*1.0/(wast_raw_day+total_day)*100),4) as varchar) as darsad FROM [bis_total_day]
where tarikh=@tarikh
">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT bis_total.id, bis_total.item_id, bis_total.total, bis_total.waight, bis_total.wastage_bis, bis_total.wastage_raw, bis_total.ww_raw, bis_total.ww_bis, bis_total.tarikh, item.item_name FROM bis_total INNER JOIN item ON bis_total.item_id = item.id
where bis_total.tarikh=@tarikh order by item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="labldate" Name="tarikh" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

