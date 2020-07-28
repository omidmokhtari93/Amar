$.fn.search = function (options) {
  var div = this;
  var allOpt;
  div.css('width', options.width).addClass('search-input');
  var result_area = $('<div name="result-area" style="width:' + this.outerWidth() + 'px;"></div>');
  var search_lodaing = $('<img src="../flower_depot/Images/loading.png"/>');
  var input = $('<input type="text" autocomplete="off" name="search-field" placeholder="' + options.placeholder + '"/>');
  var badgesArea = $('<div name="badges-area"></div>')
  searchInit();

  function searchInit() {
    div.append(input);
    div.append(badgesArea);
    div.append(search_lodaing.hide());
  }

  var typingTimer;
  var doneTypingInterval = 1000;
  var $searchinput = $('#' + div.attr('id') + ' [name=search-field]');
  $searchinput.on('keyup', function () {
    search_lodaing.show();
    result_area.empty();
    clearTimeout(typingTimer);
    typingTimer = setTimeout(doneTyping, doneTypingInterval);
  });
  $searchinput.on('keydown', function () {
    clearTimeout(typingTimer);
  });
  function doneTyping() {
    if ($searchinput.val().length <= 1) {
      result_area.empty();
      search_lodaing.hide();
      return;
    }
    var par = '{"' + options.arg + '\" : \"' + $searchinput.val() + '\"}';
    callWebApi({
      url: options.url,
      param: par,
      func: appendControls
    });

    function appendControls(e) {
      var d = JSON.parse(e.d);
      if (!d.length) {
        search_lodaing.hide();
        return;
      }
      var opt = [];
      div.append(result_area);
      result_area.append('<input name="filter-items" placeholder="فیلتر..."/>');
      $.each(d, function (x, y) {
        opt.push('<li ' + options.id + '="' + y[options.id] + '">' + y[options.text] + '</li>');
      })
      result_area.append('<ul>' + opt.join('') + '</ul>');
      if (options.append !== undefined) {
        $('#' + div.attr('id') + ' ul').prepend('<li ' + options.id + '="' + options.append.id + '">' + options.append.text + '</li>');
      }
      allOpt = $('#' + div.attr('id') + ' ul li').clone();
      search_lodaing.hide();
      preventChoose();
    }
  }

  function preventChoose(id) {
    return $('#' + div.attr('id') + ' [name=badges-area] span[' + options.id + '=' + id + ']').length;
  }

  function getValues() {
    var arr = [];
    $('#' + div.attr('id') + ' [name=badges-area] span').each(function (x, y) {
      arr.push($(y).attr(options.id));
    })
    div.attr('value', arr.join(','));
  }

  $(window).click(function () {
    result_area.empty();
  });

  $('.search-input').click(function (event) {
    event.stopPropagation();
  });

  $('#' + div.attr('id')).on('click', 'li', function (x) {
    createBadge($(this).attr(options.id), $(this).text());
  });

  function createBadge(id, text) {
    if (id == '-1') {
      badgesArea.empty();
      badgesArea.append('<span id="' + id + '">' + text + '</span>');
      $('#' + div.attr('id') + ' input[name=search-field]').css('margin-bottom', '3px');
      $('#' + div.attr('id') + ' ul li').css('pointer-events', 'none');
      div.attr('value', '-1')
      return;
    }
    if (preventChoose(id)) return;
    badgesArea.append('<span id="' + id + '">' + text + '</span>');
    $('#' + div.attr('id') + ' input[name=search-field]').css('margin-bottom', '3px');
    getValues();
    if (options.func !== undefined) {
      options.func(id, text);
    }
  }

  $('#' + div.attr('id')).on('click', 'span', function (x) {
    if ($(this).attr(options.id) == '-1') {
      $('#' + div.attr('id') + ' ul li').css('pointer-events', '');
    }
    $(this).remove()
    getValues();
    if (!$('#' + div.attr('id') + ' [name=badges-area] span').length) {
      $('#' + div.attr('id') + ' input[name=search-field]').css('margin-bottom', '');
    }
  });


  $('#' + div.attr('id')).on('keyup', 'input[name=filter-items]', function () {
    var val = $(this).val();
    $('#' + div.attr('id') + ' ul').empty();
    allOpt.filter(function (idx, el) {
      return val === '' || $(el).text().indexOf(val) >= 0;
    }).appendTo('#' + div.attr('id') + ' ul');
  });

  function callWebApi(e) {
    $.ajax({
      type: 'POST',
      url: e.url,
      data: e.param,
      contentType: 'application/json;',
      dataType: 'json',
      success: e.func,
      error: function () {
        console.log('error');
      }
    });
  }
};