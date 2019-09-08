## Drag&Drop

- Drag&Drop을 이용하여 가상의 편지지를 만들고 이미지들을 끌고오고 저장, 삭제, 복구 기능을 추가하였다.
- 각자의 환경에서는 img src 값에 환경에 맞는 주소를 입력해주면 될 것 같다.

```javascript
<!DOCTYPE html>
<html lang="en"> 
<head>
<meta charset="UTF-8">
<title>Document</title>
<style>
h1 {
	color: black;
	text-shadow: 2px 2px 2px gray;
}

input {
	margin: 10px;
}

#dropbox {
	float: left;
	width: 500px;
	height: 300px;
	margin: 10px;
	border: 1px solid black;
}

#picturebox {
	float: left;
	width: 500px;
	height: 300px;
	margin: 10px;
	border: 1px solid black;
}

#picturebox>img {
	float: left;
	width: 120px;
	height: 120px;
	padding: 1px;
}

#msg {
	width: 30%;
}
</style>
</head>
<body>
	<h1>HTML5로 크리스마스 카드 만들기</h1>
	<button onclick="save()">저장하기</button>
	<button onclick="restore()">읽어오기</button>
	<button onclick="remove()">지우기</button>
	<br> 배경 칼라 설정 :
	<input id="background" type="color" onchange="backgroundColor()">
	테두리 칼라 설정 :
	<input id="border" type="color" onchange="borderColor()">
	<br> 메시지 칼라 설정 :
	<input id="textColor" type="color"> 입력 메시지 :
	<input id="msg" type="text">
	<br>
	<section id="dropbox">
		<canvas id="canvas" width="500" height="300"
			onclick="displayMsg(window.event)"></canvas>
	</section>
	<section id="picturebox">
<img id="image1" src="g1.png">
<img id="image2" src="g2.png">
<img id="image3" src="g3.png">
<img id="image4" src="g4.png">
<img id="image5" src="g5.png">
<img id="image6" src="g6.png">
<img id="image7" src="g7.png">
<img id="image8" src="g8.png">


	</section>
	<script>
		var canvas, drop;
		var context = document.getElementById("canvas");
		function initiate() {
			var jsexam = document.querySelectorAll('#picturebox > img');
			for (var i = 0; i < jsexam.length; i++) {
				jsexam[i].addEventListener('dragstart', dragged, false);
				jsexam[i].addEventListener('dragend', ending, false);
			}

			drop = document.getElementById('canvas');
			canvas = drop.getContext('2d');

			drop.addEventListener('dragover', function(e) {
				e.preventDefault();
			}, false);
			drop.addEventListener('drop', dropped, false);
		}
		function ending(e) {
			elem = e.target;
		}
		function dragged(e) {
			var elem = e.target;
			e.dataTransfer.setData('aa', elem.getAttribute('id'));
			e.dataTransfer.setDragImage(e.target, 0, 0);
		}
		function dropped(e) {
			e.preventDefault();
			var id = e.dataTransfer.getData('aa');
			var elem = document.getElementById(id);

			var posx = e.pageX - drop.offsetLeft;
			var posy = e.pageY - drop.offsetTop;

			canvas.drawImage(elem, posx, posy, 120, 120);

		}

		window.addEventListener('load', initiate, false);
	</script>
	<script>
		var canvas;
		function save() {
			localStorage.setItem('canvas', context.toDataURL());
		}
		function remove() {
			canvas.clearRect(0, 0, 580, 450);
		}
		function restore() {
			var img = new Image();
			img.src = localStorage.getItem("canvas");
			img.onload = function() {
				canvas.drawImage(img, 0, 0);
			}
		}
		function startMemo() {
			mycanvas = document.getElementById("mycanvas");
			canvas = mycanvas.getContext("2d");
		}

		function backgroundColor() {
			canvas.fillStyle = document.getElementById("background").value;
			canvas.fillRect(0, 0, 500, 300);
		}

		function borderColor() {
			canvas.strokeStyle = document.getElementById("border").value;
			canvas.lineWidth = 10;
			canvas.strokeRect(0, 0, 500, 300);
		}

		function displayMsg(e) {
			var x = e.offsetX;
			var y = e.offsetY;
			var msg = document.getElementById("msg").value;
			message = context.getContext('2d');
			message.fillStyle = document.getElementById("textColor").value;
			message.font = 'bold 15pt 맑은고딕';
			message.fillText(msg, x, y);
		}
	</script>
</body>
</html>
```

