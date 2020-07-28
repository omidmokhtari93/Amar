(function ($) {
  $(document).ready(function () {
    $('#cssmenu > ul > li > a').click(function () {
      $('#cssmenu li').removeClass('active');
      $(this).closest('li').addClass('active');
      var checkElement = $(this).next();
      if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
        $(this).closest('li').removeClass('active');
        checkElement.slideUp('normal');
      }
      if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
        $('#cssmenu ul ul:visible').slideUp('normal');
        checkElement.slideDown('normal');
      }
      if ($(this).closest('li').find('ul').children().length == 0) {
        return true;
      } else {
        return false;
      }
    });
  });
})(jQuery);

function AjaxData(obj) {
  $.ajax({
    type: 'POST',
    url: obj.url,
    data: JSON.stringify(obj.param),
    contentType: 'application/json;',
    dataType: 'json',
    success: obj.func,
    error: function () {
      console.log('error');
    }
  });
}