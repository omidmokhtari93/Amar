<%@ Page Title="وزن آیتم ها" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="item_waight.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 276px;
            height: 97px;
        }
        .style3
        {
            width: 273px;
            height: 97px;
        }
        .style2
        {
            width: 275px;
            height: 97px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
        <center style=" vertical-align:middle; width: 100%;" > 
            <br />
            <br />
            <br />
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="98px" TabIndex="5" />
        <br />
        
            <asp:Panel ID="pnlrikhtegari" runat="server" Width="63%" >
                <table align="center" border="0" 
                    style="border-width: 0px; padding: 0px; width: 721px">
                    <tr>
                        <td class="style4">
                            <asp:Label ID="lbltarikh" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                                ForeColor="Blue"></asp:Label>
                            <asp:Label ID="Label13" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                                Text=":آخرین ویرایش و  تایید در تاریخ "></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label12" runat="server" Font-Names="B Titr" 
                                Text="جدول وزن آیتم ها"></asp:Label>
                        </td>
                        <td class="style2">
                            <asp:Image ID="arm" runat="server" Height="91px" ImageAlign="Right" 
                                ImageUrl="~/Images/arm.jpg" style="margin-left: 0px" Width="111px" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Width="86%" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sec" HeaderText="بخش تولید" 
                            SortExpression="sec" >
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="waight_porcelain" HeaderText="وزن چینی سفید" 
                            SortExpression="waight_porcelain" >
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="waight_bis" HeaderText="وزن بیسکوییت" 
                            SortExpression="waight_bis" >
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="waight_raw" HeaderText="وزن خام-خشک" 
                            SortExpression="waight_raw" >
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                            SortExpression="item_name">
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
                     <br />
          
            </asp:Panel>
            </center>
            <br />
  
    <br />


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT item_name, waight_raw, waight_bis, waight_porcelain, CASE WHEN sector_product = 1 THEN 'ریخته گری' WHEN sector_product = 2 THEN 'فرمینگ' ELSE 'پرس' END AS sec,sector_product FROM item ORDER BY sector_product,item_name" 
        
        
        
            UpdateCommand="UPDATE sum_item SET item_id = @item_id, sum_rework = @sum_rework, rework_recive = @rework_recive, pardakht_result = @pardakht_result, depot_raw = @depot_raw, biscuit_recive = @biscuit_recive, biscuit_result = @biscuit_result, biscuit_get = @biscuit_get, glaze1_recive = @glaze1_recive, glaze1_exchange = @glaze1_exchange, glaze1_glazing = @glaze1_glazing, glaze1_result = @glaze1_result, glaze2_recive = @glaze2_recive, glaze2_exchange = @glaze2_exchange, glaze2_glazing = @glaze2_glazing, glaze2_result = @glaze2_result WHERE (item_id = @item_id)">
        <UpdateParameters>
            <asp:Parameter Name="item_id" />
            <asp:Parameter Name="sum_rework" />
            <asp:Parameter Name="rework_recive" />
            <asp:Parameter Name="pardakht_result" />
            <asp:Parameter Name="depot_raw" />
            <asp:Parameter Name="biscuit_recive" />
            <asp:Parameter Name="biscuit_result" />
            <asp:Parameter Name="biscuit_get" />
            <asp:Parameter Name="glaze1_recive" />
            <asp:Parameter Name="glaze1_exchange" />
            <asp:Parameter Name="glaze1_glazing" />
            <asp:Parameter Name="glaze1_result" />
            <asp:Parameter Name="glaze2_recive" />
            <asp:Parameter Name="glaze2_exchange" />
            <asp:Parameter Name="glaze2_glazing" />
            <asp:Parameter Name="glaze2_result" />
        </UpdateParameters>
    </asp:SqlDataSource>

    
    </asp:Content>

