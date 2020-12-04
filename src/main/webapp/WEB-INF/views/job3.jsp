<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>일자리</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/job3.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div id="dialog">
		<div id="bs-name">회사 이름</div>
		<div id="type"></div>
		<div id="address"></div>
		<div id="salary"></div>
		<div id="deadline"></div>
		<div id="inquiry_phone"></div>
		<div id="result">지도에 표시된 정보를 클릭하세요</div>
		<div id="call"><img id="call-img" src="${pageContext.request.contextPath}/resources/images/call.png"></div>
		<div id="go-back">다른 서비스 이용하기</div>
	</div>
	<div id="map" style="width: 100%; height: 100%;"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=db6006bd9e6b048639ff98fcda6209da"></script>
	<script>
		var longitude = <%= request.getAttribute("longitude") %>;
		var latitude = <%= request.getAttribute("latitude") %>;	
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(latitude, longitude),
			level : 4
		};
		var map = new kakao.maps.Map(container, options);
		
		$.ajax({
			type:"get",
			url:"http://localhost:8080/app/getJobList",
			dataType:"json",
			success:function(result){
				var positions = new Array();
				$.each(result, function(index, value){
					var data = new Object();
					data.name = value.name;
					data.type = value.type;
					data.address = value.address;
					data.salary = value.salary;
					data.deadline = value.deadline;
					data.inquiry_phone = value.inquiry_phone;
					data.latlng = new kakao.maps.LatLng(value.latitude, value.longitude);
					positions.push(data);
				});
				
				// 마커 이미지의 이미지 주소입니다
				var imageSrc = "${pageContext.request.contextPath}/resources/images/pin.png"; 
				    
				for (var i = 0; i < positions.length; i ++) {
				    // 마커 이미지의 이미지 크기 입니다
				    var imageSize = new kakao.maps.Size(34, 45); 
				    
				    // 마커 이미지를 생성합니다    
				    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
				    
				    // 마커를 생성합니다
				    var marker = new kakao.maps.Marker({
				        map: map, // 마커를 표시할 지도
				        position: positions[i].latlng, // 마커를 표시할 위치
				        title : positions[i].name, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				        image : markerImage // 마커 이미지 
				    });
				    
				 	// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				    var name = positions[i].name;
				    var type = positions[i].type;
				    var address = positions[i].address;
				    var salary = positions[i].salary;
				    var deadline = positions[i].deadline;
				    var inquiry_phone = positions[i].inquiry_phone;
				 	
				 	var content = '<div class="customoverlay" style="padding: 5px 10px; background-color: #FF7D8E; margin-bottom: 45px; border-radius: 7px;">' +
				        '    <div class="overlay" style="padding: 5px 10px; background: white;">' +
				        '      <div class="name" style="font-size: 12px; font-weight: bold; color: rgba(0,0,0,0.8); background: white;">' + name + '</div>' +	
				        '      <div class="salary" style="font-size: 18px; font-weight: bold; color: rgba(0,0,0,0.8); background: white;">' + salary + '</div>' +	
				        '      <div class="address" style="display:none;">' + address + '</div>' +
				        '      <div class="type" style="display:none;">' + type + '</div>' +
				        '      <div class="deadline" style="display:none;">' + deadline + '</div>' +
				        '      <div class="inquiry_phone" style="display:none;">' + inquiry_phone + '</div>' +
				        '    </div>' +
				        '</div>';
				        
				 	// 커스텀 오버레이를 생성합니다
				    var customOverlay = new kakao.maps.CustomOverlay({
				        map: map,
				        position: positions[i].latlng,
				        content: content,
				        yAnchor: 1 
				    });
				}
			},
			error:function(xhr, status, error){
				alert(error);
			}
		});
		
		$(document).on('click', '.customoverlay', function(){
			var name = $(this).find('.name').text();
		    var type = $(this).find('.type').text();
		    var address = $(this).find('.address').text();
		    var salary = $(this).find('.salary').text();
		    var deadline = $(this).find('.deadline').text();
		    var inquiry_phone = $(this).find('.inquiry_phone').text();
			$('#result').hide();
		    $('#bs-name').text(name);
		    $('#type').text('업종 : ' + type);
		    $('#address').text('주소 : ' + address);
		    $('#salary').text('임금 : ' + salary);
		    $('#deadline').text('마감 : ' + deadline);
		    $('#inquiry_phone').text('문의 : ' + inquiry_phone);
		    $('#call').show();
		});
		
		$(document).on('click', '#go-back', function(){
			location.href = 'http://localhost:8080/app/service';
		});
	</script>
</body>
</html>
