$(document).ready(function () {

    $(function () {
        $("#my_date_picker1").
            datepicker({
                dateFormat: 'dd/mm/yy',
                changeMonth: true,
                changeYear: true,
                yearRange: '2023:2070'
            });
    });

    $(function () {
        $("#my_date_picker2").
            datepicker({
                dateFormat: 'dd/mm/yy',
                changeMonth: true,
                changeYear: true,
                yearRange: '2023:2070'
            });
    });

    $('#my_date_picker1').change(function () {
        startDate = $(this).
            datepicker('getDate');
        $("#my_date_picker2").
            datepicker("option", "minDate", startDate);
    })

    $('#my_date_picker2').change(function () {
        endDate = $(this).
            datepicker('getDate');
        $("#my_date_picker1").
            datepicker("option", "maxDate", endDate);
    })
})