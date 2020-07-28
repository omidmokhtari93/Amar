$(function () {
  $(".search").on("mouseenter", function () { $(".search").addClass("search-shadow") }).on("mouseleave", function () { $(".search input").is(":focus") ? $(".search").addClass("search-shadow") : $(".search").removeClass("search-shadow") }), $(".search input").on("blur", function () { $(".search").removeClass("search-shadow") });
})




$(function () {
  $('.search-result').height($(window).height() - 270)
})