<%@ Page Title="مشاهده آمار" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reporting_amar.aspx.cs" Inherits="_Default" %>

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
        <table dir="ltr" 
                
            style="margin-left: 0px; width: 64%; table-layout: fixed; border-collapse: separate;" __designer:mapid="c6" 
                id="tbldate0" width="70%" border="0" frame="border">
            <tr __designer:mapid="c7">
                <td class="style2" __designer:mapid="c8">
                    <asp:Label ID="lblyearend" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="سال"></asp:Label>
                </td>
                <td class="style3" __designer:mapid="ca">
                    <asp:Label ID="lblmounthend" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text="ماه"></asp:Label>
                </td>
                <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="lbldayend" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="روز"></asp:Label>
                </td>
               
                <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="Label7" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text=":تا تاریخ"></asp:Label>
                </td>
                 <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="Label8" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="         "></asp:Label>
                 <td class="style2" __designer:mapid="c8">
                    <asp:Label ID="lblyearstart" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="سال"></asp:Label>
                </td>
                <td class="style3" __designer:mapid="ca">
                    <asp:Label ID="lblmounthstart" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text="ماه"></asp:Label>
                </td>
                <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="lbldaystart" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="روز"></asp:Label>
                </td>
                <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="Label6" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text=":از تاریخ"></asp:Label>
                </td>
               
                <tr __designer:mapid="ce">
                    <td class="style2" __designer:mapid="cf">
                        <asp:DropDownList ID="dryear" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="3">
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
                    <td></td>
                    <td></td>
                   
                    <td class="style2" __designer:mapid="cf">
                        <asp:DropDownList ID="dryearstart" runat="server" Font-Names="Tahoma" 
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="3">
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
                        <asp:DropDownList ID="drmounthstart" runat="server" Font-Names="Tahoma" 
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
                        <asp:DropDownList ID="drdaystart" runat="server" Font-Names="Tahoma" 
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
        <br />
     <asp:Button ID="btnexcell" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="خروجی اکسل" onclick="btnexcell_Click" />
     <asp:Button ID="btnshow" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="نمایش" onclick="btnshow_Click" style="margin-left: 19px" Width="96px" />
        <br />
        <br />
        <br />
        <asp:Panel runat="server" ID="pnlprint">
               <asp:Label ID="lbldate_e" runat="server" Font-Names="Titr" Font-Size="Small" 
                    Width="12%"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Names="Titr" Font-Size="Medium" 
                    Text=":تا تاریخ" Width="12%"></asp:Label>
                <asp:Label ID="lbldate_s" runat="server" Font-Names="Titr" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label10" runat="server" Font-Names="Titr" Font-Size="Medium" 
                    Text=":از تاریخ" Width="13%"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Names="Titr" Font-Size="Medium" 
            Text="آمار تولید روزانه واحد ها"></asp:Label>
        <br />
        <asp:Panel ID="Panel1" runat="server" Width="77%" BorderStyle="Solid" >
            <asp:Label ID="Label5" runat="server" Font-Names="B Titr" Font-Size="Small" 
                Text="آمار کل روزانه ریخته گری"></asp:Label>
        <br />
        <br />
                     <asp:GridView ID="gridtotal_day" runat="server" 
                AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="Tahoma" 
                Font-Size="Small" ForeColor="#333333" GridLines="None" 
                ShowHeaderWhenEmpty="True" Width="92%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                                 SortExpression="darsad">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="waight_wastday" HeaderText="وزن ضایعات" 
                                 SortExpression="waight_wastday">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="wastday" HeaderText="تعداد ضایعات " 
                                 SortExpression="wastday">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="totalday" HeaderText="آمار کل تولید " 
                                 SortExpression="totalday">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
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
    <asp:Panel ID="pnlpress" runat="server" Width="77%" BorderStyle="Solid" 
            >
        <br />
        <asp:Label ID="Label2" runat="server" Font-Names="B Titr" Font-Size="Small" 
            Text="آمار کل روزانه پرس"></asp:Label>
        <br />
        <asp:GridView ID="grid_totalday" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource2" 
            EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
            Font-Size="Small" ForeColor="#333333" GridLines="None" 
            ShowHeaderWhenEmpty="True" Width="96%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                    SortExpression="darsad">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wwast" HeaderText="وزن کل ضایعات" 
                    SortExpression="wwast">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wast" HeaderText="تعداد ضایعات" 
                    SortExpression="wast">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="waight" HeaderText="وزن کل تولید" 
                    SortExpression="waight">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="rework" HeaderText="تولید بازکاری" 
                    SortExpression="rework">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="tot" HeaderText="تولید سالم" 
                    SortExpression="tot">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="totrework" HeaderText="جمع تولید" 
                    SortExpression="totrework">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
        <asp:Label ID="Label3" runat="server" Font-Names="B Titr" Font-Size="Small" 
            Text="آمار تولید سه شیفت پرس بر اساس آیتم"></asp:Label>
        <br />

        <asp:GridView ID="grid_total" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource3" 
            EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="tahoma" 
            Font-Size="Small" ForeColor="#333333" GridLines="None" 
            ShowHeaderWhenEmpty="True" Width="96%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                    SortExpression="darsad">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="tonagwastage" HeaderText="وزن ضایعات" 
                    SortExpression="tonagwastage">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <FooterStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                    SortExpression="wastage">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="dailyrework" HeaderText="بازکاری" 
                    SortExpression="dailyrework">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="totalwaight" HeaderText="وزن" 
                    SortExpression="totalwaight">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="dailyTotal" HeaderText="پرداخت شده" 
                    SortExpression="dailyTotal">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="sumquantity" HeaderText="جمع تولید" 
                    SortExpression="sumquantity">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                    SortExpression="item_name">
                <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
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
        <asp:Panel ID="Panel2" runat="server" Width="77%" BorderStyle="Solid" 
            HorizontalAlign="Center" >
            <asp:Label ID="lbltotalday" runat="server" Font-Names="B Titr" 
                Text="آمار کل  تولیدی روزانه فرمینگ" Width="43%" Font-Size="Small"></asp:Label>
        <br />
            <br />

            <asp:GridView ID="gridforming" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource4" 
                EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                GridLines="None" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
                Width="50%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ttforming" HeaderText="وزن ضایعات" 
                        SortExpression="ttforming">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="wastage" HeaderText="ضایعات" 
                        SortExpression="wastage">
                    <HeaderStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="total" HeaderText="تعداد تولید خالص" 
                        SortExpression="total">
                    <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                        SortExpression="item_name">
                    <HeaderStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
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
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" Font-Names="Tahoma" 
                    Font-Size="Small" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:GridView ID="gridform_day0" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource5" 
                EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                GridLines="None" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
                Width="58%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                        SortExpression="darsad">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="wwforming" HeaderText="وزن ضایعات" 
                        SortExpression="wwforming">
                    <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sum_wast" HeaderText="تعداد ضایعات" 
                        SortExpression="sum_wast">
                    <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                     <asp:BoundField DataField="tot_weight" HeaderText="وزن تولید" 
                        SortExpression="tot_weight" >
                    <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sum_tot" HeaderText="جمع خالص تولید" 
                        SortExpression="sum_tot">
                    <HeaderStyle Font-Names="tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
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
    <br />
    </asp:Panel>
    <br />
        <asp:Panel ID="Panel3" runat="server" Width="77%" BorderStyle="Solid" >
            <asp:Label ID="lbltotalday0" runat="server" Font-Names="B Titr" 
                Text="آمار کل  تولیدی روزانه پرداخت" Width="43%" Font-Size="Small"></asp:Label>
        <br />
        <br />
                     <asp:GridView ID="grid_total0" runat="server" 
                AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource6" 
                EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                GridLines="None" ShowHeaderWhenEmpty="True" Width="65%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات" 
                                 SortExpression="darsad">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="waight_wast" HeaderText="وزن ضایعات" 
                                 SortExpression="waight_wast">
                             <HeaderStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_wastage" HeaderText="تعداد ضایعات" 
                                 SortExpression="total_wastage">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_pardakht" HeaderText="مجموع آیتم پرداختی" 
                                 SortExpression="total_pardakht">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
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
            <asp:GridView ID="grid_pardakht" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="#333333" 
                GridLines="None" Width="74%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="press_wast" HeaderText="ضایعات پرس" 
                        SortExpression="press_wast">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="press" HeaderText="تعداد پرس" ReadOnly="True" 
                        SortExpression="press">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="form_wast" HeaderText="ضایعات فرمینگ" 
                        SortExpression="form_wast">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="form" HeaderText="تعداد فرمینگ" ReadOnly="True" 
                        SortExpression="form">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="rikht_wast" HeaderText="ضایعات ریخته گری" 
                        SortExpression="rikht_wast">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="rikht" HeaderText="تعداد ریخته گری" ReadOnly="True" 
                        SortExpression="rikht">
                    <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
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
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel4" runat="server" Width="90%" BorderStyle="Solid" >
        <asp:Label ID="lbltotalday1" runat="server" Font-Names="B Titr" 
                Text="آمار کل  بارگیری کوره اصلی بیسکوییت" Width="43%" 
            Font-Size="Small"></asp:Label>
        <br />
        <asp:GridView ID="gridbis_day" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource8" 
            EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
            GridLines="None" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
            Width="95%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                    SortExpression="ww_bis">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="True" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wast_bis_day" HeaderText="ضایعات بیسکوییت" 
                    SortExpression="wast_bis_day">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="darsad" HeaderText="درصد ضایعات خام" 
                    SortExpression="darsad">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ww_raw" HeaderText="وزن ضایعات خام" 
                    SortExpression="ww_raw">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="wast_raw_day" HeaderText="ضایعات خام" 
                    SortExpression="wast_raw_day">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_press" HeaderText="تعداد آیتم پرس" 
                    SortExpression="total_press">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_forming" HeaderText="تعداد آیتم فرمینگ" 
                    SortExpression="total_forming">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_rikhtegari" HeaderText="تعداد آیتم ریخته گری" 
                    SortExpression="total_rikhtegari">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_waight" HeaderText="وزن کل" 
                    SortExpression="total_waight">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="total_day" HeaderText="تعداد کل" 
                    SortExpression="total_day">
                <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Wrap="False" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
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
    <br />
     <asp:Panel ID="Panel5" runat="server" Width="90%" BorderStyle="Solid" >
         <asp:Label ID="lbltotalday2" runat="server" Font-Names="B Titr" 
             Font-Size="Small" Text="آمار کل  بارگیری لعاب یک" Width="43%"></asp:Label>
     <br />
                <asp:GridView ID="grid_total_day_g1" runat="server" 
                    AutoGenerateColumns="False" 
                    CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                    Font-Names="Tahoma" Font-Size="Medium" ForeColor="#333333" GridLines="None" 
                    HorizontalAlign="Center" 
                    ShowHeaderWhenEmpty="True" Width="97%" 
             DataSourceID="SqlDataSource9">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="total_press" HeaderText="تعداد پرس" 
                            SortExpression="total_press">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_forming" HeaderText="تعداد فرمینگ" 
                            SortExpression="total_forming">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_rikhtegari" HeaderText="تعداد ریخته گری" 
                            SortExpression="total_rikhtegari">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_glaze" HeaderText="وزن ضایعات لعاب" 
                            SortExpression="ww_glaze">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                            SortExpression="ww_bis">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wast_glaze_day" HeaderText="تعداد ضایعات لعاب" 
                            SortExpression="wast_glaze_day">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wast_bis_day" HeaderText="تعداد ضایعات بیسکوییت" 
                            SortExpression="wast_bis_day">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tot_recovery" HeaderText="ترمیمی" 
                            SortExpression="tot_recovery">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_waight" HeaderText="وزن کل بدون ترمیم" 
                            SortExpression="total_waight">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_day" HeaderText="جمع کل بارگیری" 
                            SortExpression="total_day">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="True" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sum2_waight" HeaderText="وزن کل با ترمیم" 
                            SortExpression="sum2_waight">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                   <EditRowStyle BackColor="#2461BF" />
                         <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
                             HorizontalAlign="Center" VerticalAlign="Middle" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" 
                        HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" 
                        ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
    <br />
    </asp:Panel>
    <br />
     <asp:Panel ID="Panel6" runat="server" Width="90%" BorderStyle="Solid" >
         <asp:Label ID="lbltotalday3" runat="server" Font-Names="B Titr" 
             Font-Size="Small" Text="آمار کل  بارگیری لعاب دو" Width="43%"></asp:Label>
     <br />
                <asp:GridView ID="grid_total_day_g2" runat="server" 
                    AutoGenerateColumns="False" 
                    CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                    Font-Names="Tahoma" Font-Size="Medium" ForeColor="#333333" GridLines="None" 
                    HorizontalAlign="Center" 
                    ShowHeaderWhenEmpty="True" Width="97%" 
             DataSourceID="SqlDataSource10">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="total_press" HeaderText="تعداد پرس" 
                            SortExpression="total_press">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_forming" HeaderText="تعداد فرمینگ" 
                            SortExpression="total_forming">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_rikhtegari" HeaderText="تعداد ریخته گری" 
                            SortExpression="total_rikhtegari">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_glaze" HeaderText="وزن ضایعات لعاب" 
                            SortExpression="ww_glaze">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                            SortExpression="ww_bis">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wast_glaze_day" HeaderText="تعداد ضایعات لعاب" 
                            SortExpression="wast_glaze_day">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wast_bis_day" HeaderText="تعداد ضایعات بیسکوییت" 
                            SortExpression="wast_bis_day">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="tot_recovery" HeaderText="ترمیمی" 
                            SortExpression="tot_recovery">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_waight" HeaderText="وزن کل بدون ترمیم" 
                            SortExpression="total_waight">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_day" HeaderText="جمع کل بارگیری" 
                            SortExpression="total_day">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="True" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sum2_waight" HeaderText="وزن کل با ترمیم" 
                            SortExpression="sum2_waight">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                   <EditRowStyle BackColor="#2461BF" />
                         <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
                             HorizontalAlign="Center" VerticalAlign="Middle" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" 
                        HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" 
                        ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
    <br />
    </asp:Panel>
    <br />
        </asp:Panel>
     </center>
        
       
        
        <br />
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
            DeleteCommand="DELETE FROM [press_totalday] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [press_totalday] ([total_waight], [wast_waight], [tarikh], [total_day], [rework_day], [wast_day]) VALUES (@total_waight, @wast_waight, @tarikh, @total_day, @rework_day, @wast_day)" 
            
        
        
        
        SelectCommand="SELECT SUM(totalday) AS totalday, SUM(wastday) AS wastday, SUM(waight_wastday) AS waight_wastday, LEFT ((SUM(wastday) * 1.0) / (SUM(totalday) + SUM(wastday)) * 100, 4) AS darsad FROM rikht_totalday WHERE (tarikh BETWEEN @tarikh_s AND @tarikh_e)">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        DeleteCommand="DELETE FROM [press_total] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [press_total] ([item_id], [waight_wastage], [waight], [tarikh], [time_work], [time_stop], [total], [rework], [wastage]) VALUES (@item_id, @waight_wastage, @waight, @tarikh, @time_work, @time_stop, @total, @rework, @wastage)" 
        
        
        
        
        SelectCommand="SELECT     SUM(sum_totrework) AS totrework, SUM(total) AS tot, SUM(rework) AS rework, SUM(waight) AS waight, SUM(wastage) AS wast, SUM(waight_wastage) AS wwast, LEFT((SUM(wastage) * 1.0) 
                      / (SUM(sum_totrework) + SUM(wastage)) * 100, 4) AS darsad
