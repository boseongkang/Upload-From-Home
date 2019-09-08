## Canvas 이용해서 그림 그리기

#### 코드의 결과물은 아래 사진으로 두겠다.

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Canvas API</title>
<script>
	function initiate() {
		var elem = document.getElementById('canvas');
		canvas = elem.getContext('2d');
		//왼쪽귀
		canvas.beginPath();
		canvas.arc(390, 180, 40, 10, Math.PI * (-1.45), true);
		canvas.lineWidth = 20;
		canvas.strokeStyle = "black";
		canvas.stroke();
		canvas.fillStyle = "orange";
		canvas.fill();
		//오른쪽 귀
		canvas.beginPath();
		canvas.arc(610, 184, 40, 10, Math.PI * 2.20, false);
		canvas.lineWidth = 20;
		canvas.strokeStyle = "black";
		canvas.stroke();
		canvas.fillStyle = "orange";
		canvas.fill();
		//얼굴색
		canvas.beginPath();
		canvas.arc(500, 350, 200, 0, Math.PI * 2, false);
		canvas.lineWidth = 10;
		canvas.fillStyle = "orange";
		canvas.fill();
		canvas.strokeStyle = "black";
		canvas.stroke();
		//왼쪽눈		
		canvas.beginPath();
		canvas.arc(410, 320, 15, 0, Math.PI * 2, true);
		canvas.fillStyle = "black";
		canvas.fill();
		//오른쭉눈
		canvas.beginPath();
		canvas.arc(590, 320, 15, 0, Math.PI * 2, true);
		canvas.fillStyle = "black";
		canvas.fill();
		//왼쪽 눈썹
		canvas.beginPath();
		canvas.moveTo(450, 280);
		canvas.lineTo(370, 280);
		canvas.lineWidth = 15;
		canvas.stroke();
		//오른쪽 눈썹
		canvas.beginPath();
		canvas.moveTo(550, 280);
		canvas.lineTo(630, 280);
		canvas.lineWidth = 15;
		canvas.stroke();
		//왼쪽 코 밑에 검정색 
		canvas.beginPath();
		canvas.arc(475, 410, 30, 0, Math.PI * 2, true);
		canvas.fillStyle = "black";
		canvas.fill();
		//오른쪽 코 밑 검정
		canvas.beginPath();
		canvas.arc(525, 410, 30, 0, Math.PI * 2, true);
		canvas.fillStyle = "black";
		canvas.fill();
		//코 중간 겹쳐서 위로 나오게		
		canvas.beginPath();
		canvas.arc(500, 385, 15, 0, Math.PI * 2, true);
		canvas.fillStyle = "black";
		canvas.fill();
		canvas.strokeStyle = "black";
		canvas.stroke();
		//왼쪽 하얀원
		canvas.beginPath();
		canvas.arc(485, 410, 19, 0, Math.PI * 2, true);
		canvas.strokeStyle = "black";
		canvas.stroke();
		canvas.fillStyle = "white";
		canvas.fill();
		//오른쪽 하얀 원		
		canvas.beginPath();
		canvas.arc(515, 410, 19, 0, Math.PI * 2, true);
		canvas.fillStyle = "white";
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

- 구글에 있는 라이언 이미지를 보며 만들어보았다. 
- 섹션별로 나누어 얼굴, 눈, 눈썹, 코, 인중, 귀 를 만들었는데 귀부분은 겹쳐져야 보기 편할 것 같아 먼저 만든후 얼굴이 덮게끔 하였다.
- ![1559657834073](C:\Users\okbos\AppData\Roaming\Typora\typora-user-images\1559657834073.png)