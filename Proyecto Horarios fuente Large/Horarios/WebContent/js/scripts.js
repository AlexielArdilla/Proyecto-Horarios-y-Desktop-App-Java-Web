// Empty JS for your own code to be here
 $(function() {
        var on = false;
        window.setInterval(function() {
            on = !on;
            if (on) {
                $('.cancelada').addClass('invalid-blink')
            } else {
                $('.invalid-blink').removeClass('invalid-blink')
            }
        }, 2000);
    });