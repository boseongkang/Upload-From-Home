## Canvas 활용  

- 어제 본인이 만든 라이언 이모티콘을 활용하여 저장하기, 삭제하기, 읽어오기 기능이 추가된 버튼을 생성하고 그 기능을 수행하는 코드를 짜보았다. 

``` javascript

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Canvas API</title>
</head>
<body>
	<button id="saveImg">저장하기</button>
	<button id="deleteImg">삭제하기</button>
	<button id="readImg">읽어오기</button>
	<br>


	<canvas id="canvas" width="800" height="1500">
</canvas>

	<script>
		var canvas = document.getElementById('canvas');
		var canvasText = canvas.getContext("2d");

		var saveImg = document.getElementById("saveImg");
		var deleteImg = document.getElementById("deleteImg");
		var readImg = document.getElementById("readImg");
		var img = document.getElementById("canvas");

		saveImg.addEventListener("click", function() {
			localStorage.setItem("img", img.toDataURL());
		});

		deleteImg.addEventListener("click", function() {
			canvasText.clearRect(0, 0, canvas.width, canvas.height);
			canvasText.beginPath();
		});

		readImg.addEventListener("click", function() {
			//이미지 객체 생성
			var loadImg = new Image();
			loadImg.src = localStorage.getItem("img");
			//이미지 로드가 완료되면
			loadImg.onload = function() {
				canvasText.drawImage(loadImg, 0, 0);
			}
		});
		function initiate() {
			var canvas = document.getElementById('canvas').getContext("2d");

			
			//오른쪽 귀
			canvas.beginPath();
			canvas.arc(500, 280, 40, Math.PI, Math.PI * (-1.55), false);
			canvas.lineWidth = 20;
			canvas.strokeStyle = "black";
			canvas.stroke();
			canvas.fillStyle = "orange";
			canvas.fill();
			//왼쪽 귀
			canvas.beginPath();
			canvas.arc(290, 285, 40, 0, Math.PI * (-1.45), true);
			canvas.lineWidth = 20;
			canvas.strokeStyle = "black";
			canvas.stroke();
			canvas.fillStyle = "orange";
			canvas.fill();
			//얼굴색
			canvas.beginPath();
			canvas.arc(400, 450, 200, 0, Math.PI * 2, false);
			canvas.lineWidth = 10;
			canvas.fillStyle = "orange";
			canvas.fill();
			canvas.strokeStyle = "black";
			canvas.stroke();
			//왼쪽눈
			canvas.beginPath();
			canvas.arc(310, 420, 15, 0, Math.PI * 2, true);
			canvas.fillStyle = "black";
			canvas.fill();
			//오른쭉눈
			canvas.beginPath();
			canvas.arc(490, 420, 15, 0, Math.PI * 2, true);
			canvas.fillStyle = "black";
			canvas.fill();
			//왼쪽 눈썹
			canvas.beginPath();
			canvas.moveTo(350, 380);
			canvas.lineTo(270, 380);
			canvas.lineWidth = 15;
			canvas.stroke();
			//오른쪽 눈썹
			canvas.beginPath();
			canvas.moveTo(450, 380);
			canvas.lineTo(530, 380);
			canvas.lineWidth = 15;
			canvas.stroke();
			//왼쪽 코 밑에 검정색
			canvas.beginPath();
			canvas.arc(375, 510, 30, 0, Math.PI * 2, true);
			canvas.fillStyle = "black";
			canvas.fill();
			//오른쪽 코 밑 검정
			canvas.beginPath();
			canvas.arc(425, 510, 30, 0, Math.PI * 2, true);
			canvas.fillStyle = "black";
			canvas.fill();
			//코 중간 겹쳐서 위로 나오게
			canvas.beginPath();
			canvas.arc(400, 485, 15, 0, Math.PI * 2, true);
			canvas.fillStyle = "black";
			canvas.fill();
			canvas.strokeStyle = "black";
			canvas.stroke();
			//왼쪽 하얀원
			canvas.beginPath();
			canvas.arc(385, 510, 19, 0, Math.PI * 2, true);
			canvas.strokeStyle = "black";
			canvas.stroke();
			canvas.fillStyle = "white";
			canvas.fill();
			//오른쪽 하얀 원
			canvas.beginPath();
			canvas.arc(415, 510, 19, 0, Math.PI * 2, true);
			canvas.fillStyle = "white";
			canvas.fill();

		}
		window.addEventListener("load", initiate, false);
	</script>
</body>
</html>
```

