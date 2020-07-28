<%@ Page Title="مشاهده آمار شیفت" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="result_shift.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI.DataVisualization.Charting" Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>

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
         <asp:RadioButtonList ID="rdbglaze" runat="server" Font-Names="Tahoma" style="margin-left: 52%;"
        Font-Size="Medium"  TabIndex="-1" Width="152px">
        <asp:ListItem Value="1">لعاب یک</asp:ListItem>
        <asp:ListItem Value="2" Selected="True">لعاب دو</asp:ListItem>
    </asp:RadioButtonList>
            <hr style="color: #000000; font-size: medium; width: 740px;" />
            <br />
         <asp:RadioButtonList ID="rdbshift" runat="server" Font-Names="Tahoma" 
        Font-Size="Medium"  TabIndex="4" Width="191px" style="margin-left: 489px">
        <asp:ListItem Value="1" Selected="True">شیفت یک</asp:ListItem>
        <asp:ListItem Value="2">شیفت دو</asp:ListItem>
        <asp:ListItem Value="3">شیفت سه</asp:ListItem>
    </asp:RadioButtonList>
    <br />
        <asp:Button ID="btnshow" runat="server" Text="نمایش" Font-Names="Tahoma" 
        Font-Size="Small" onclick="btnshow_Click" Width="70px" TabIndex="5" />
        </center>
    <br />
    
    <center style=" vertical-align:middle;" >
                    <asp:Label ID="lblfaz" runat="server" Font-Names="b titr" 
            Font-Size="Medium"></asp:Label>
    <br />
    <br /> 
    <asp:Label ID="lblerror" runat="server" Font-Names="Tahoma" Font-Size="Small" 
        Text="وجود ندارد" Visible="False" Font-Bold="True" ForeColor="Red" 
        style="margin-left: 0px" Width="83px"></asp:Label>

    <asp:Label ID="lbldateshow" runat="server" Width="95px" 
        style="margin-left: 0px" Font-Names="Tahoma" Font-Size="Small"></asp:Label>

    <asp:Label ID="lbldate" runat="server" Font-Names="Tahoma" Font-Size="Small" 
        Height="17px" Text=": آمار تناژ واگن ها در تاریخ" Width="202px" 
        style="margin-left: 0px"></asp:Label>
        &nbsp;</center>
    <br />
    <center style=" vertical-align:middle; " > 
        <asp:Chart ID="chart_wagon" runat="server" BackSecondaryColor="White" 
            BorderlineColor="Transparent" Width="739px">
            <Series>
                <asp:Series IsValueShownAsLabel="True" IsVisibleInLegend="False" Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisY>
                        <MajorGrid Enabled="False" />
                    </AxisY>
                    <AxisX>
                        <MajorGrid Enabled="False" />
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    <br />
    <br />
        <asp:GridView ID="grid_wagon" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" 
            onpageindexchanging="grid_wagon_PageIndexChanging" Width="418px" 
            ShowHeaderWhenEmpty="True" EmptyDataText="اطلاعاتی برای نمایش وجود ندارد">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="tonazh" HeaderText="تناژ شیفت" ReadOnly="True" 
                    SortExpression="tonazh">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="shift" HeaderText="شیفت" 
                    SortExpression="shift">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataRowStyle Font-Names="Tahoma" Font-Size="Small" ForeColor="Blue" 
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
        <asp:GridView ID="gridshift" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="747px" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="rikht_weight" HeaderText="وزن ریخته گری" 
                    SortExpression="rikht_weight" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="rikht" HeaderText="ریخته گری" 
                    SortExpression="rikht">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" ForeColor="#000099" />
                </asp:BoundField>
                <asp:BoundField DataField="form_weight" HeaderText="وزن فرمینگ" 
                    SortExpression="form_weight" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="form" HeaderText="فرمینگ" SortExpression="form" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" ForeColor="#000099" />
                </asp:BoundField>
                <asp:BoundField DataField="press_weight" HeaderText="وزن پرس" 
                    SortExpression="press_weight" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="press" HeaderText="پرس" SortExpression="press" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                    VerticalAlign="Middle" ForeColor="#000099" />
                </asp:BoundField>
                <asp:BoundField DataField="shift" HeaderText="شیفت" SortExpression="shift" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
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
        <hr style="width: 738px; color: #000000;" />
        <asp:Label ID="lblshiftt" runat="server" Font-Names="Tahoma" Font-Size="Small" 
            ForeColor="Blue"></asp:Label>

