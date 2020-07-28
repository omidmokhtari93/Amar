<%@ Page Title="" Language="C#" MasterPageFile="~/Decor/MasterPage.master" AutoEventWireup="true" CodeFile="Depo.aspx.cs" Inherits="Decor_Depo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="decor-contents"></div>
    <script>
        $(function () {
            $('#decor-contents').load('/flower_depot/BastebandiDepo.html',
                function() {
                    $('#decor-contents').find('nav').remove();
                    $('#decor-contents').find('#main_panel').removeClass('panel-body');
                    $('#decor-contents').find('.nav-tabs').remove();
                    $('#decor-contents').find('.panel-heading').addClass('text-center');
                });
        })
    </script>
</asp:Content>

