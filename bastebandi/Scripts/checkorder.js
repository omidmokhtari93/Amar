$(document).ready(function () {
    //var M = $('#uid').val();
    //if (M == '11') {
    //    setInterval(function () {
    //        $.ajax({
    //            type: "POST", url: "orderCheck.asmx/getorder", contentType: "application/json; charset=utf-8", dataType: "json", success: function (r) {
    //                var unread = r.d;
    //                if (unread == '0') {
    //                    return;
    //                } else {
    //                    $.notify.addStyle('foo',
    //                        {
    //                             html: "<div><div class='clearfix'><div class='title' data-notify-html='title'/><div class='buttons'>" +
    //                                 "<button class='yes'>نمایش سفارش</button>" + "<button class='no' data-notify-text='button'></button></div></div></div>"
    //                        });
    //                    $(document).on('click', '.notifyjs-foo-base .no', function() {
    //                        $(this).trigger('notify-hide');
    //                    });
    //                    $(document).on('click', '.notifyjs-foo-base .yes', function() {
    //                         window.location = "order.aspx"; $(this).trigger('notify-hide');
    //                    });
    //                    $.notify({
    //                         title: 'سفارش جدید در سیستم ثبت شده است', button: 'بستن پنجره'
    //                    },{style: 'foo', autoHide: false, clickToHide: false, position: 'bottom right'});
    //                }
    //            }
    //        }); return false;
    //    }, 36000);
    //} else {
    //    $('#btnhavale').css('pointer-events', 'none');
    //    $('#btnCarton').css('pointer-events', 'none');
    //    $('#btnMoadel').css('pointer-events', 'none');
    //}
});