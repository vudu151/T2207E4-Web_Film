$(function() {
    var dateFormat = "dd/mm/yy",
        from = $("#licenseStart")
            .datepicker({
                dateFormat: dateFormat, // Định dạng ngày thành dd/mm/yy
                changeMonth: true,
                numberOfMonths: 1
            })
            .on("change", function() {
                to.datepicker("option", "minDate", getDate(this));
                validateDates();
            }),
        to = $("#licenseEnd").datepicker({
            dateFormat: dateFormat, // Định dạng ngày thành dd/mm/yy
            changeMonth: true,
            numberOfMonths: 1
        })
            .on("change", function() {
                from.datepicker("option", "maxDate", getDate(this));
                validateDates();
            });

    function getDate(element) {
        var date;
        try {
            date = $.datepicker.parseDate(dateFormat, element.value);
        } catch (error) {
            date = null;
        }
        return date;
    }

    function validateDates() {
        var start = $("#licenseStart").datepicker("getDate");
        var end = $("#licenseEnd").datepicker("getDate");

        if (start && end && start >= end) {
            $('#invalid-feedback-licenseStart').text('License Start must be earlier than License End').show();
            $('#invalid-feedback-licenseEnd').text('License End must be later than License Start').show();
        } else {
            $('#invalid-feedback-licenseStart').hide();
            $('#invalid-feedback-licenseEnd').hide();
        }
    }
});