<br />

        <asp:GridView ID="grid_shift_item" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="item_id" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Width="418px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="waight" HeaderText="وزن" SortExpression="waight" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Medium" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Medium" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="tot_carry" HeaderText="تعداد بارگیری" 
                    SortExpression="tot_carry">
                <HeaderStyle Font-Names="Tahoma" Font-Size="Medium" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <ItemStyle Font-Names="Tahoma" Font-Size="Medium" HorizontalAlign="Center" 
                    VerticalAlign="Middle" ForeColor="#000099" />
                </asp:BoundField>
                <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                    SortExpression="item_name" >
                <HeaderStyle Font-Names="Tahoma" Font-Size="Medium" HorizontalAlign="Center" 
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
  
    </center>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" SelectCommand="SELECT    max(tarikh)as tarikh,SUM(waight) as tonazh,cast((shift) as varchar)+'  :شیفت  ' as shift
FROM         dbo.glaze1_wagon
WHERE     (tarikh = @tarikh) 
group by shift">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldateshow" Name="tarikh" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT    max(tarikh)as tarikh,SUM(waight) as tonazh,cast((shift) as varchar)+'  :شیفت  ' as shift
FROM         dbo.glaze2_wagon
WHERE     (tarikh = @tarikh) 
group by shift">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldateshow" Name="tarikh" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>


   


    
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        DeleteCommand="DELETE FROM [glaze1_wagon] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [glaze1_wagon] ([shift], [tarikh], [num_wagon], [item_id], [tot_carry], [w_por], [waight]) VALUES (@shift, @tarikh, @num_wagon, @item_id, @tot_carry, @w_por, @waight)" 
        SelectCommand="SELECT MAX(glaze1_wagon.tarikh) AS tarikh, glaze1_wagon.item_id, SUM(glaze1_wagon.tot_carry) AS tot_carry, item.item_name, sum(glaze1_wagon.waight) as waight FROM glaze1_wagon INNER JOIN item ON glaze1_wagon.item_id = item.id WHERE (glaze1_wagon.tarikh = @tarikh) AND (glaze1_wagon.shift = @shift) GROUP BY glaze1_wagon.item_id, item.item_name" 
        
        UpdateCommand="UPDATE [glaze1_wagon] SET [shift] = @shift, [tarikh] = @tarikh, [num_wagon] = @num_wagon, [item_id] = @item_id, [tot_carry] = @tot_carry, [w_por] = @w_por, [waight] = @waight WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="shift" Type="Byte" />
            <asp:Parameter Name="tarikh" Type="String" />
            <asp:Parameter Name="num_wagon" Type="Byte" />
            <asp:Parameter Name="item_id" Type="Int32" />
            <asp:Parameter Name="tot_carry" Type="Int32" />
            <asp:Parameter Name="w_por" Type="Single" />
            <asp:Parameter Name="waight" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldateshow" Name="tarikh" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="rdbshift" Name="shift" 
                PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="shift" Type="Byte" />
            <asp:Parameter Name="tarikh" Type="String" />
            <asp:Parameter Name="num_wagon" Type="Byte" />
            <asp:Parameter Name="item_id" Type="Int32" />
            <asp:Parameter Name="tot_carry" Type="Int32" />
            <asp:Parameter Name="w_por" Type="Single" />
            <asp:Parameter Name="waight" Type="Decimal" />
            <asp:Parameter Name="id" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>


   


    
    <asp:SqlDataSource ID="SqlDataSource22" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT MAX(glaze2_wagon.tarikh) AS tarikh, glaze2_wagon.item_id, SUM(glaze2_wagon.tot_carry) AS tot_carry, item.item_name, sum(glaze2_wagon.waight) as waight FROM glaze2_wagon INNER JOIN item ON glaze2_wagon.item_id = item.id WHERE (glaze2_wagon.tarikh = @tarikh) AND (glaze2_wagon.shift = @shift) GROUP BY glaze2_wagon.item_id, item.item_name">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbldateshow" Name="tarikh" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="rdbshift" Name="shift" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>


   


    
    <asp:SqlDataSource ID="SqlDataSource222" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        SelectCommand="SELECT [shift], [press], [press_weight], [form], [form_weight], [rikht], [rikht_weight] FROM [glaze2_shift]">
    </asp:SqlDataSource>


   


    
    <asp:SqlDataSource ID="SqlDataSource111" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        SelectCommand="SELECT * FROM [glaze1_shift]"></asp:SqlDataSource>


   


    
    <br />


    </asp:Content>