FROM         dbo.press_total
WHERE     (tarikh BETWEEN @tarikh_s AND @tarikh_e)">
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
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
   <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     dbo.press_total.item_id, dbo.item.item_name, SUM(dbo.press_total.total) AS dailytotal, SUM(dbo.press_total.rework) AS dailyrework, SUM(dbo.press_total.sum_totrework) AS sumquantity, 
                      SUM(dbo.press_total.wastage) AS wastage, SUM(dbo.press_total.waight_wastage) AS tonagwastage, SUM(dbo.press_total.waight) AS totalwaight, LEFT((SUM(dbo.press_total.wastage) * 1.0) 
                      / (SUM(dbo.press_total.sum_totrework) + SUM(dbo.press_total.wastage)) * 100, 4) AS darsad
FROM         dbo.press_total INNER JOIN
                      dbo.item ON dbo.press_total.item_id = dbo.item.id
WHERE     (dbo.press_total.tarikh BETWEEN @tarikh_s AND @tarikh_e)
GROUP BY dbo.press_total.item_id, dbo.item.item_name">
            <SelectParameters>
                <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                    PropertyName="Text" />
            </SelectParameters>
    </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        SelectCommand="SELECT SUM(forming.total) AS total, SUM(forming.total_wastage) AS wastage, round(SUM(forming.total_wastage * item.waight_raw),2) AS ttforming, forming.item_id, item.item_name FROM forming INNER JOIN item ON forming.item_id = item.id WHERE (forming.tarikh BETWEEN @tarikh_s AND @tarikh_e) GROUP BY forming.item_id, item.item_name">
            <SelectParameters>
                <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                    PropertyName="Text" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        SelectCommand="
