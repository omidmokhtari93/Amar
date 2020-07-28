<%@ Page Title="مشاهده آمار پرس" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="press_total_hour.aspx.cs" Inherits="_Default" %>

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

<center style=" vertical-align:middle;" > 
        <asp:Panel ID="pnlsearch" runat="server" BorderStyle="Solid" Width="341px" 
            Height="72px">
            <table dir="ltr" style="margin-left: 0px; width: 19%;" 
                id="tbldate0">
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblyear" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="سال"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:Label ID="lblmounth" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text="ماه"></asp:Label>
                    </td>
                    <td class="style1">
                        <asp:Label ID="lblday" runat="server" Font-Names="tahoma" Font-Size="Small" 
                        Text="روز"></asp:Label>
                    </td>
                    <tr>
                        <td class="style2">
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
                        <td class="style3">
                            <asp:DropDownList ID="drmounth" runat="server" Font-Names="Tahoma" 
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
                        <td class="style1">
                            <asp:DropDownList ID="drday" runat="server" Font-Names="Tahoma" 
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
            <br />
        </asp:Panel>
    <br />
        <asp:Button ID="btnshow" runat="server" Text="نمایش" Font-Names="Tahoma" 
        Font-Size="Small" onclick="btnshow_Click" Width="70px" TabIndex="5" />
        </center>
    <br />
    
    <center style=" vertical-align:middle;" >
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="98px" />
    <br />
                    <asp:Panel ID="pnlpress" runat="server" Width="983px">
                        <asp:Label ID="lbldateshow" runat="server" Font-Names="b yekan" Font-Size="Medium" style="margin-left: 0px" Width="95px"></asp:Label>
                        <asp:Label ID="lbldate" runat="server" Font-Names="b yekan" Font-Size="Medium" Height="17px" style="margin-left: 0px" Text="کارکرد واحد پرس در تاریخ" Width="202px"></asp:Label>
                        <br />
                        <asp:GridView ID="gridpress" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sqlpress" ForeColor="#333333" GridLines="None" Width="904px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="perhour" HeaderText="میانگین بر ساعت" SortExpression="perhour">
                                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#000099" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="total" HeaderText="جمع تولید" SortExpression="total">
                                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="wast" HeaderText="ضایعات" SortExpression="wast" >
                                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#000099" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="rew" HeaderText="بازکاری" SortExpression="rew">
                                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#000099" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="tot" HeaderText="پرداختی" SortExpression="tot">
                                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="machine_code" HeaderText="کد دستگاه" SortExpression="machine_code">
                                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="#000099" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="item_name" HeaderText="نام آیتم" SortExpression="item_name">
                                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
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
                    </asp:Panel>
    <br /> 
        &nbsp;</center>
    <br />
    <center style=" vertical-align:middle; " > 
        <hr style="width: 738px; color: #000000;" />
    <br />
    <br />

        <br />
        <br />

<br />

        <br />

<br />
  
    </center>
     <asp:SqlDataSource ID="sqlpress" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT     TOP (100) PERCENT dbo.press.item_id, dbo.press.machine_code, SUM(dbo.press.quantity) AS tot, SUM(dbo.press.rework) AS rew, dbo.item.item_name, SUM(dbo.press.quantity) 
                      + SUM(dbo.press.rework) + SUM(dbo.press.wastage) AS total, (SUM(dbo.press.quantity) + SUM(dbo.press.rework) + SUM(dbo.press.wastage)) / 22 AS perhour, SUM(dbo.press.wastage) 
                      AS wast
FROM         dbo.press INNER JOIN
 item ON press.item_id = item.id WHERE (press.tarikh = @tarikh) AND (press.machine_code NOT IN (SELECT machine_code FROM press AS press_1 WHERE (tarikh = @tarikh) AND (change_ghaleb = 1))) GROUP BY press.item_id, press.machine_code, item.item_name ORDER BY press.machine_code">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldateshow" Name="tarikh" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>


   


    
    <br />


    </asp:Content>

