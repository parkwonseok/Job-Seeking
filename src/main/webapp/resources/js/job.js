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
	
	var areaArr = new Array("강남구", "강동구", "강서구", "강북구", "관악구", "광진구", "구로구", "금천구", "노원구", "동대문구", "도봉구", "동작구", "마포구", "서대문구", "성동구", "성북구", "서초구", "송파구", "영등포구", "용산구", "양천구", "은평구", "종로구", "중구", "중랑구");
	$('#ic-sub').click(function(){
		var val = $('.ic-input').val();
		var flag = false;
		for(var i=0; i<areaArr.length; i++){
			if(val == areaArr[i]){
				flag = true;
				break;
			}
		}
		if(flag) $('.ic-form').submit();
		else $('.result1').text('해당 지역이 검색되지 않습니다. 다시 말씀해주세요.');
	});
});