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
/* 
          var nested_data1 = d3.nest()
          .key(function(d) { return d.quality; }).sortKeys(d3.ascending)
          .entries(data);

          console.log(nested_data1);

          var smp_values = metadata.filter(sampleObj => sampleObj.id == sample).map(sampleval => sampleval.sample_values);
          smp_values = smp_values[0];
          var oids = metadata.filter(sampleObj => sampleObj.id == sample).map(otuid => otuid.otu_ids);
          oids = oids[0];
          var olabels = metadata.filter(sampleObj => sampleObj.id == sample).map(otulabel => otulabel.otu_labels);
          olabels = olabels[0];
          var trace1 = {
            x: oids,
            y: smp_values,
            mode: 'markers',
            text: otu_labels,
            marker: {
              color: oids,
              size: smp_values
            }
          };
          
          var bubblechartdata = [trace1];

          var bubblechartlayout = {
            title: 'Bubble Chart for Bacterial Species (OTUs)',
            xaxis: {title: 'OTU ID'}
          };
          
          Plotly.newPlot('bubble', bubblechartdata, bubblechartlayout);
*/
    });
} 

  init();