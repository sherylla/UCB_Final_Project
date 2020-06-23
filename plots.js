function init() {
    var selector = d3.select("#selDataset");
  
    d3.csv("Data/Wine_Type.csv").then((data) => {
      var wineNames = data;
      wineNames.forEach((wine) => {
        selector
          .append("option")
          .text(wine.wine_name)
          .property("value", wine.wine_name);
      });

      buildMetadata(wineNames[0].wine_name);
      buildCharts(wineNames[0].wine_name);
  })}

  function optionChanged(newWine) {
    buildMetadata(newWine);
    buildCharts(newWine);
  }

   function buildMetadata(wine) {
     if (wine === "Red") {
       file = "Data/winequality-red.csv";
     }
     else {
       file = "Data/winequality-white.csv";
     }
    d3.csv(file).then((data) => {
      var count = data.length;
      var PANEL = d3.select("#sample-metadata");
  
      PANEL.html("");
      PANEL.append("h6").text("Number of records : " + count);
    });
   }

    function buildCharts(wine) {
      if (wine === "Red") {
        file = "Data/winequality-red.csv"
      }
      else {
        file = "Data/winequality-white.csv"
      }
        d3.csv(file).then((data) => {

          var nested_data = d3.nest()
.key(function(d) { return d.quality; }).sortKeys(d3.ascending)
.rollup(function(quality) {
    return quality.length; 
})
.entries(data);

var qlty = [];
var cnt = [];

for (var i=0;i<nested_data.length;i++) {
  qlty.push(nested_data[i].key);
  cnt.push(nested_data[i].value);
}


          var barchartdata = [{
            type: 'bar',
            x: qlty,
            y: cnt,
            text: qlty,
            orientation: 'v'
          }];

          var barchartlayout = {
            title: 'Record count based on wine quality',
          };

          Plotly.newPlot('bar', barchartdata, barchartlayout);

    });
} 

  init();