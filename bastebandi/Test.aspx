<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="bastebandi_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<%--  <script src="https://sipjs.com/download/sip-0.14.6.js" ></script>--%>
    
<%--    <a href="sip:kpereira@domain.com">dial kpereira@domain.com</a>
    
    <video id="remoteVideo"></video>
    <video id="localVideo" muted="muted"></video>--%>
    <script>
        readTextFile("E:/test.txt");
        function readTextFile(file) {
            var rawFile = new XMLHttpRequest();
            rawFile.open("GET", file, false);
            rawFile.onreadystatechange = function () {
                if (rawFile.readyState === 4) {
                    if (rawFile.status === 200 || rawFile.status == 0) {
                        var allText = rawFile.responseText;
                        alert(allText);
                    }
                }
            }
            rawFile.send(null);
        }
    </script>
    <%--<link rel="stylesheet" href="Kendi-Ui/kendo.common.min.css" />
    <link rel="stylesheet" href="Kendi-Ui/kendo.blueopal.min.css" />
    <script src="Kendi-Ui/jquery.min.js"></script>
    <script src="Kendi-Ui/kendo.all.min.js"></script>
    <input type="checkbox" id="ch" />--%>


    <%--<div id="div">
        <input type="checkbox" id="check1"  checked />
        <input type="checkbox" id="check2"  />
        <input type="checkbox" id="check3"  />
    </div>

    <script>
        $('input[name=check]').on('change', function () {
            var chekbox = $(this);
            if ($('#div').find('input[checked]').length > 0) {
                console.log('you can not check multiple');
                $('input[checked]').removeAttr('checked');
                chekbox.prop('checked',true);
            }
        });
    </script>--%>

</asp:Content>

