var data = {
    labels: ["January", "February", "March", "April", "May", "June", "July"],
    datasets: [{
        label: "My First dataset",
        fill:false ,
        backgroundColor: 'rgb(255, 99, 132)',
        borderColor: 'rgb(255, 99, 132)',
        data: [0, 10, 5, 2, 20, 30, 45],
    }]
} ; 
const lineChart =document.getElementById("line-chart") ; 
var CHART1 = new Chart(lineChart , {
    type: 'line',

    // The data for our dataset
    data: data,

    // Configuration options go here
    options: {}
});
const pieChart =document.getElementById("pie-chart") ; 
var CHART2 = new Chart(pieChart , {
    type: 'pie',

    // The data for our dataset
    data: data,

    // Configuration options go here
    options: {}
});
const barChart =document.getElementById("bar-chart") ; 
var CHART3 = new Chart(barChart , {
    type: 'bar',

    // The data for our dataset
    data: data,

    // Configuration options go here
    options: {}
});