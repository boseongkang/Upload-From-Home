## Canvas로 얼굴 그려보기

```javascript
<!DOCTYPE html> 
<html lang="en">
<head>
<meta charset="utf-8">
<title>Canvas API</title>
<script>
	function initiate() {
		var elem = document.getElementById('canvas');
		canvas = elem.getContext('2d');
		//1번시작
		//얼굴
		canvas.beginPath();
		canvas.arc(100, 150, 75, 0, Math.PI * 2, false);
		canvas.strokeStyle = "red";
		canvas.stroke();
		canvas.fillStyle = "yellow";
		canvas.fill();
		//왼쪽 눈

		canvas.beginPath();
		canvas.arc(70, 140, 20, Math.PI, Math.PI * 2, false);
		canvas.strokeStyle = "black";
		canvas.stroke();
		//오른쪽 눈
		canvas.beginPath();
		canvas.arc(130, 140, 20, Math.PI, Math.PI * 2, false);
		canvas.strokeStyle = "black";
		canvas.stroke();
		//입
		canvas.beginPath();
		canvas.arc(100, 170, 20, 0, Math.PI, false);
		canvas.fillStyle = "red";
		canvas.fill();

		/////////////////////////////////////////1번 끝
		canvas.linewidth = 3
		////////////////////////////////////////2번시작
		//얼굴
		canvas.beginPath();
		canvas.arc(300, 150, 75, 0, Math.PI * 2, false);
		canvas.strokeStyle = "red";
		canvas.stroke();
		canvas.fillStyle = "yellow";
		canvas.fill();
		//왼쪽눈
		canvas.beginPath();
		canvas.moveTo(270, 120);
		canvas.quadraticCurveTo(280, 130, 290, 120);
		canvas.stroke();
		//오른쪽눈
		canvas.beginPath();
		canvas.moveTo(310, 120);
		canvas.quadraticCurveTo(320, 130, 330, 120);
		canvas.stroke();
		//코
		canvas.beginPath();
		canvas.moveTo(300, 134);
		canvas.lineTo(285, 141);
		canvas.lineTo(300, 148);
		canvas.stroke();
		//입
		canvas.beginPath();
		canvas.arc(300, 175, 20, 0, Math.PI, false);
		canvas.fillStyle = "red";
		canvas.fill();
		/////////////////////////////////////////2번끝
		canvas.linewidth = 1.5;
		/////////////////////////////////////////3번시작
		//얼굴
		canvas.beginPath();
		canvas.arc(500, 150, 75, 0, Math.PI * 2, false);
		canvas.fillStyle = "yellow";
		canvas.fill();
		canvas.strokeStyle = "gray";
		canvas.stroke();
		//입		
		canvas.beginPath();
		canvas.arc(500, 170, 30, 0, Math.PI, false);
		canvas.fillStyle = "red";
		canvas.fill();
		canvas.strokeStyle = "blue";
		canvas.stroke();
		//윗입술 색		
		canvas.beginPath();
		canvas.moveTo(470, 171);
		canvas.lineTo(530, 171);
		canvas.strokeStyle = "blue";
		canvas.stroke();
		//왼쪽눈 위로 반원
		canvas.beginPath();
		canvas.arc(470, 130, 15, Math.PI, Math.PI * 2, false);
		canvas.fillStyle = "skyblue";
		canvas.fill();
		canvas.strokeStyle = "black";
		canvas.stroke();
		//왼쪽 눈 아래 채워주는거
		canvas.beginPath();
		canvas.moveTo(455, 129);
		canvas.lineTo(485, 129);
		canvas.stroke();
		//코		
		canvas.beginPath();
		canvas.moveTo(500, 130);
		canvas.lineTo(485, 145);
		canvas.lineTo(500, 150);
		canvas.stroke();
		//오른쪽 눈		
		canvas.beginPath();
		canvas.moveTo(515, 130);
		canvas.bezierCurveTo(525, 135, 535, 110, 545, 130);
		canvas.stroke();
		////////////////////////////여기까지 3번
		////////////////////////////////////이제4번
		//얼굴색
		canvas.beginPath();
		canvas.arc(700, 150, 75, 0, Math.PI * 2, false);
		canvas.fillStyle = "yellow";
		canvas.fill();
		canvas.strokeStyle = "lime";
		canvas.stroke();
		//왼쪽눈		
		canvas.beginPath();
		canvas.arc(670, 130, 15, Math.PI, Math.PI * 2, false);
		canvas.strokeStyle = "black";
		canvas.stroke();
		canvas.fillStyle = "blue";
		canvas.fill();
		//오른쭉눈
		canvas.beginPath();
		canvas.arc(730, 130, 15, Math.PI, Math.PI * 2, false);
		canvas.strokeStyle = "black";
		canvas.stroke();
		canvas.fillStyle = "blue";
		canvas.fill();
		//코
		canvas.beginPath();
		canvas.moveTo(700, 130);
		canvas.lineTo(685, 150);
		canvas.lineTo(705, 160);
		canvas.stroke();
		//입		
		canvas.beginPath();
		canvas.arc(700, 170, 40, 0, Math.PI, false);
		canvas.fillStyle = "red";
		canvas.fill();


	}
	window.addEventListener("load", initiate, false);
</script>
</head>
<body>
	<section id="canvasbox">
		<canvas id="canvas" width="800" height="1500">
    </canvas>
	</section>
</body>
</html>


```

- 위와 같은 코드로 얼굴모양의 그림을 그려 보았다.