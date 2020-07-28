<%@ Page Title="گزارشات گل" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="report_gol_dimen.aspx.cs" Inherits="_Default" %>

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
            Text="گزارش ابعاد برگ ها" Width="35%" ForeColor="Blue"></asp:Label>
            <br />
        </center>
                
        <center>
            <br />
            <asp:GridView ID="gridsumserch" runat="server" 
                AutoGenerateColumns="False" CellPadding="4" EmptyDataText="داده ای برای نمایش وجود ندارد" 
                ForeColor="#333333" GridLines="Horizontal" onrowcommand="gridsumserch_RowCommand" 
                ShowHeaderWhenEmpty="True" TabIndex="17" Width="95%" 
                DataSourceID="SqlDataSource8">
                <pagersettings mode="Numeric" pagebuttoncount="5" position="Bottom" />
                <PagerStyle CssClass="cssPager" />
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="sum" HeaderText="تعداد برگ مانده" ReadOnly="True" 
                        SortExpression="sum">
                    <ControlStyle Font-Names="Tahoma" Font-Size="Small" />
                    <FooterStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <HeaderStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dim_arr" HeaderText="اندازه ابعاد" 
                        SortExpression="dim_arr">
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
        </center>
        
        </asp:Panel>
        </center>
        
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
        ConnectionString="<%$ ConnectionStrings:depogol %>" 
        
        
        SelectCommand="SELECT SUM(remain_barg) AS sum, dim_arr FROM arrange_gol WHERE (dim_arr &lt;&gt; '---') GROUP BY dim_arr ORDER BY dim_arr">
    </asp:SqlDataSource>
        
        <br />
        
        <br />

       
        <br />
        <br />
        <br />


</asp:Content>


