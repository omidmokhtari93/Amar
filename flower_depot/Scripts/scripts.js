function Checkinputs(e /*Area*/) { var t = !1, r = $("#" + e).find("input[required] ,textarea[required]"); return 0 === r.length && (r = $("#" + e).find("textarea[required]")), r.each(function (e, r) { "" == r.value && (RedAlert(r, ""), t = !0) }), t }

function RedAlert(o /*Element*/, r /*Text*/) { var t; t = "string" == typeof o ? $("#" + o) : o, $(t).css("border" , '1px solid red'), setTimeout(function () { $(t).css("border" , '') }, 4e3), $.notify(r, { globalPosition: "top left" }) }

function GreenAlert(e /*Element*/, t /*Text*/) { var o; o = "string" == typeof e ? $("#" + e) : e, $(o).css("background-color", "lightgreen"), setTimeout(function () { $(o).removeAttr("style") }, 4e3), $.notify(t, { className: "success", clickToHide: !1, autoHide: !0, position: "top left" }) }

function ClearFields(e /*Area*/) { $("#" + e).find("input:text").val(""), $("#" + e).find("textarea").val(""), $("#" + e).find("select").prop("selectedIndex", 0) }

//StartDate, StartTime, EndDate, EndTime
function CheckPastTime(t, e, n, a) { var i = t.split("/"), o = n.split("/"); return new Date(JtoG(i[0], i[1], i[2], !0) + " " + e) < new Date(JtoG(o[0], o[1], o[2], !0) + " " + a) }
function JalaliDateTime() { var e = new Date, t = GtoJ(e.getFullYear(), e.getMonth() + 1, e.getDate()); return t[1] = t[1] < 10 ? "0" + t[1] : t[1], t[2] = t[2] < 10 ? "0" + t[2] : t[2], t[0] + "/" + t[1] + "/" + t[2] }
function DaysBetween2Date(e/*Start Date*/, t/*End Date*/) { var a = e.split("/"), o = t.split("/"), n = new Date(JtoG(a[0], a[1], a[2], !0) + " 12:00"), i = new Date(JtoG(o[0], o[1], o[2], !0) + " 12:00"), r = Math.floor(n.getTime() / 864e5); return Math.floor(i.getTime() / 864e5) - r }
function DatesBetween2Date(t /*Start Date*/, e/*End Date*/) { for (var a = [], n = t.split("/"), D = e.split("/"), o = new Date(JtoG(n[0], n[1], n[2], !0) + " 12:00"), r = new Date(JtoG(D[0], D[1], D[2], !0) + " 12:00"); o <= r;)a.push(new Date(o)), o.setDate(o.getDate() + 1); for (var g = 0; g < a.length; g++)a[g] = GtoJ(a[g].getFullYear(), a[g].getMonth() + 1, a[g].getDate()), a[g][1] = a[g][1] < 10 ? "0" + a[g][1] : a[g][1], a[g][2] = a[g][2] < 10 ? "0" + a[g][2] : a[g][2], a[g] = a[g][0] + "/" + a[g][1] + "/" + a[g][2]; return a }
function checkPastDate(t /*Element*/) { var e = $("#" + t).val(); if ("" === e) return !1; var n = new Date, a = GtoJ(n.getFullYear(), n.getMonth() + 1, n.getDate()), l = a[0] + "/" + a[1] + "/" + a[2], r = l.split("/"); 1 === r[1].length && (r[1] = "0" + r[1]), 1 === r[2].length && (r[2] = "0" + r[2]); var g = e.split("/"); return 1 === g[1].length && (g[1] = "0" + g[1]), 1 === g[2].length && (g[2] = "0" + g[2]), (l = r[0] + "/" + r[1] + "/" + r[2]) < g[0] + "/" + g[1] + "/" + g[2] }

/* jalali to gregorian  */
//year, month, day, f
function JtoG($, _, n, y) { function a($, _) { return Math.floor($ / _) } for ($g_days_in_month = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31), $j_days_in_month = new Array(31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29), $jy = $ - 979, $jm = _ - 1, $jd = n - 1, $j_day_no = 365 * $jy + 8 * a($jy, 33) + a($jy % 33 + 3, 4), $i = 0; $i < $jm; ++$i)$j_day_no += $j_days_in_month[$i]; for ($j_day_no += $jd, $g_day_no = $j_day_no + 79, $gy = 1600 + 400 * a($g_day_no, 146097), $g_day_no %= 146097, $leap = !0, 36525 <= $g_day_no && ($g_day_no-- , $gy += 100 * a($g_day_no, 36524), $g_day_no %= 36524, 365 <= $g_day_no ? $g_day_no++ : $leap = !1), $gy += 4 * a($g_day_no, 1461), $g_day_no %= 1461, 366 <= $g_day_no && ($leap = !1, $g_day_no-- , $gy += a($g_day_no, 365), $g_day_no %= 365), $i = 0; $g_day_no >= $g_days_in_month[$i] + (1 == $i && $leap); $i++)$g_day_no -= $g_days_in_month[$i] + (1 == $i && $leap); return $gm = $i + 1, $gd = $g_day_no + 1, y && null != y ? $gy + "/" + $gm + "/" + $gd : { y: $gy, m: $gm, d: $gd } }

//gregorian to jalali
function GtoJ(a, r, n) { for (var s = (a = parseInt(a)) - 1600, t = (r = parseInt(r)) - 1, e = (n = parseInt(n)) - 1, p = 365 * s + parseInt((3 + s) / 4) - parseInt((99 + s) / 100) + parseInt((399 + s) / 400), I = 0; I < t; ++I)p += gorgian_days[I]; 1 < t && (s % 4 == 0 && s % 100 != 0 || s % 400 == 0) && ++p; var o = (p += e) - 79, i = parseInt(o / 12053); o %= 12053; var l = 979 + 33 * i + 4 * parseInt(o / 1461); 366 <= (o %= 1461) && (l += parseInt((o - 1) / 365), o = (o - 1) % 365); for (I = 0; I < 11 && o >= jalali_days[I]; ++I)o -= jalali_days[I]; return [l, I + 1, o + 1] }
var gorgian_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], jalali_days = [31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29];

function AjaxData(a) { $.ajax({ type: "POST", url: a.url, data: JSON.stringify(a.param), contentType: "application/json;", dataType: "json", success: a.func, error: function (e) { RedAlert("n", 'API خطا در برقراری ارتباط با') } }) }
