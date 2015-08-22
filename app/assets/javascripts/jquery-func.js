$(document).ready(function () {

    $(".movie-image").hover(function () {
            $(this).find(".play").show();
            $(this).link()
        },
        function () {
            $(this).find(".play").hide();
        });


    $(".blink").focus(function () {
        if (this.title == this.value) {
            this.value = '';
        }
    })
        .blur(function () {
            if (this.value == '') {
                this.value = this.title;
            }
        });
});
