<%@ Page Title="گزراشات بارگیری کوره شاتل" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reporting_shatel.aspx.cs" Inherits="_Default" %>

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
        <table dir="ltr" 
                style="margin-left: 0px; width: 64%; table-layout: fixed; border-collapse: separate;" __designer:mapid="c6" 
                id="tbldate" width="70%" border="0" frame="border">
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
                    <asp:Label ID="Label4" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text=":تا تاریخ"></asp:Label>
                </td>
                 <td class="style1" __designer:mapid="cc">
                    <asp:Label ID="Label5" runat="server" Font-Names="tahoma" Font-Size="Small" 
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="6">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="5">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="4">
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
                            Font-Size="Small" style="margin-left: 0px" Width="60px" TabIndex="2">
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
        <asp:RadioButtonList ID="rdbshatel" runat="server" Font-Names="Tahoma" 
            Font-Size="Small" style="margin-left: 0px" TabIndex="7">
            <asp:ListItem Selected="True" Value="1">شاتل یک</asp:ListItem>
            <asp:ListItem Value="2">شاتل دو</asp:ListItem>
        </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnshow" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                onclick="btnshow_Click" Text="نمایش" TabIndex="8" />
            <br />
            <br />
     <asp:Button ID="btnexcell" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="خروجی اکسل" onclick="btnexcell_Click" />
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="98px" TabIndex="9" style="margin-left: 25px" />
            <br />
        <br />
        </center>
         <center style=" vertical-align:middle;" > 
            <asp:Panel ID="pnlrikhtegari" runat="server" Width="95%">
                <br />
                <center>
                <asp:Label ID="lblshatel" runat="server" Font-Names="b titr" Font-Size="Medium" 
                    ForeColor="#0000CC" Width="100px"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Names="B Titr" 
                    Text="آمار بارگیری شاتل بیسکوییت" ></asp:Label>
                <br />
                <asp:Label ID="lbldate_e" runat="server" Font-Names="b titr" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":تا تاریخ" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_s" runat="server" Font-Names="b titr" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":از تاریخ" Width="11%"></asp:Label>
                <br />
                <br />
                     <asp:GridView ID="grid_raw" runat="server" AutoGenerateColumns="False" 
                    BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    DataSourceID="shatel_wast_raw" Font-Names="B titr" Font-Size="Small" 
                    ForeColor="#333333" Width="49%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="Wrikhtegari" HeaderText="وزن ریخته گری" 
                                 ReadOnly="True" SortExpression="Wrikhtegari">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Trikhtegari" HeaderText="تعداد ریخته گری" 
                                 ReadOnly="True" SortExpression="Trikhtegari">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Wforming" HeaderText="وزن فرمینگ" ReadOnly="True" 
                                 SortExpression="Wforming">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Tforming" HeaderText="تعداد فرمینگ" ReadOnly="True" 
                                 SortExpression="Tforming">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Wpress" HeaderText="وزن پرس" ReadOnly="True" 
                                 SortExpression="Wpress">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Tpress" HeaderText="تعداد پرس" ReadOnly="True" 
                                 SortExpression="Tpress">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                <asp:GridView ID="grid_bis" runat="server" AutoGenerateColumns="False" 
                    BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    DataSourceID="shatel_wast_bis" Font-Names="B titr" Font-Size="Small" 
                    ForeColor="#333333" Width="49%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Wrikhtegari" HeaderText="وزن ریخته گری" 
                            ReadOnly="True" SortExpression="Wrikhtegari">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Trikhtegari" HeaderText="تعداد ریخته گری" 
                            ReadOnly="True" SortExpression="Trikhtegari">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Wforming" HeaderText="وزن فرمینگ" ReadOnly="True" 
                            SortExpression="Wforming">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Tforming" HeaderText="تعداد فرمینگ" ReadOnly="True" 
                            SortExpression="Tforming">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Wpress" HeaderText="وزن پرس" ReadOnly="True" 
                            SortExpression="Wpress">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Tpress" HeaderText="تعداد پرس" ReadOnly="True" 
                            SortExpression="Tpress">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                    <br/>
                     <asp:GridView ID="grid_waight" runat="server" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="shatel_waight_total" Font-Names="B titr" Font-Size="Small" ForeColor="#333333" Width="49%" Caption="تناژ و تعداد آیتم های بارگیری شده">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="Wrikhtegari" HeaderText="وزن ریخته گری" ReadOnly="True" SortExpression="Wrikhtegari">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Trikhtegari" HeaderText="تعداد ریخته گری" ReadOnly="True" SortExpression="Trikhtegari">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Wforming" HeaderText="وزن فرمینگ" ReadOnly="True" SortExpression="Wforming">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Tforming" HeaderText="تعداد فرمینگ" ReadOnly="True" SortExpression="Tforming">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Wpress" HeaderText="وزن پرس" ReadOnly="True" SortExpression="Wpress">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Tpress" HeaderText="تعداد پرس" ReadOnly="True" SortExpression="Tpress">
                             <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                    
                     <asp:GridView ID="gridshatel_day" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource2" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                    GridLines="None" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
                    Width="95%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="darsad_bis" HeaderText="درصد ضایعات بیسکوییت" 
                                 SortExpression="darsad_bis">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                                 SortExpression="ww_bis">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="True" />
                             <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="wast_bis_day" HeaderText="ضایعات بیسکوییت" 
                                 SortExpression="wast_bis_day">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="darsad_raw" HeaderText="درصد ضایعات خام" 
                                 SortExpression="darsad_raw">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" 
                                 Font-Size="Small" />
                             </asp:BoundField>
                             <asp:BoundField DataField="ww_raw" HeaderText="وزن ضایعات خام" 
                                 SortExpression="ww_raw">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="wast_raw_day" HeaderText="ضایعات خام" 
                                 SortExpression="wast_raw_day">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_press" HeaderText="تعداد آیتم پرس" 
                                 SortExpression="total_press">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_forming" HeaderText="تعداد آیتم فرمینگ" 
                                 SortExpression="total_forming">
                             <HeaderStyle Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_rikhtegari" HeaderText="تعداد آیتم ریخته گری" 
                                 SortExpression="total_rikhtegari">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_waight" HeaderText="وزن کل" 
                                 SortExpression="total_waight">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="total_day" HeaderText="تعداد کل" 
                                 SortExpression="total_day">
                             <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" />
                         <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" 
                             HorizontalAlign="Center" VerticalAlign="Middle" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                             Font-Names="b titr" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" Font-Names="b titr" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <br />
                <asp:GridView ID="gridshatel" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" Font-Names="Tahoma" 
                    Font-Size="Small" ForeColor="#333333" GridLines="None" 
                    ShowHeaderWhenEmpty="True" Width="95%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="wastage_bis" HeaderText="تعداد ضایعات بیسکوییت" 
                            SortExpression="wastage_bis">
                        <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wastage_raw" HeaderText="تعداد ضایعات خام" 
                            SortExpression="wastage_raw">
                        <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                            SortExpression="ww_bis">
                        <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_raw" HeaderText="وزن ضایعات خام" 
                            SortExpression="ww_raw">
                        <HeaderStyle Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_cary" HeaderText="تعداد بارگیری" 
                            SortExpression="total_cary">
                        <HeaderStyle  Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                            SortExpression="item_name">
                        <HeaderStyle Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle  Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#0066FF" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                        Font-Names="b titr" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" Font-Names="b titr" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                 </center>
             <br />
            </asp:Panel>
            </center>
            <br /><br />
            <br />
     <br />
    </center>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        DeleteCommand="DELETE FROM [biscuit_total_day] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [biscuit_total_day] ([total_waight], [ww_raw], [ww_bis], [total_day], [wast_raw_day], [wast_bis_day], [total_press], [total_forming], [total_rikhtegari], [tarikh]) VALUES (@total_waight, @ww_raw, @ww_bis, @total_day, @wast_raw_day, @wast_bis_day, @total_press, @total_forming, @total_rikhtegari, @tarikh)" 
        SelectCommand="SELECT SUM(total_day) AS total_day, SUM(wast_bis_day) AS wast_bis_day, SUM(wast_raw_day) AS wast_raw_day, SUM(total_waight) AS total_waight, CAST(SUM(ww_bis) AS decimal(10 , 3)) AS ww_bis, CAST(SUM(ww_raw) AS decimal(10 , 3)) AS ww_raw, SUM(total_press) AS total_press, SUM(total_forming) AS total_forming, LEFT ((SUM(wast_raw_day) * 1.0) / (SUM(total_day) + SUM(wast_raw_day)) * 100, 4) AS darsad_raw, LEFT (SUM(wast_bis_day) * 1.0 / SUM(total_day) * 100, 4) AS darsad_bis, SUM(total_rikhtegari) AS total_rikhtegari FROM shatel_total_day WHERE (tarikh BETWEEN @tarikh_s AND @tarihk_e) AND (number_shatel = @shatel)" 
        
        
        
        
        
        
        
        
        UpdateCommand="UPDATE [biscuit_total_day] SET [total_waight] = @total_waight, [ww_raw] = @ww_raw, [ww_bis] = @ww_bis, [total_day] = @total_day, [wast_raw_day] = @wast_raw_day, [wast_bis_day] = @wast_bis_day, [total_press] = @total_press, [total_forming] = @total_forming, [total_rikhtegari] = @total_rikhtegari, [tarikh] = @tarikh WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="total_waight" Type="Double" />
            <asp:Parameter Name="ww_raw" Type="Double" />
            <asp:Parameter Name="ww_bis" Type="Double" />
            <asp:Parameter Name="total_day" Type="Int32" />
            <asp:Parameter Name="wast_raw_day" Type="Int32" />
            <asp:Parameter Name="wast_bis_day" Type="Int32" />
            <asp:Parameter Name="total_press" Type="Int32" />
            <asp:Parameter Name="total_forming" Type="Int32" />
            <asp:Parameter Name="total_rikhtegari" Type="Int32" />
            <asp:Parameter Name="tarikh" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarihk_e" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="rdbshatel" Name="shatel" 
                PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="total_waight" Type="Double" />
            <asp:Parameter Name="ww_raw" Type="Double" />
            <asp:Parameter Name="ww_bis" Type="Double" />
            <asp:Parameter Name="total_day" Type="Int32" />
            <asp:Parameter Name="wast_raw_day" Type="Int32" />
            <asp:Parameter Name="wast_bis_day" Type="Int32" />
            <asp:Parameter Name="total_press" Type="Int32" />
            <asp:Parameter Name="total_forming" Type="Int32" />
            <asp:Parameter Name="total_rikhtegari" Type="Int32" />
            <asp:Parameter Name="tarikh" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        SelectCommand="SELECT SUM(shatel.total_carry) AS total_cary, SUM(shatel.wastage_bis) AS wastage_bis, SUM(shatel.wastage_raw) AS wastage_raw, SUM(shatel.ww_bis) AS ww_bis, SUM(shatel.ww_raw) AS ww_raw, item.item_name FROM shatel INNER JOIN item ON shatel.item_id = item.id WHERE (shatel.tarikh BETWEEN @tarikh_s AND @tarikh_e) AND (shatel.num_shatel = @shatel) GROUP BY shatel.item_id, item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="rdbshatel" Name="shatel" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="shatel_wast_raw" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                        FROM         (SELECT     dbo.shatel.item_id, dbo.item.waight_raw * dbo.shatel.wastage_raw AS wast
                                                FROM         dbo.shatel INNER JOIN
                                                                      dbo.item ON dbo.shatel.item_id = dbo.item.id
                                                WHERE     (dbo.shatel.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.shatel.wastage_raw &gt; 0) AND (dbo.item.sector_product = 1) AND (dbo.shatel.num_shatel = @shatel)) 
                                              AS derivedtbl_1) AS Wrikhtegari,
                          (SELECT     SUM(wastage_raw) AS Expr1
                             FROM         (SELECT     shatel_5.item_id, shatel_5.wastage_raw
                                                     FROM         dbo.shatel AS shatel_5 INNER JOIN
                                                                           dbo.item AS item_1 ON shatel_5.item_id = item_1.id
                                                     WHERE     (shatel_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_5.wastage_raw &gt; 0) AND (item_1.sector_product = 1) AND (shatel_5.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_1) AS Trikhtegari,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     shatel_4.item_id, item_3.waight_raw * shatel_4.wastage_raw AS wast
                                                     FROM         dbo.shatel AS shatel_4 INNER JOIN
                                                                           dbo.item AS item_3 ON shatel_4.item_id = item_3.id
                                                     WHERE     (shatel_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_4.wastage_raw &gt; 0) AND (item_3.sector_product = 2) AND (shatel_4.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_3) AS Wforming,
                          (SELECT     SUM(wastage_raw) AS Expr1
                             FROM         (SELECT     shatel_3.item_id, shatel_3.wastage_raw
                                                     FROM         dbo.shatel AS shatel_3 INNER JOIN
                                                                           dbo.item AS item_1 ON shatel_3.item_id = item_1.id
                                                     WHERE     (shatel_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_3.wastage_raw &gt; 0) AND (item_1.sector_product = 2) AND (shatel_3.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_1_2) AS Tforming,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     shatel_2.item_id, item_2.waight_raw * shatel_2.wastage_raw AS wast
                                                     FROM         dbo.shatel AS shatel_2 INNER JOIN
                                                                           dbo.item AS item_2 ON shatel_2.item_id = item_2.id
                                                     WHERE     (shatel_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_2.wastage_raw &gt; 0) AND (item_2.sector_product = 3) AND (shatel_2.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_2) AS Wpress,
                          (SELECT     SUM(wastage_raw) AS Expr1
                             FROM         (SELECT     shatel_1.item_id, shatel_1.wastage_raw
                                                     FROM         dbo.shatel AS shatel_1 INNER JOIN
                                                                           dbo.item AS item_1 ON shatel_1.item_id = item_1.id
                                                     WHERE     (shatel_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_1.wastage_raw &gt; 0) AND (item_1.sector_product = 3) AND (shatel_1.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_1_1) AS Tpress">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="rdbshatel" Name="shatel" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="shatel_wast_bis" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                        FROM         (SELECT     dbo.shatel.item_id, dbo.item.waight_bis * dbo.shatel.wastage_bis AS wast
                                                FROM         dbo.shatel INNER JOIN
                                                                      dbo.item ON dbo.shatel.item_id = dbo.item.id
                                                WHERE     (dbo.shatel.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.shatel.wastage_bis &gt; 0) AND (dbo.item.sector_product = 1) AND (dbo.shatel.num_shatel = @shatel)) 
                                              AS derivedtbl_1) AS Wrikhtegari,
                          (SELECT     SUM(wastage_bis) AS Expr1
                             FROM         (SELECT     shatel_5.item_id, shatel_5.wastage_bis
                                                     FROM         dbo.shatel AS shatel_5 INNER JOIN
                                                                           dbo.item AS item_1 ON shatel_5.item_id = item_1.id
                                                     WHERE     (shatel_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_5.wastage_bis &gt; 0) AND (item_1.sector_product = 1) AND (shatel_5.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_1) AS Trikhtegari,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     shatel_4.item_id, item_3.waight_bis * shatel_4.wastage_bis AS wast
                                                     FROM         dbo.shatel AS shatel_4 INNER JOIN
                                                                           dbo.item AS item_3 ON shatel_4.item_id = item_3.id
                                                     WHERE     (shatel_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_4.wastage_bis &gt; 0) AND (item_3.sector_product = 2) AND (shatel_4.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_3) AS Wforming,
                          (SELECT     SUM(wastage_bis) AS Expr1
                             FROM         (SELECT     shatel_3.item_id, shatel_3.wastage_bis
                                                     FROM         dbo.shatel AS shatel_3 INNER JOIN
                                                                           dbo.item AS item_1 ON shatel_3.item_id = item_1.id
                                                     WHERE     (shatel_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_3.wastage_bis &gt; 0) AND (item_1.sector_product = 2) AND (shatel_3.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_1_2) AS Tforming,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     shatel_2.item_id, item_2.waight_bis * shatel_2.wastage_bis AS wast
                                                     FROM         dbo.shatel AS shatel_2 INNER JOIN
                                                                           dbo.item AS item_2 ON shatel_2.item_id = item_2.id
                                                     WHERE     (shatel_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_2.wastage_bis &gt; 0) AND (item_2.sector_product = 3) AND (shatel_2.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_2) AS Wpress,
                          (SELECT     SUM(wastage_bis) AS Expr1
                             FROM         (SELECT     shatel_1.item_id, shatel_1.wastage_bis
                                                     FROM         dbo.shatel AS shatel_1 INNER JOIN
                                                                           dbo.item AS item_1 ON shatel_1.item_id = item_1.id
                                                     WHERE     (shatel_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (shatel_1.wastage_bis &gt; 0) AND (item_1.sector_product = 3) AND (shatel_1.num_shatel = @shatel)) 
                                                   AS derivedtbl_1_1_1) AS Tpress">
    <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="rdbshatel" Name="shatel" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="shatel_waight_total" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT (SELECT CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT (LEFT (SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight FROM (SELECT shatel.item_id, shatel.item_bis * shatel.total_carry AS wast FROM shatel INNER JOIN item ON shatel.item_id = item.id WHERE (shatel.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item.sector_product = 1) AND (shatel.num_shatel = @shatel)) AS derivedtbl_1) AS Wrikhtegari, (SELECT SUM(total_carry) AS Expr1 FROM (SELECT shatel_5.item_id, shatel_5.total_carry FROM shatel AS shatel_5 INNER JOIN item AS item_1 ON shatel_5.item_id = item_1.id WHERE (shatel_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1) AND (shatel_5.num_shatel = @shatel)) AS derivedtbl_1_1) AS Trikhtegari, (SELECT CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT (LEFT (SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight FROM (SELECT shatel_4.item_id, shatel_4.item_bis * shatel_4.total_carry AS wast FROM shatel AS shatel_4 INNER JOIN item AS item_3 ON shatel_4.item_id = item_3.id WHERE (shatel_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_3.sector_product = 2) AND (shatel_4.num_shatel = @shatel)) AS derivedtbl_1_3) AS Wforming, (SELECT SUM(total_carry) AS Expr1 FROM (SELECT shatel_3.item_id, shatel_3.total_carry FROM shatel AS shatel_3 INNER JOIN item AS item_1 ON shatel_3.item_id = item_1.id WHERE (shatel_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 2) AND (shatel_3.num_shatel = @shatel)) AS derivedtbl_1_1_2) AS Tforming, (SELECT CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT (LEFT (SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight FROM (SELECT shatel_2.item_id, shatel_2.item_bis * shatel_2.total_carry AS wast FROM shatel AS shatel_2 INNER JOIN item AS item_2 ON shatel_2.item_id = item_2.id WHERE (shatel_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 3) AND (shatel_2.num_shatel = @shatel)) AS derivedtbl_1_2) AS Wpress, (SELECT SUM(total_carry) AS Expr1 FROM (SELECT shatel_1.item_id, shatel_1.total_carry FROM shatel AS shatel_1 INNER JOIN item AS item_1 ON shatel_1.item_id = item_1.id WHERE (shatel_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 3) AND (shatel_1.num_shatel = @shatel)) AS derivedtbl_1_1_1) AS Tpress">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="rdbshatel" Name="shatel" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />
    <br />
    <br />
    </asp:Content>

