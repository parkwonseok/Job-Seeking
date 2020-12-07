$(function(){
	$(".job-container").hover(function(){
		$(this).addClass("emphasized");
	}, function(){
		$(this).removeClass("emphasized");
	});
	$(".resume-container").hover(function(){
		$(this).addClass("emphasized");
	}, function(){
		$(this).removeClass("emphasized");
	});
	$(".hobby-container").hover(function(){
		$(this).addClass("emphasized");
	}, function(){
		$(this).removeClass("emphasized");
	});
	
	$(".job-container").click(function(){
		location.href = 'http://localhost:8080/app/job';
	});
	$(".resume-container").click(function(){
		location.href = 'http://localhost:8080/app/photo';
	});
	$(".hobby-container").click(function(){
		location.href = 'http://localhost:8080/app/hobby';
	});
});