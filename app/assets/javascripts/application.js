// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require_tree .

var d = ""

$(document).ready(function () {
    console.log("jQ Connected");

    $('[data-js-date-link]').click(function (event) {
        var $showDate = $("<div/>").addClass("date");
        var $date = this.getAttribute("data-js-date-link");
        console.log($date);
        $showDate.text($date);
        
        d = $date;

        var $body = $("body");
        $body.append($showDate);

        console.log($body);

        // $newA = document.createElement("div");
        // var $newBox2 = $("<div/>").addClass("box");
        // $(document.body.appendChild($newBox2));

        // $("<div/>").css("color", "red");



        // $pp = document.createElement("p");
        // $pp.text("SARAH");
        // $newBox2.appendChild($pp);
        
        // $newA.setAttribute("href", "/views/events/show/");

       
        event.preventDefault();
    });
})


function ddd() {
    return d;
}
