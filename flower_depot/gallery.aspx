<%@ Page Title="" Language="C#" MasterPageFile="~/flower_depot/flower_report.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="flower_depot_gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <asp:Repeater ID="rpt" runat="server">
        <ItemTemplate>
            <asp:image ID="img" runat="server" ImageUrl="<%# Container.DataItem %>" CssClass="img-thumbnail" style="width: 100px; height: 100px; display: inline-block;"/>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

