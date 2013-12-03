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
   var message = "You got it right!"; 
   var condition = "right";
  }
  else {
    var message = "You got it wrong.";
    var condition = "wrong";
  }
  
  $.get( "score/" + condition, function( data ) {
    var score = data.correct_answers + "/" + data.games_played;
    $("#score").html(score);
    $("#twit").html('<a href="https://twitter.com/intent/tweet?text=I%20scored%20' + score + '%20on" data-hashtags="HumanOrCat" data-lang="en" class="twitter-share-button" data-url="http://humanorcat.com" data-counturl="http://humanorcat.com"></a>');
    twttr.widgets.load();
  });

  // $("#twit").attr('href', "https://twitter.com/intent/tweet?text=I%20scored%20" + score + "%20on");
  
  
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