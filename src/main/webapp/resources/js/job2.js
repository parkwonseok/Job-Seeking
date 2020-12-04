$(function(){
	$('.mic-img').click(function(){
		if($(".animation").css("display") == "none"){    
        	$('.mic-text').text('인식 중입니다...');
				setTimeout(function() {
					$('.animation').show(); 
					$('.mic-text').text('말씀해주세요');
			}, 2000);
			setTimeout(function() {
				$('.animation').hide();  
        		$('.mic-text').text('마이크를 클릭해주세요');
			}, 6000);
    	}
	});
	
	$('#ic-sub').click(function(){
		var val = $('.ic-input').val();
		if(val != "") $('.ic-form').submit();
	});
});