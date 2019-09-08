## JavaScript
 
#### 태어난 요일, 지금까지의 날짜 계산

```javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#blue {
	color: skyblue;
}
#pink {
	color: pink;
}
</style>
<body>
	<script>
	
	function DayInfo(n,y,m,d){
			this.name = n,
			this.year = y,
			this.month = m-1, //월은 -1해주어야한다. 컴퓨터는 0부터 계산하기에 
			this.day = d,

			DayInfo.prototype.getTotalDays= function(){

				var today = new Date();
				var tT= today.getTime();
				
				var born = new Date(this.year,this.month,this.day);
				var bT= born.getTime();
				var gap =tT-bT;
				var day = gap/1000/60/60/24;
				
				return this.name+"님은 태어난지 "+Math.ceil(day)+"일 되었어요.";
			},
			
			DayInfo.prototype.getKorDay= function(){
				
				var week = new Array('일','월','화','수','목','금','토',);
				
				var born = new Date(this.year,this.month,this.day);
				var bT= born.getUTCDay();
				console.log(bT);
				
				return this.name + "님은 "+week[bT]+"요일에 태어났어요."
			}

		}

		
		var data1 = new DayInfo("1번",1965,1,23);
		var data2 = new DayInfo("2번",1990,4,27);
		var data3 = new DayInfo("3번",2001,11,28);

		var data = new Array(data1,data2,data3);
		
		
		for(var i in data){
			
			 document.write("<h4 id='blue'>"+"태어난 날부터 일수 : "+data[i].getTotalDays(),"</h4>");
			 document.write("<h4 id='pink'>"+"태어난 요일 : "+data[i].getKorDay(),"</h4>");
			 
			document.write("<hr>");
		}

	</script>
</body>
</html>


```

