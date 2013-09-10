$(document).ready(function() {
  

  $('#tweet_form').submit(function(event){
    event.preventDefault();
    console.log('working');
    
    $('#res').html('loading');
    var url = $(this).attr('action');
    var data = $(this).serialize();
    console.log(url);
    console.log(data);
    $.get(url,data,function(response){

      $('#res').html('Your tweet( '+response.tweet+' ) was created.');
    },"json");
  });
});
