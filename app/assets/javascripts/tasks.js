jQuery.fn.submitOnCheck = function () {
    this.find('input[type=submit]').remove();
    this.find('input[type=checkbox]').click(function () {
        $(this).parent('form').submit();
    });
    return this;
}

$(document).on("turbolinks:load", function (){
    $('.edit_task').submitOnCheck();
});

// jQuery.fn.submitOnCheck = function () {
//     this.find('input[type=submit]').remove();
//     this.find('input[type=checkbox]').click(function () {
//         $(this).parent('form').submit();
//     });
//     return this;
// }

// $(function () {
//     $('.edit_task').submitOnCheck();
// })