$(document).ready(function () {
  var chartDom = document.getElementById("main");
  var myChart = echarts.init(chartDom);

  var rating = document.currentScript.getAttribute("rating");

  var option;
  option = {
    color: ["#FF7878"],
    title: {
      text: "Ratings",
    },
    tooltip: {
      trigger: "axis",
      axisPointer: {
        type: "shadow",
      },
    },
    legend: {},
    grid: {
      left: "0%",
      right: "16%",
      bottom: "3%",
      containLabel: true,
    },
    xAxis: {
      type: "value",
      boundaryGap: [0, 0.01],
    },
    yAxis: {
      type: "category",
      data: [1, 2, 3, 4, 5],
    },
    series: [
      {
        name: "2011",
        type: "bar",
        data: rating,
      },
    ],
  };
  option && myChart.setOption(option);
});
