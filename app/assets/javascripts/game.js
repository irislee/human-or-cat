scorer = function(element){
  var hidden_field = $("#sound_type").attr("value");
  var guess = $(element).attr("id");
  if (hidden_field === guess){
    show_results("You Win");
  }
  else {
    show_results("You Lose");
  }
};

show_results = function(message){
  $("#result").html(message);
  $("#again").show();
};

ready = function() {
  $( ".js-img" ).on("click", function(){
    scorer(this);
  });
};

// document ready call the ready function
$(document).ready(ready);
// this is a dumb thing like document ready when you have turbolinks
$(document).on('page:load', ready);