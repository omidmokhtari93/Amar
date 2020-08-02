<%@ Page Title="" Language="C#" MasterPageFile="~/bastebandi/MasterPage.master" AutoEventWireup="true" CodeFile="backup.aspx.cs" Inherits="bastebandi_backup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="Scripts/notify.min.js"></script>
    <script src="../flower_depot/Scripts/scripts.js"></script>
    <style>
        .loader {
            border: 5px solid #f3f3f3;
            border-radius: 50%;
            border-top: 5px solid #3498db;
            width: 30px;
            height: 30px;
            -webkit-animation: spin 0.7s linear infinite; /* Safari */
            animation: spin 0.7s linear infinite;
            margin: auto;
        }

        /* Safari */
        @-webkit-keyframes spin {
            0% {
                -webkit-transform: rotate(0deg);
            }

            100% {
                -webkit-transform: rotate(360deg);
            }
        }

        @keyframes spin {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        table tr td {
            font-family: tahoma !important;
            direction: ltr;
        }
    </style>
    <div id="buttonarea"></div>
    <div id="backupsarea" style="margin-bottom: 10px"></div>
    <div id="tablearea" style="display: inline-block"></div>
    <script>
        const key = 'B2Kj32sO85';
        const checkTodaysBackup = e => {
            AjaxData({
                url: '../flower_depot/backup.asmx/CheckTodayBackups',
                param: {key : key},
                func: (e) => {
                    if (!e.d) {
                        $('#buttonarea').empty().append('<button type="button" id="btnbackup" class="btn btn-primary">پشتیبان گیری</button>')
                    } else {
                        $('#buttonarea').empty().append('<h4>پشتیبان گیری امروز انجام شده است</h4>' +
                            '<a download="' + e.d + '" class="btn btn-sm btn-success" href="backups/' + e.d + '">دریافت آخرین فایل پشتیبان</a>')
                    }
                    getLastBackups();
                }
            })
        }

        const getLastBackups = e => {
            AjaxData({
                url: '../flower_depot/backup.asmx/CheckLastBackups',
                param: { key: key },
                func: (e) => {
                    const json = JSON.parse(e.d);
                    if (!json.length) return;
                    const body = ['<table class="table table-bordered"><tr><th>نام فایل</th><th>حجم</th></tr>'];
                    for (var i = 0; i < json.length; i++) {
                        body.push('<tr><td>' + json[i].Name + '</td><td>' + bytesToSize(json[i].Size) + '</td></tr>')
                    }
                    body.push('</table>')
                    $('#tablearea').empty().append(body.join(''));
                }
            })
        }
        function bytesToSize(bytes) {
            var sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
            if (bytes == 0) return '0 Byte';
            var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
            return Math.round(bytes / Math.pow(1024, i), 2) + ' ' + sizes[i];
        }

        checkTodaysBackup();

        const addBackup = e => {
            AjaxData({
                url: '../flower_depot/backup.asmx/CreateBackup',
                param: { key: key },
                func: (e) => {
                    let m = JSON.parse(e.d);
                    if (m.type == "success") {
                        GreenAlert('n', m.message);
                    } else {
                        RedAlert('n', m.message);
                    }
                    checkTodaysBackup();
                }
            })
        }

        $(document).on('click', '#btnbackup', () => {
            addBackup();
            $('#buttonarea').empty().append('<div class="loader"></div>')
        })
    </script>
</asp:Content>

