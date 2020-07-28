<%@ Page Title="گزارشات گل" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="report_gol_customer_tarikh.aspx.cs" Inherits="_Default" %>

<%--<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <style>
 .classname {    
    position: absolute;  
    top: 200px;  
    left: 200px;
}
.mg-image img {
    -webkit-transition: all 1s ease; /* Safari and Chrome */
    -moz-transition: all 1s ease; /* Firefox */
    -o-transition: all 1s ease; /* IE 9 */
    -ms-transition: all 1s ease; /* Opera */
    transition: all 1s ease;
        max-width: 30%;
}
.mg-image:hover img {
    -webkit-transform:scale(2.0); /* Safari and Chrome */
    -moz-transform:scale(2.0); /* Firefox */
    -ms-transform:scale(2.0); /* IE 9 */
    -o-transform:scale(2.0); /* Opera */
     transform:scale(2.0);
}
.mainBodyPosition
{
    padding-top:25px;
    padding-bottom:45px;
    padding-left:45px;
    padding-right:45px;
    width:80%;
}
      .body {
   background: url(“images/sample.jpg”) repeat-xy;

  }
  .GVLeftIndex
{
padding-left:50px;
margin:5px;
height:23px;
text-align:right;
}
.gridalign
{
width:auto;
text-align:center;
padding-right:15px;
padding-left:15px;
}

.leftalign
{
direction:ltr;
}

