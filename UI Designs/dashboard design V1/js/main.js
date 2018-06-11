var ctx = document.getElementById('myChart').getContext('2d');
var ctxBar = document.getElementById('myBarChart').getContext('2d');
var ctxPie = document.getElementById('myPieChart').getContext('2d');


var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [{
            label: "My Line Chart",
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: [0, 10, 5, 2, 20, 30, 45],
        }]
    },

    // Configuration options go here
    options: {}
});2


let barChart = new Chart(ctxBar, {
    type:'bar',
    data:{
        labels : ['jan','feb','mar','apr'],
        datasets: [
            {
                label: "My Bar Chart",
                backgroundColor: 'rgb(255, 99, 132)',
                 borderColor: 'rgb(255, 99, 132)',
                data: [10,20,55,33]
            }
        ]
    }
});

let pieChart = new Chart(ctxPie, {
    type:'pie',
    data:{
        labels : ['jan','feb','mar'],
        datasets: [
            {
                label: "My Pie Points",
                backgroundColor: ['red','green','yellow'],
                 borderColor: 'rgb(255, 99, 132)',
                data: [10,55,33]
            }
        ]
    }
});