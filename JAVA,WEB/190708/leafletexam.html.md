## leafletexam1.html

div 태그에 id값 필수. 

`	var mymap = L.map('mapid').setView([37.566, 126.978], 18);` 

저거 맨뒤에 18이 줌 사이즈

**L.map** 이 함수가 leaflet에 map 객체 생성 

setView로 중간 지점 설정

zoom 1~18까지 가능 18이면 제일 확대되서 보임 . 

`L.marker([37.566, 126.978]).addTo(mymap)`

addTo는 위에다 올린다.

bindPopup 이라는 메소드를 이용하여 popup창을 띄운다. 

openpopup이라는 메소드를 사용하여 일반적으로 팝업이 띄워지게 한다. 

---

## leafletexam2.html

초기화 된 타일은 각각 가져와야 한다. 

---

## leafletexam3.html

	function onMapClick(e) {
		 L.popup()	  
		    .setLatLng(e.latlng)
	        .setContent("여기를 클릭했슈!!!  " + e.latlng)
	        .openOn(mymap);
	}
---

## leafletexam5.html

content 태그 에 출력할 거 담음 .

클릭 해야 팝업창 표시

---

## leafletexam6.html

마우스 올리기만 해도 팝업창 출력

---

## geocoding_map.html

`		if(mymap)
					mymap.remove();` 새로운 map 객체를 다시 집어 넣으면 에러나서 remove를 해줘야 한다. 이미 지도가 그려졌다면 map 객체를 이미 가지고 있기때문에 remove로 지워주어야 한다. 