.rightalign
{
direction:rtl;
}
       </style>            
        <br />
       
      <center style=" vertical-align:middle; margin-bottom: 26px;" > 


    <asp:Panel ID="pnlserch" runat="server" BorderColor="#A062FF" BorderStyle="Solid" 
        Width="90%"  HorizontalAlign="Right">
        <center>
        <asp:Label ID="Label102" runat="server" Font-Names="Tahoma" Font-Size="Large" 
            Text="مانده برگ هر مشتری" Width="35%" ForeColor="Blue"></asp:Label>
            <br />
        </center>
        <center>
            
            <asp:Label ID="Label99" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Small" style="text-align :right" Text="سال" Width="10%"></asp:Label>
            <asp:Label ID="Label100" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Small" style="text-align :center" Text="ماه" Width="12%"></asp:Label>
            <asp:Label ID="Label101" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Small" style="text-align :left" Text="روز" Width="6%"></asp:Label>
            <asp:Label ID="Label95" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Small" style="text-align :right" Text="سال" Width="15%"></asp:Label>
            <asp:Label ID="Label96" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Small" style="text-align :center; margin-top: 0px;" Text="ماه" 
                Width="9%"></asp:Label>
            <asp:Label ID="Label97" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                Font-Size="Small" style="text-align :left" Text="روز" Width="20%"></asp:Label>
        <br />
            
        <asp:DropDownList ID="yerfin" runat="server" Font-Names="Tahoma" 
            Font-Size="Small" TabIndex="20" Width="8%">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>1380</asp:ListItem>
            <asp:ListItem>1381</asp:ListItem>
            <asp:ListItem>1382</asp:ListItem>
            <asp:ListItem>1383</asp:ListItem>
            <asp:ListItem>1384</asp:ListItem>
            <asp:ListItem>1385</asp:ListItem>
            <asp:ListItem>1386</asp:ListItem>
            <asp:ListItem>1387</asp:ListItem>
            <asp:ListItem>1388</asp:ListItem>
            <asp:ListItem>1389</asp:ListItem>
            <asp:ListItem Value="1390">1390</asp:ListItem>
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
        <asp:DropDownList ID="monfin" runat="server" Font-Names="Tahoma" 
            Font-Size="Small" style="margin-left: 0px" TabIndex="19" Width="6%">
            <asp:ListItem Selected="True"></asp:ListItem>
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
        <asp:DropDownList ID="dayfin" runat="server" Font-Names="Tahoma" 
            Font-Size="Small" style="margin-right: 10px" TabIndex="18" Width="6%">
            <asp:ListItem Selected="True"></asp:ListItem>
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
     
        <asp:Label ID="Label98" runat="server" Font-Names="Tahoma" Font-Size="Small" 
             Text=": تا تاریخ" Width="11%"></asp:Label>
               <asp:DropDownList ID="yerstart" runat="server" Font-Names="Tahoma" 
                Font-Size="Small" TabIndex="20" Width="8%">
                   <asp:ListItem Selected="True"></asp:ListItem>
                   <asp:ListItem>1380</asp:ListItem>
                   <asp:ListItem>1381</asp:ListItem>
                   <asp:ListItem>1382</asp:ListItem>
                   <asp:ListItem>1383</asp:ListItem>
                   <asp:ListItem>1384</asp:ListItem>
                   <asp:ListItem>1385</asp:ListItem>
                   <asp:ListItem>1386</asp:ListItem>
                   <asp:ListItem>1387</asp:ListItem>
                   <asp:ListItem>1388</asp:ListItem>
                   <asp:ListItem>1389</asp:ListItem>
                   <asp:ListItem Value="1390">1390</asp:ListItem>
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
            <asp:DropDownList ID="monstart" runat="server" Font-Names="Tahoma" 
                Font-Size="Small" style="margin-left: 0px" TabIndex="19" Width="6%">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Selected="True">01</asp:ListItem>
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
            <asp:DropDownList ID="daystart" runat="server" Font-Names="Tahoma" 
                Font-Size="Small" style="margin-right: 10px" TabIndex="18" Width="6%">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Selected="True">01</asp:ListItem>
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
            <asp:Label ID="Label70" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                Text=": از تاریخ" Width="11%"></asp:Label>
               <br />
            <br />
            <asp:DropDownList ID="ddlcustomer" runat="server" Font-Names="Tahoma" 
                Font-Size="Small" TabIndex="7" Width="9%" DataSourceID="SqlDataSource9" 
                DataTextField="customer_number" DataValueField="id">
            </asp:DropDownList>
            <asp:Label ID="Label32" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                Text=": مشتری" Width="8%"></asp:Label>
            <br />
               </center>
                
        <center>
            <asp:Label ID="lfinish" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                Visible="False" Width="11%"></asp:Label>
            <asp:Label ID="lstart" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                Visible="False" Width="11%"></asp:Label>
        <br />
            <asp:Button ID="serch" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                onclick="serch_Click1" TabIndex="22" Text="جستجو" Width="10%" />
            <br />
            <br />
            <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                onclick="btnprint_Click" TabIndex="9" Text="چاپ" Width="98px" />
            <br />
            <br />
            <asp:Panel ID="pnlprint" runat="server">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="lcustomer" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="Small" Width="11%"></asp:Label>
                    <asp:Label ID="Label105" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text=": مشتری" Width="9%"></asp:Label>
                    <asp:Label ID="lfinishprintstart" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="Small" Font-Strikeout="False" Width="13%"></asp:Label>
                    <asp:Label ID="Label104" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text=": تا تاریخ" Width="17%"></asp:Label>
                    <asp:Label ID="Label103" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="Medium" Text="از ابتدا" Width="11%"></asp:Label>
                    <asp:Label ID="Label109" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="Medium" Text="مانده" Width="9%"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="gridrepcust" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlDataSource1" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                        GridLines="Horizontal" ShowHeaderWhenEmpty="True" TabIndex="17" Visible="False" 
                        Width="95%">
                        <pagersettings mode="Numeric" pagebuttoncount="5" position="Bottom" />
                        <PagerStyle CssClass="cssPager" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="a4" HeaderText="A4" SortExpression="a4">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a7182" HeaderText="71*82" SortExpression="a7182">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a6585" HeaderText="65*85" SortExpression="a6585">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a6080" HeaderText="60*80" SortExpression="a6080">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a5271" HeaderText="52*71" SortExpression="a5271">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a5070" HeaderText="50*70" SortExpression="a5070">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a4060" HeaderText="40*60" SortExpression="a4060">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a2535" HeaderText="25*35" SortExpression="a2535">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a10070" HeaderText="100*70" SortExpression="a10070">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <EmptyDataRowStyle ForeColor="Red" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#CC9900" Font-Bold="True" ForeColor="White" />
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
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="lcustomer2" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="Small" Width="11%"></asp:Label>
                    <asp:Label ID="Label106" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text=": مشتری" Width="9%"></asp:Label>
                    <asp:Label ID="lfinishprint" runat="server" Font-Bold="True" 
                        Font-Names="Tahoma" Font-Size="Small" Width="16%"></asp:Label>
                    <asp:Label ID="Label107" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text=": تا تاریخ" Width="13%"></asp:Label>
                    <asp:Label ID="lstartprint" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="Small" Width="16%"></asp:Label>
                    <asp:Label ID="Label108" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        Text=": از تاریخ" Width="13%"></asp:Label>
                    <asp:Label ID="Label110" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                        Font-Size="Medium" Text="مانده" Width="9%"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="gridrepcusttarikh" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlDataSource2" 
                        EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                        GridLines="Horizontal" ShowHeaderWhenEmpty="True" TabIndex="17" 
                        Width="95%">
                        <pagersettings mode="Numeric" pagebuttoncount="5" position="Bottom" />
                        <PagerStyle CssClass="cssPager" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="a4" HeaderText="A4" SortExpression="a4">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a7182" HeaderText="71*82" SortExpression="a7182">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a6585" HeaderText="65*85" SortExpression="a6585">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a6080" HeaderText="60*80" SortExpression="a6080">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a5271" HeaderText="52*71" SortExpression="a5271">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a5070" HeaderText="50*70" SortExpression="a5070">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a4060" HeaderText="40*60" SortExpression="a4060">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a2535" HeaderText="25*35" SortExpression="a2535">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="a10070" HeaderText="100*70" SortExpression="a10070">
                            <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                            <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <EmptyDataRowStyle ForeColor="Red" HorizontalAlign="Center" 
                            VerticalAlign="Middle" Wrap="False" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#CC9900" Font-Bold="True" ForeColor="White" />
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
            <asp:Panel ID="Panel3" runat="server">
                <asp:Label ID="lcustomer3" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                    Font-Size="Small" Width="11%"></asp:Label>
                <asp:Label ID="Label111" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=": مشتری" Width="9%"></asp:Label>
                <asp:Label ID="Label114" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                    Font-Size="Small" Text="مانده در حال حاضر" Width="13%"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="staynow" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource3" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                    GridLines="Horizontal" ShowHeaderWhenEmpty="True" TabIndex="17" Width="95%">
                    <pagersettings mode="Numeric" pagebuttoncount="5" position="Bottom" />
                    <PagerStyle CssClass="cssPager" />
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="a4" HeaderText="A4" SortExpression="a4">
                        <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                        <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="a7182" HeaderText="71*82" SortExpression="a7182">
                        <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                        <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="a6585" HeaderText="65*85" SortExpression="a6585">
                        <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                        <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="a6080" HeaderText="60*80" SortExpression="a6080">
                        <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                        <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="a5271" HeaderText="52*71" SortExpression="a5271">
                        <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                        <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="a5070" HeaderText="50*70" SortExpression="a5070">
                        <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                        <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="a4060" HeaderText="40*60" SortExpression="a4060">
                        <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                        <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="a2535" HeaderText="25*35" SortExpression="a2535">
                        <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                        <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="a10070" HeaderText="100*70" SortExpression="a10070">
                        <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                        <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataRowStyle ForeColor="Red" HorizontalAlign="Center" 
                        VerticalAlign="Middle" Wrap="False" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#CC9900" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </asp:Panel>
             </asp:Panel>
            <br />
            <asp:Label ID="lidgol" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                Visible="False" Width="11%"></asp:Label>
            <asp:Button ID="back" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                onclick="back_Click" TabIndex="22" Text="برگشت" Visible="False" Width="10%" />
            <br />
        </center>
        
        </asp:Panel>
        </center>
        
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
        ConnectionString="<%$ ConnectionStrings:depogol %>" 
        DeleteCommand="DELETE FROM [customer] WHERE [id] = @id" 
        
        InsertCommand="INSERT INTO [customer] ([customer_name], [customer_number], [permit]) VALUES (@customer_name, @customer_number, @permit)" SelectCommand="SELECT [id], [customer_name], [customer_number], [permit] FROM [customer]