SELECT    REPLACE(ROUND(SUM(wtot_form), 2), '.', '/') AS tot_weight, SUM(total) AS sum_tot, SUM(total_wastage) AS sum_wast, SUM(wwforming) AS wwforming, '% ' + CAST(LEFT(SUM(total_wastage) * 1.0 / (SUM(total)+SUM(total_wastage)) * 100, 4) AS varchar) AS darsad
FROM         (SELECT     dbo.forming.total, dbo.forming.total_wastage,ROUND(dbo.forming.total_wastage * dbo.item.waight_raw, 2) AS wwforming,forming.total * item.waight_raw AS wtot_form
                        FROM         dbo.forming INNER JOIN
                                              dbo.item ON dbo.forming.item_id = dbo.item.id
                       WHERE (tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS derivedtbl_1">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT sum (total_pardakht) as total_pardakht, sum(total_wastage) as total_wastage,left((sum(total_wastage)*1.0/(sum(total_pardakht)+sum(total_wastage))*100),4) as darsad, sum(waight_wastage) as waight_wast  FROM pardakht_total where tarikh between @tarikh_s and @tarikh_e">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        SelectCommand="SELECT     (SELECT     SUM(dbo.pardakht1.total) AS press
                       FROM          dbo.pardakht1 INNER JOIN
                                              dbo.item ON dbo.pardakht1.item_id = dbo.item.id
                       WHERE      (dbo.item.sector_product = 3) AND (dbo.pardakht1.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS press,
                          (SELECT     SUM(pardakht_3.wastage) AS press_wast
                            FROM          dbo.pardakht1 AS pardakht_3 INNER JOIN
                                                   dbo.item AS item_3 ON pardakht_3.item_id = item_3.id
                            WHERE      (item_3.sector_product = 3) AND (pardakht_3.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS press_wast,
                          (SELECT     SUM(pardakht_2.total) AS form
                            FROM          dbo.pardakht1 AS pardakht_2 INNER JOIN
                                                   dbo.item AS item_2 ON pardakht_2.item_id = item_2.id
                            WHERE      (item_2.sector_product = 2) AND (pardakht_2.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS form,
                          (SELECT     SUM(pardakht_2.wastage) AS form_wast
                            FROM          dbo.pardakht1 AS pardakht_2 INNER JOIN
                                                   dbo.item AS item_2 ON pardakht_2.item_id = item_2.id
                            WHERE      (item_2.sector_product = 2) AND (pardakht_2.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS form_wast,
                          (SELECT     SUM(pardakht_1.total) AS rikht
                            FROM          dbo.pardakht1 AS pardakht_1 INNER JOIN
                                                   dbo.item AS item_1 ON pardakht_1.item_id = item_1.id
                            WHERE      (item_1.sector_product = 1) AND (pardakht_1.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS rikht,
                          (SELECT     SUM(pardakht_1.wastage) AS rikht_wast
                            FROM          dbo.pardakht1 AS pardakht_1 INNER JOIN
                                                   dbo.item AS item_1 ON pardakht_1.item_id = item_1.id
                            WHERE      (item_1.sector_product = 1) AND (pardakht_1.tarikh BETWEEN @tarikh_s AND @tarikh_e)) AS rikht_wast">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT  sum(total_waight) as total_waight, sum(ww_raw) as ww_raw, sum(ww_bis) as ww_bis, sum(total_day) as total_day, sum(wast_raw_day) as wast_raw_day, sum(wast_bis_day) as wast_bis_day, sum(total_press) as total_press, sum(total_forming) as total_forming, sum(total_rikhtegari) as total_rikhtegari,left((sum(wast_raw_day)*1.0/(sum(total_day)+sum(wast_raw_day))*100),4) as darsad FROM bis_total_day
where tarikh between @tarikh_s and @tarikh_e
">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     SUM(total_waight) AS total_waight, SUM(ww_glaze) AS ww_glaze, SUM(ww_bis) AS ww_bis, SUM(wast_glaze_day) AS wast_glaze_day, SUM(total_day) AS total_day, sum(tot_recover) as tot_recovery,sum(total_waight+waight_recover) as sum2_waight,
                      SUM(wast_bis_day) AS wast_bis_day, SUM(total_press) AS total_press, SUM(total_forming) AS total_forming, SUM(total_rikhtegari) AS total_rikhtegari, 
                      SUM(glazing_sum) AS glazing_sum
FROM         dbo.glaze1_total_day
WHERE     (tarikh BETWEEN @tarikh_s AND @tarikh_e)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     SUM(total_waight) AS total_waight, SUM(ww_glaze) AS ww_glaze, SUM(ww_bis) AS ww_bis, SUM(wast_glaze_day) AS wast_glaze_day, SUM(total_day) AS total_day, sum(tot_recover) as tot_recovery,sum(total_waight+waight_recover) as sum2_waight,
                      SUM(wast_bis_day) AS wast_bis_day, SUM(total_press) AS total_press, SUM(total_forming) AS total_forming, SUM(total_rikhtegari) AS total_rikhtegari, 
                      SUM(glazing_sum) AS glazing_sum
FROM         dbo.glaze2_total_day
WHERE     (tarikh BETWEEN @tarikh_s AND @tarikh_e)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

