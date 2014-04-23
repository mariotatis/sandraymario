// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

//= require libraries-ck
//= require modernizr
//= require save_the_date


(function(doc) {

	var addEvent = 'addEventListener',
	type = 'gesturestart',
	qsa = 'querySelectorAll',
	scales = [1, 1],
	meta = qsa in doc ? doc[qsa]('meta[name=viewport]') : [];

	function fix() {
		meta.content = 'width=device-width,minimum-scale=' + scales[0] + ',maximum-scale=' + scales[1];
		doc.removeEventListener(type, fix, true);
	}

	if ((meta = meta[meta.length - 1]) && addEvent in doc) {
		fix();
		scales = [.25, 1.6];
		doc[addEvent](type, fix, true);
	}

}(document));

$(document).ready(function() {
	// init Save the Date
	
	$("#button_submit_form" ).click(function() {
		$('#button_submit_form').attr('disabled', true);
		$('form').submit();
	});

	$(".button_confirm").click(function() {
		$('#confirmar_cupo').fadeIn('slow');
		$('.button_confirm').remove();
	});
	
	document.addEventListener("touchmove", ScrollStart, false);
	document.addEventListener("scroll", Scroll, false);

	function ScrollStart() {
	    //start of scroll event for iOS
		if(typeof window.orientation !== 'undefined'){
			$(".her").css('background-position', 'bottom left');
			$(".him").css('background-position', 'bottom right');
		}
	}

	function Scroll() {
		if(typeof window.orientation !== 'undefined'){
	    	$(".her").css('background-position', 'top left');
			$(".him").css('background-position', 'top right');
		}
	}
	
	var arr = [];
	for (var i = 1; i < 73; i++) {
	    arr.push("assets/gallery/gallery"+i+".jpg");
	}
	arr.sort(function() {return 0.73 - Math.random()});
	
	save_the_date.init({
		weddingDate: "2014/06/14, 03:00", 
		//Date : enter your wedding date
		labels: ["días", "horas", "minutos", "segundos"], 
		//Array of strings : labels of time units
		sendServerMessages: ["Thank you.", "Sorry, your message could not be sent due to an error."],
		//Array of strings : Messages from the server on send
		gallery : arr,
		//Array image pathes
		titles : [],
		//Array of strings : corresponding titles
		guayabera : ["assets/guayabera/guayabera1.jpg"],
		mujeres : ["assets/mujeres/mujeres1.png", "assets/mujeres/mujeres2.png", "assets/mujeres/mujeres3.png"]		
	});	
});