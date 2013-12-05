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
    $("#twit").html('<a href="https://twitter.com/intent/tweet?text=I%20scored%20' + score + '%20on" data-hashtags="HumanOrCat" data-lang="en" class="twitter-share-button" url="http://humanorcat.com" data-count="none"></a>');
    twttr.widgets.load();
  });  
  
  $("#result").html(message);
  $("#again").show();
};

ready = function() {
  $( ".js-img" ).on("click", function(){
    scorer(this);
  });

  $(".pic_container img").on('load', function() {

    var $pic_container = $(".pic_container");
    var height1 = $pic_container.eq(0).find("img").height();
    var height2 = $pic_container.eq(1).find("img").height();
    $pic_container.eq(0).height(height1);
    $pic_container.eq(1).height(height2);
    $pic_container.eq(0).find(".underlay").height(height1);
    $pic_container.eq(1).find(".underlay").height(height2);
    $pic_container.eq(0).find(".underlay").css("bottom", height1+5);
    $pic_container.eq(1).find(".underlay").css("bottom", height2+5);

    $(".pic_container").hover(function(){

      var min = 100, max = 255,
      r = parseInt(Math.random() * (max - min) + min),
      g = parseInt(Math.random() * (max - min) + min),
      b = parseInt(Math.random() * (max - min) + min),
      color = 'rgb('+r+', '+g+', '+b+')';
      $(this).find(".underlay").animate({'background-color':color},100);

      $(this).find("img").fadeTo(250, .25);

    }, function(){
      $(this).find("img").fadeTo(250, 1);
    });

  });
}
// document ready call the ready function
$(document).ready(ready);
// this is a dumb thing like document ready when you have turbolinks
$(document).on('page:load', ready);