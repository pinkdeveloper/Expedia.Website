//var $ = $.noConflict();
$(function () {

var year = (new Date).getFullYear();
var month = (new Date).getMonth();
var day = (new Date).getDate();

$(".datepicker").datepicker({
    defaultDate: new Date(),
    minDate: new Date(year, month, day),
    maxDate: new Date(year + 1, month, day),
    onSelect: function (dateStr) {
        $("#maxTripStartDate").datepicker("option", { minDate: new Date(dateStr) })
    }
});

});
