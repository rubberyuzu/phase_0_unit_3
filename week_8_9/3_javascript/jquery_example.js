$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
$('h1').css(
 	"color" , "red",
 	"border","3px solid black"
 	"visibility","visible"
 	);
 
  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://img.sparknotes.com/content/sparklife/sparktalk/mascot_Large.jpg')
  })
  $('.mascot').hover(function(){
  	$(this).fadeIn();
  })
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// reflection
// Since I have taken webdesign class in school, this was not particularly new to me.
// But it was good to know some new features of jQuery, such as mouseover.