where permit=1" 
        
        UpdateCommand="UPDATE [customer] SET [customer_name] = @customer_name, [customer_number] = @customer_number, [permit] = @permit WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="customer_name" Type="String" />
                <asp:Parameter Name="customer_number" Type="String" />
                <asp:Parameter Name="permit" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="customer_name" Type="String" />
                <asp:Parameter Name="customer_number" Type="String" />
                <asp:Parameter Name="permit" Type="Boolean" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
        ConnectionString="<%$ ConnectionStrings:depogol %>" 
        SelectCommand="SELECT TOP (100) PERCENT flow_info.nam_f, flow_info.cod_f, flow_info.date_first_come, flow_info.customer_f, SUM(arrange_gol.count_in_barg) AS input, SUM(arrange_gol.remain_barg) AS remain, flow_info.id, flow_info.color_f, flow_info.type_color, flow_info.typ_f FROM flow_info INNER JOIN arrange_gol ON flow_info.id = arrange_gol.id_gol WHERE (flow_info.date_first_come BETWEEN @ls AND @fs) AND (flow_info.customer_f_id = @ddl) GROUP BY flow_info.nam_f, flow_info.cod_f, flow_info.date_first_come, flow_info.customer_f, flow_info.id, flow_info.color_f, flow_info.type_color, flow_info.typ_f ORDER BY flow_info.date_first_come,flow_info.nam_f">
            <SelectParameters>
                <asp:ControlParameter ControlID="lstart" Name="ls" PropertyName="Text" />
                <asp:ControlParameter ControlID="lfinish" Name="fs" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlcustomer" Name="ddl" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:depogol %>" 
                
                
        
        SelectCommand="SELECT * FROM [help_repcus2]">
            </asp:SqlDataSource>
        
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:depogol %>" 
                
                
        SelectCommand="SELECT * FROM [help_repcus_now]">
            </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:depogol %>" 
        SelectCommand="SELECT * FROM [help_3]"></asp:SqlDataSource>
        
        <br />
        
        <br />

       
        <br />
        <br />
        <br />


</asp:Content>


