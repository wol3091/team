<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script type="text/javascript">
$('#myTab a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})
	
$('#myTab a[href="#profile"]').tab('show') // Select tab by name
$('#myTab a:first').tab('show') // Select first tab
$('#myTab a:last').tab('show') // Select last tab
$('#myTab li:eq(2) a').tab('show') // Select third tab (0-indexed)
</script>

<!-- 차트 -->
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <!-- google charts -->
       <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


<style type="text/css">
.h3{
	text-align: center;
}
p{
	text-align: center;
}
#myTab{
	margin: 0 auto;
}
.font{
color: black;
font-weight: bold;
} 
.container{
	margin: auto;
}
.yak{
margin-right: -50px;
}
.header{
 padding-bottom: 40px; 
}
.login{
color: white;
font-size:large;
letter-spacing: 2px;
margin-top: 10px;}
.form-control{
margin:10px;
}
.form-signup-heading{
	text-shadow: 0.05em 0.05em 0.05em;
	color: gray;
}
.body{
	background-color: rgba(0,0,0,0.05); 
}
img{
	margin-left: 25px; margin-top: 25px;
}
body{
	margin:0; padding:0;
}
.header_seq{

}
.header_name{
	font-family: serif;
	font-style: italic;
}
body{
	background-color: #f4f4f4;
}

/***/
/*media screen*/
.stats-top {
    background-color: #ffffff;
    margin-top: 40px;
    margin-left: 30px;
    margin-right: 30px;
}

.select-period-wrap .select-period {
    width: 455px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}

/**버튼 */
.select-period-wrap .select-period button:first-of-type {
    border-left: 1px solid #bdbdbd;
    margin-left: 40px;
}
.select-period-wrap .select-period button {
    flex: 1;
    margin-top:40px;
    padding: 15px 10px;
    border: solid #bdbdbd;
    border-width: 1px 1px 1px 0;
    background-color: #f4f4f4;
    font-size: 15px;
    color: #898989;
    cursor: pointer;
}

button {
    border: none;
    background: none;
    border-radius: 0;
}
.select-period-wrap {
    width: 100%;
}
.exp {

    margin-left: -128em;
    padding: 10px 20px 0;
    font-size: 12px;
    color: #898989;
}

/*media screen*/
.calendar-area {
    padding: 0 0 50px;
    font-size: 16px;
     margin-left: 40px;
}
.calendar-area .picker-desc {
    margin: 0 13px 0 10px;
}
</style>

<script type="text/javascript">


</script>

</head>
<body>
<div class="page-header">
  <h1>업소통계 </h1>
</div>

<div class="nav nav-tabs nav-justified">
<ul class="nav nav-tabs nav-justified" role="tablist" id="myTab">
  <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" class="font">주문수</a></li>
  <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" class="font">주문금액</a></li>
</ul>

<div class="tab-content">
	<div role="tabpanel" class="tab-pane active" id="home">
		<div class="statistics-container" data-ref="stContainer"><div><div class="stats-top">
  <div class="stats-term">
    <div class="select-period-wrap">
      <div class="select-period">
        <button class="btn-tab" type="button" data-id="daily">일간</button>
        <button class="btn-tab on" type="button" data-id="weekly">주간</button>
        <button class="btn-tab" type="button" data-id="monthly">월간</button>
      </div>
        <p class="exp">주문수는 어제 날짜까지 조회하실 수 있습니다.</p>
    </div>

    <div class="calendar-area">
      <div class="calendar">
      <input type="text">
        <span class="picker-desc">부터</span>
         <input type="text">
        <span class="picker-desc">까지</span>
      </div> <!-- calendar -->
    </div><!-- calendar-area -->
    <div>
    	<div class="graphBox">
		<canvas id="lineCanvas" width="384" height="210"></canvas>

</div>
    	
    </div>
  </div>
</div>

