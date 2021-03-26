$("#hidden-address").clone().append("div.address_new:last");

$(document).ready(function(){
    $('#clone_btn').click(function(){
      $("#address_new").append($("#address_new").clone());
    });
});