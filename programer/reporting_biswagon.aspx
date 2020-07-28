<%@ Page Title="گزارشات بارگیری کوره اصلی" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reporting_biswagon.aspx.cs" Inherits="_Default" %>

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
            <asp:Button ID="btnshow" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                onclick="btnshow_Click" Text="نمایش" TabIndex="4" />
            <br />
            <br />
     <asp:Button ID="btnexcell" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            Text="خروجی اکسل" onclick="btnexcell_Click" />
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="98px" TabIndex="5" style="margin-left: 25px" />
        <br />
        </center>
         <center style=" vertical-align:middle;" > 
            <asp:Panel ID="pnlrikhtegari" runat="server" Width="95%" >
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="B Titr" 
                    Text="آمار بارگیری واحد بیسکوییت"></asp:Label>
                <br />
                <asp:Label ID="lbldate_e" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":تا تاریخ" Width="8%"></asp:Label>
                <asp:Label ID="lbldate_s" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    Width="10%"></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=":از تاریخ" Width="11%"></asp:Label>
                <br />
                     <br />
                <asp:GridView ID="grid_raw" runat="server" AutoGenerateColumns="False" 
                    BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    DataSourceID="kiln_wast_raw" Font-Names="B titr" Font-Size="Small" 
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
                    <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
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
                    DataSourceID="kiln_wast_bis" Font-Names="B titr" Font-Size="Small" 
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
                    <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                     <asp:GridView ID="grid_totwiaght" runat="server" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Caption="تناژ و تعداد بارگیری کوره اصلی" CellPadding="4" DataSourceID="bis_total_waight" Font-Names="B titr" Font-Size="Small" ForeColor="#333333" Width="49%">
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
                         <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="Black" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                     <br />
                     <asp:GridView ID="gridbis_day" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource2" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                    GridLines="None" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
                    Width="95%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="darsad_bis" HeaderText="درصد ض بیسکوییت" 
                                 SortExpression="darsad_bis" >
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Tahoma" 
                                 Font-Size="Small" />
                             </asp:BoundField>
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
                             <asp:BoundField DataField="darsad_raw" HeaderText="درصد ضایعات خام" 
                                 SortExpression="darsad_raw">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Tahoma" 
                                 Font-Size="Small" />
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
                <asp:Label ID="Label10" runat="server" Font-Names="B Titr" 
                    Text="تعداد واگن بارگیری شده"></asp:Label>
                <asp:Label ID="lblwagon" runat="server" Font-Names="b titr" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Names="B Titr" Text="واگن"></asp:Label>
                <br />
                <asp:GridView ID="gridbis" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                    GridLines="None" ShowHeaderWhenEmpty="True" Width="95%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="darsad_bis" HeaderText="درصد ض بیسکوییت" 
                            SortExpression="darsad_bis" >
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_bis" HeaderText="وزن ضایعات بیسکوییت" 
                            SortExpression="ww_bis">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wastage_bis" HeaderText="ضایعات بیسکوییت" 
                            SortExpression="wastage_bis">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="darsad_raw" HeaderText="درصد ض خام" 
                            SortExpression="darsad_raw" >
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ww_raw" HeaderText="وزن ضایعات خام" 
                            SortExpression="ww_raw">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="wastage_raw" HeaderText="ضایعات خام" 
                            SortExpression="wastage_raw">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="waight" HeaderText="وزن" SortExpression="waight">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total" HeaderText="تعداد بارگیری" 
                            SortExpression="total">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                            SortExpression="item_name">
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
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
                     <br />
            <br />
     
    <br />
                
             <br />
            </asp:Panel>
            </center>
            <br /><br />
            <br />
     <br />
    
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        DeleteCommand="DELETE FROM [biscuit_total_day] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [biscuit_total_day] ([total_waight], [ww_raw], [ww_bis], [total_day], [wast_raw_day], [wast_bis_day], [total_press], [total_forming], [total_rikhtegari], [tarikh]) VALUES (@total_waight, @ww_raw, @ww_bis, @total_day, @wast_raw_day, @wast_bis_day, @total_press, @total_forming, @total_rikhtegari, @tarikh)" 
        SelectCommand="SELECT SUM(total_waight) AS total_waight, SUM(ww_raw) AS ww_raw, SUM(ww_bis) AS ww_bis, SUM(total_day) AS total_day, SUM(wast_raw_day) AS wast_raw_day, SUM(wast_bis_day) AS wast_bis_day, SUM(total_press) AS total_press, SUM(total_forming) AS total_forming, SUM(total_rikhtegari) AS total_rikhtegari, LEFT ((SUM(wast_raw_day) * 1.0) / (SUM(total_day) + SUM(wast_raw_day)) * 100, 4) AS darsad_raw, LEFT ((SUM(wast_bis_day) * 1.0) / (SUM(total_day) + SUM(wast_bis_day)) * 100, 4) AS darsad_bis FROM bis_total_day WHERE (tarikh BETWEEN @tarikh_s AND @tarikh_e)" 
        
        
        
        
        
        
        
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
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
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
        
        
        
        
        
        SelectCommand="SELECT item.item_name, SUM(bis_total.total) AS total, SUM(bis_total.waight) AS waight, SUM(bis_total.wastage_bis) AS wastage_bis, SUM(bis_total.wastage_raw) AS wastage_raw, SUM(bis_total.ww_raw) AS ww_raw, SUM(bis_total.ww_bis) AS ww_bis, LEFT ((SUM(bis_total.wastage_raw) * 1.0) / (SUM(bis_total.total) + SUM(bis_total.wastage_raw)) * 100, 4) AS darsad_raw, LEFT ((SUM(bis_total.wastage_bis) * 1.0) / (SUM(bis_total.total) + SUM(bis_total.wastage_bis)) * 100, 4) AS darsad_bis FROM item INNER JOIN bis_total ON item.id = bis_total.item_id WHERE (bis_total.tarikh BETWEEN @tarikh_s AND @tarikh_e) GROUP BY item.item_name, bis_total.item_id">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikh_s" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikh_e" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="kiln_wast_raw" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT     (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                        FROM         (SELECT     dbo.bis_total.item_id, dbo.item.waight_raw * dbo.bis_total.wastage_raw AS wast
                                                FROM         dbo.bis_total INNER JOIN
                                                                      dbo.item ON dbo.bis_total.item_id = dbo.item.id
                                                WHERE     (dbo.bis_total.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.bis_total.wastage_raw &gt; 0) AND (dbo.item.sector_product = 1)) AS derivedtbl_1) AS Wrikhtegari,
                          (SELECT     SUM(wastage_raw) AS Expr1
                             FROM         (SELECT     bis_total_5.item_id, bis_total_5.wastage_raw
                                                     FROM         dbo.bis_total AS bis_total_5 INNER JOIN
                                                                           dbo.item AS item_1 ON bis_total_5.item_id = item_1.id
                                                     WHERE     (bis_total_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_5.wastage_raw &gt; 0) AND (item_1.sector_product = 1)) AS derivedtbl_1_1) AS Trikhtegari,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     bis_total_4.item_id, item_3.waight_raw * bis_total_4.wastage_raw AS wast
                                                     FROM         dbo.bis_total AS bis_total_4 INNER JOIN
                                                                           dbo.item AS item_3 ON bis_total_4.item_id = item_3.id
                                                     WHERE     (bis_total_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_4.wastage_raw &gt; 0) AND (item_3.sector_product = 2)) AS derivedtbl_1_3) AS Wforming,
                          (SELECT     SUM(wastage_raw) AS Expr1
                             FROM         (SELECT     bis_total_3.item_id, bis_total_3.wastage_raw
                                                     FROM         dbo.bis_total AS bis_total_3 INNER JOIN
                                                                           dbo.item AS item_1 ON bis_total_3.item_id = item_1.id
                                                     WHERE     (bis_total_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_3.wastage_raw &gt; 0) AND (item_1.sector_product = 2)) AS derivedtbl_1_1_2) AS Tforming,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     bis_total_2.item_id, item_2.waight_raw * bis_total_2.wastage_raw AS wast
                                                     FROM         dbo.bis_total AS bis_total_2 INNER JOIN
                                                                           dbo.item AS item_2 ON bis_total_2.item_id = item_2.id
                                                     WHERE     (bis_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_2.wastage_raw &gt; 0) AND (item_2.sector_product = 3)) AS derivedtbl_1_2) AS Wpress,
                          (SELECT     SUM(wastage_raw) AS Expr1
                             FROM         (SELECT     bis_total_1.item_id, bis_total_1.wastage_raw
                                                     FROM         dbo.bis_total AS bis_total_1 INNER JOIN
                                                                           dbo.item AS item_1 ON bis_total_1.item_id = item_1.id
                                                     WHERE     (bis_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_1.wastage_raw &gt; 0) AND (item_1.sector_product = 3)) AS derivedtbl_1_1_1) AS Tpress">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="kiln_wast_bis" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                        FROM         (SELECT     dbo.bis_total.item_id, dbo.item.waight_bis * dbo.bis_total.wastage_bis AS wast
                                                FROM         dbo.bis_total INNER JOIN
                                                                      dbo.item ON dbo.bis_total.item_id = dbo.item.id
                                                WHERE     (dbo.bis_total.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.bis_total.wastage_bis &gt; 0) AND (dbo.item.sector_product = 1) ) 
                                              AS derivedtbl_1) AS Wrikhtegari,
                          (SELECT     SUM(wastage_bis) AS Expr1
                             FROM         (SELECT     bis_total_5.item_id, bis_total_5.wastage_bis
                                                     FROM         dbo.bis_total AS bis_total_5 INNER JOIN
                                                                           dbo.item AS item_1 ON bis_total_5.item_id = item_1.id
                                                     WHERE     (bis_total_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_5.wastage_bis &gt; 0) AND (item_1.sector_product = 1) ) 
                                                   AS derivedtbl_1_1) AS Trikhtegari,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     bis_total_4.item_id, item_3.waight_bis * bis_total_4.wastage_bis AS wast
                                                     FROM         dbo.bis_total AS bis_total_4 INNER JOIN
                                                                           dbo.item AS item_3 ON bis_total_4.item_id = item_3.id
                                                     WHERE     (bis_total_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_4.wastage_bis &gt; 0) AND (item_3.sector_product = 2) ) 
                                                   AS derivedtbl_1_3) AS Wforming,
                          (SELECT     SUM(wastage_bis) AS Expr1
                             FROM         (SELECT     bis_total_3.item_id, bis_total_3.wastage_bis
                                                     FROM         dbo.bis_total AS bis_total_3 INNER JOIN
                                                                           dbo.item AS item_1 ON bis_total_3.item_id = item_1.id
                                                     WHERE     (bis_total_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_3.wastage_bis &gt; 0) AND (item_1.sector_product = 2) ) 
                                                   AS derivedtbl_1_1_2) AS Tforming,
                          (SELECT     CAST(FLOOR(SUM(wast)) AS varchar(10)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                             FROM         (SELECT     bis_total_2.item_id, item_2.waight_bis * bis_total_2.wastage_bis AS wast
                                                     FROM         dbo.bis_total AS bis_total_2 INNER JOIN
                                                                           dbo.item AS item_2 ON bis_total_2.item_id = item_2.id
                                                     WHERE     (bis_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_2.wastage_bis &gt; 0) AND (item_2.sector_product = 3) ) 
                                                   AS derivedtbl_1_2) AS Wpress,
                          (SELECT     SUM(wastage_bis) AS Expr1
                             FROM         (SELECT     bis_total_1.item_id, bis_total_1.wastage_bis
                                                     FROM         dbo.bis_total AS bis_total_1 INNER JOIN
                                                                           dbo.item AS item_1 ON bis_total_1.item_id = item_1.id
                                                     WHERE     (bis_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (bis_total_1.wastage_bis &gt; 0) AND (item_1.sector_product = 3) ) 
                                                   AS derivedtbl_1_1_1) AS Tpress">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <asp:SqlDataSource ID="bis_total_waight" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     (SELECT     CAST(CAST(FLOOR(SUM(wast)) AS decimal(12, 0)) AS nvarchar(12)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                       FROM          (SELECT     SUM(dbo.bis_total.waight) AS wast
                                               FROM          dbo.bis_total INNER JOIN
                                                                      dbo.item ON dbo.bis_total.item_id = dbo.item.id
                                               WHERE      (dbo.bis_total.tarikh BETWEEN @tarikhS AND @tarikhE) AND (dbo.item.sector_product = 1)) AS derivedtbl_1) AS Wrikhtegari,
                          (SELECT     SUM(total) AS Expr1
                            FROM          (SELECT     bis_total_5.item_id, bis_total_5.total
                                                    FROM          dbo.bis_total AS bis_total_5 INNER JOIN
                                                                           dbo.item AS item_1 ON bis_total_5.item_id = item_1.id
                                                    WHERE      (bis_total_5.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 1)) AS derivedtbl_1_1) AS Trikhtegari,
                          (SELECT     CAST(CAST(FLOOR(SUM(wast)) AS decimal(12, 0)) AS nvarchar(12)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                            FROM          (SELECT     SUM(bis_total_4.waight) AS wast
                                                    FROM          dbo.bis_total AS bis_total_4 INNER JOIN
                                                                           dbo.item AS item_3 ON bis_total_4.item_id = item_3.id
                                                    WHERE      (bis_total_4.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_3.sector_product = 2)) AS derivedtbl_1_3) AS Wforming,
                          (SELECT     SUM(total) AS Expr1
                            FROM          (SELECT     bis_total_3.item_id, bis_total_3.total
                                                    FROM          dbo.bis_total AS bis_total_3 INNER JOIN
                                                                           dbo.item AS item_1 ON bis_total_3.item_id = item_1.id
                                                    WHERE      (bis_total_3.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 2)) AS derivedtbl_1_1_2) AS Tforming,
                          (SELECT     CAST(CAST(FLOOR(SUM(wast)) AS decimal(12, 0)) AS nvarchar(12)) + '/' + RIGHT(LEFT(SUM(wast) - FLOOR(SUM(wast)), 4), 2) AS weight
                            FROM          (SELECT     SUM(bis_total_2.waight) AS wast
                                                    FROM          dbo.bis_total AS bis_total_2 INNER JOIN
                                                                           dbo.item AS item_2 ON bis_total_2.item_id = item_2.id
                                                    WHERE      (bis_total_2.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_2.sector_product = 3)) AS derivedtbl_1_2) AS Wpress,
                          (SELECT     SUM(total) AS Expr1
                            FROM          (SELECT     bis_total_1.item_id, bis_total_1.total
                                                    FROM          dbo.bis_total AS bis_total_1 INNER JOIN
                                                                           dbo.item AS item_1 ON bis_total_1.item_id = item_1.id
                                                    WHERE      (bis_total_1.tarikh BETWEEN @tarikhS AND @tarikhE) AND (item_1.sector_product = 3)) AS derivedtbl_1_1_1) AS Tpress">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldate_s" Name="tarikhS" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="lbldate_e" Name="tarikhE" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />
    <br />
    </asp:Content>

