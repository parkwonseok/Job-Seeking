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
	
	var areaArr = new Array("경비", "경비원", "택배", "택배원", "간병", "간병인", "주차", "주차관리", "주차관리원", "안내", "안내원", "판매", "판매원", "환경", "환경미화", "환경미화원", "가사", "가사도우미", "도우미", "매표", "매표원", "주차운전", "주차운전원", "사회복지", "사회복지보조", "사회복지보조원", "물건", "이사", "이삿짐", "운반원");
   	$('#ic-sub').click(function(){
      var val = $('.ic-input').val();
      var flag = false;
      for(var i=0; i<areaArr.length; i++){
         if(val === areaArr[i]){
            flag = true;
            break;
         }
      }
      if(flag) $('.ic-form').submit();
      else {
         $('.result1').text('해당 직종이 검색되지 않습니다. 다시 말씀해주세요.');
         $('.jobs').css("display", "none");
      }
   });
	
});