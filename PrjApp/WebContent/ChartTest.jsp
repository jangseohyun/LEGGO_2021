<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String ip = request.getRemoteAddr();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChartTest</title>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script type="text/javascript">

	$(function()
	{
		var mychart = $("#bar-chart");
		var myBarChart = new Chart(mychart, {
		    type: 'bar',
		    data: {
		        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
		        datasets: [{
		            label: '# of Votes',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            y: {
		                beginAtZero: true
		            }
		        }
		    }
		});
	});
	
</script>
</head>
<body>

<div style="width: 400px; height: 400px;">
<canvas id="bar-chart"></canvas>
</div>

<div><%=ip %></div>
</body>
</html>