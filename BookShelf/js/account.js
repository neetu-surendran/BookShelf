$(document).ready(function () {
    // Toggle bank details based on selected payment option
    $('input[name="paymentOption"]').on('change', function () {
        if ($('#bankOption').is(':checked')) {
            $('#bankDetails').slideDown(); // Show bank details
        } else {
            $('#bankDetails').slideUp(); // Hide bank details
        }
    });
});