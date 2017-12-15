$(document).ready(function(){
    $('#orange').mouseenter(function(){
        $('#orange').css({"background-color": "#E8A558", "color": "#ffffff"})
    });
   $('#orange').mouseleave(function(){
        $('#orange').css("background-color", "#FFA500")	
   });
});


$(document).ready(function(){
    $('#borderWhite').mouseenter(function(){
        $('#borderWhite').css({"border-top": "1px solid white", "border-bottom": "1px solid yellow "})
    });
   $('#borderWhite').mouseleave(function(){
        $('#borderWhite').css("border", 0)	
   });
});

