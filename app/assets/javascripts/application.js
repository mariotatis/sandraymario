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
	save_the_date.init({
		weddingDate: "2014/06/14, 03:00", 
		//Date : enter your wedding date
		labels: ["días", "horas", "minutos", "segundos"], 
		//Array of strings : labels of time units
		sendServerMessages: ["Thank you.", "Sorry, your message could not be sent due to an error."],
		//Array of strings : Messages from the server on send
		gallery : [
		"assets/gallery/gallery1.jpg",
		"assets/gallery/gallery2.jpg",
		"assets/gallery/gallery3.jpg",
		"assets/gallery/gallery4.jpg",
		"assets/gallery/gallery5.jpg",
		"assets/gallery/gallery6.jpg",
		"assets/gallery/gallery7.jpg",
		"assets/gallery/gallery8.jpg",
		"assets/gallery/gallery9.jpg",
		"assets/gallery/gallery10.jpg",
		"assets/gallery/gallery11.jpg",
		"assets/gallery/gallery12.jpg",
		"assets/gallery/gallery13.jpg",
		"assets/gallery/gallery14.jpg",
		"assets/gallery/gallery15.jpg",
		"assets/gallery/gallery16.jpg",
		"assets/gallery/gallery17.jpg",
		"assets/gallery/gallery18.jpg",
		"assets/gallery/gallery19.jpg",
		"assets/gallery/gallery20.jpg",
		"assets/gallery/gallery21.jpg"
		],
		//Array image pathes
		titles : [],
		//Array of strings : corresponding titles
		guayabera : ["assets/guayabera/guayabera1.jpg"],
		mujeres : ["assets/mujeres/mujeres1.png", "assets/mujeres/mujeres2.png", "assets/mujeres/mujeres3.png"]		
	});	
});