<%@ Page Title="گزارشات موجودی آیتم ها" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="report_anbar.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
        <br />
        <br />
        <center style=" vertical-align:middle; width: 100%;" > 
            <br />
            <asp:Button ID="print" runat="server" onclick="print_Click" Text="print" 
                Width="69px" />
            <br />
            <br />
                <asp:Button ID="btnprint" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    onclick="btnprint_Click" Text="چاپ" Width="98px" TabIndex="5" />
        <br />
        </center>
         <center style=" vertical-align:middle;" > 
            <asp:Panel ID="pnlrikhtegari" runat="server" Width="95%">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="B Titr" 
                    Text="آمار موجودی آیتم ها به تفکیک واحد"></asp:Label>
                <br />
                <asp:Label ID="lbldate_e" runat="server" Font-Names="tahoma" Font-Size="Small" 
                    Width="14%"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    Text=": تاریخ" Width="16%"></asp:Label>
                <br />
                     <br />
                     <asp:GridView ID="gridbis_day" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    EmptyDataText="داده ای برای نمایش وجود ندارد" ForeColor="#333333" 
                    GridLines="Vertical" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
                    Width="95%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="glaze2_recive" HeaderText="انبار بیسکوییت لعاب 2" 
                                 SortExpression="glaze2_recive">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="glaze1_recive" HeaderText="انبار بیسکوییت لعاب 1" 
                                 SortExpression="glaze1_recive">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="biscuit_recive" HeaderText="آیتم خام" 
                                 SortExpression="biscuit_recive">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Tahoma" 
                                 Font-Size="Small" />
                             </asp:BoundField>
                             <asp:BoundField DataField="rework_recive" HeaderText="بازکاری " 
                                 SortExpression="rework_recive">
                             <HeaderStyle Font-Names="Tahoma" Font-Size="X-Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" Wrap="False" />
                             <ItemStyle Font-Names="Tahoma" Font-Size="Small" HorizontalAlign="Center" 
                                 VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="item_name" HeaderText="نام آیتم" 
                                 SortExpression="item_name">
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
                <br />
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


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:taghdis_amar %>" 
        ProviderName="<%$ ConnectionStrings:taghdis_amar.ProviderName %>" 
        
        
        
        
        
        SelectCommand="SELECT item.item_name, sum_item.rework_recive, sum_item.biscuit_recive, sum_item.glaze1_recive, sum_item.glaze2_recive FROM sum_item INNER JOIN item ON sum_item.item_id = item.id">
    </asp:SqlDataSource>

    <br />
    <br />
    <br />
    <br />
    </asp:Content>

