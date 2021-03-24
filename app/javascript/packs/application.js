// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import "bootstrap"
import "jquery-ui"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(function() {
  $('.datepicker').datepicker();
});

// $(function () {

//     $('#txtnumber').keydown(function (e) {
//        var key = e.charCode || e.keyCode || 0;
//        $text = $(this); 
//        if (key !== 8 && key !== 9) {
//            if ($text.val().length === 3) {
//                $text.val($text.val() + '-');
//            }
//            if ($text.val().length === 7) {
//                $text.val($text.val() + '-');
//            }

//        }

//        return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
//    })
// });