<br><br><br></div><!-- tab-content --></div> <!-- nav nav-tabs nav-justified -->
	  <div id="Line_Controls_Chart">
      <!-- 라인 차트 생성할 영역 -->
          <div id="lineChartArea" style="padding:0px 20px 0px 0px;"></div>
      <!-- 컨트롤바를 생성할 영역 -->
          <div id="controlsArea" style="padding:0px 20px 0px 0px;"></div>
        </div>
 
	</div>
 <script>
 
  var chartDrowFun = {
 
    chartDrow : function(){
        var chartData = '';
 
        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
        var chartDateformat     = 'yyyy년MM월dd일';
        //라인차트의 라인 수
        var chartLineCount    = 10;
        //컨트롤러 바 차트의 라인 수
        var controlLineCount    = 10;
 
 
        function drawDashboard() {
 
          var data = new google.visualization.DataTable();
          //그래프에 표시할 컬럼 추가
          data.addColumn('datetime' , '날짜');
          data.addColumn('number'   , '전체');
 
          //그래프에 표시할 데이터
          var dataRow = [];
 
          for(var i = 0; i <= 29; i++){ //랜덤 데이터 생성
            var total   = Math.floor(Math.random() * 300) + 1;
 
            dataRow = [new Date('2017', '09', i , '10'),  total];
            data.addRow(dataRow);
          }
 
 
            var chart = new google.visualization.ChartWrapper({
              chartType   : 'LineChart',
              containerId : 'lineChartArea', //라인 차트 생성할 영역
              options     : {
                              isStacked   : 'percent',
                              focusTarget : 'category',
                              height          : 500,
                              width              : '100%',
                              legend          : { position: "top", textStyle: {fontSize: 13}},
                              pointSize        : 5,
                              tooltip          : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
                              hAxis              : {format: chartDateformat, gridlines:{count:chartLineCount,units: {
                                                                  years : {format: ['yyyy년']},
                                                                  months: {format: ['MM월']},
                                                                  days  : {format: ['dd일']},
                                                                  hours : {format: ['HH시']}}
                                                                },textStyle: {fontSize:12}},
                vAxis              : {minValue: 100,viewWindow:{min:0},gridlines:{count:-1},textStyle:{fontSize:12}},
                animation        : {startup: true,duration: 1000,easing: 'in' },
                annotations    : {pattern: chartDateformat,
                                textStyle: {
                                fontSize: 15,
                                bold: true,
                                italic: true,
                                color: '#871b47',
                                auraColor: '#d799ae',
                                opacity: 0.8,
                                pattern: chartDateformat
                              }
                            }
              }
            });
 
            var control = new google.visualization.ControlWrapper({
              controlType: 'ChartRangeFilter',
              containerId: 'controlsArea',  //control bar를 생성할 영역
              options: {
                  ui:{
                        chartType: 'LineChart',
                        chartOptions: {
                        chartArea: {'width': '60%','height' : 80},
                          hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
                            gridlines:{count:controlLineCount,units: {
                                  years : {format: ['yyyy년']},
                                  months: {format: ['MM월']},
                                  days  : {format: ['dd일']},
                                  hours : {format: ['HH시']}}
                            }}
                        }
                  },
                    filterColumnIndex: 0
                }
            });
 
            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
            date_formatter.format(data, 0);
 
            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
            dashboard.bind([control], [chart]);
            dashboard.draw(data);
 
        }
          google.charts.setOnLoadCallback(drawDashboard);
 
      }
    }
 
$(document).ready(function(){
  google.charts.load('current', {'packages':['line','controls']});
  chartDrowFun.chartDrow(); //chartDrow() 실행
});
  </script>	
	
	
	
	
	
    <div role="tabpanel" class="tab-pane" id="profile">
		ㄴㅇㄴㄴㄴㄴ
	</div>	
</div>
</div>
<script>
  $(function () {
    $('#myTab a:last').tab('show')
  })
</script>
</body>
</html>