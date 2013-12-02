scorer = function(element){
  $( ".js-img" ).off("click");
  var hidden_field = $("#sound_type").attr("value");
  var guess = $(element).attr("id");
  if (hidden_field === guess){
    show_results(true);
  }
  else {
    show_results(false);
  }
};

show_results = function(won){
  if (won){
   var message = "Right"; 
   var condition = "right";
  }
  else {
    var message = "Wrong";
    var condition = "wrong";
  }

  $.get( "score/" + condition, function( data ) {
    $("#score").html(data.correct_answers + "/" + data.games_played);
  });

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