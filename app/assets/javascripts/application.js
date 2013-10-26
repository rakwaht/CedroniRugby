// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


//next function for the calendar

$( ".icon-arrow-right" ).click(function() {
	var active = $(".calendario").children(".attivo");
	var id = parseInt(active.attr("id"));
	active.removeClass("attivo");
	active.addClass("invisibile");
	var next_id = id + 1;
	if(next_id == 16){
		next_id = 0;
	}
	var daattivare = $("#"+ next_id);
	daattivare.removeClass("invisibile");
	daattivare.addClass("attivo");  
});

//prev function for the calendar

$( ".icon-arrow-left" ).click(function() {
	var active = $(".calendario").children(".attivo");
	var id = active.attr("id");
	active.removeClass("attivo");
	active.addClass("invisibile");
	if (id == 0) {
		$("#15").removeClass("invisibile").addClass("attivo");	
	}
	else{
		$("#"+(id-1)).removeClass("invisibile").addClass("attivo");
	} 
});