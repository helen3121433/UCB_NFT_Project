const pandas_url = "https://raw.githubusercontent.com/helen3121433/UCB_NFT_Project/xiaochen_z/json_js_plotly/top10_pandas.json";
var col_name = "Almost_Famous_Pandas";

function buildCharts(collection, url) {
    d3.json(url).then(function (data) {
      const nft_title = data.map((obj) => {
        return obj.title
      });
  
      const nft_price = data.map((obj) => {
        return obj.price
      });
  
  
      const nft_att = data.map((obj) => {      
        return "Title: " + obj.title + "<br>" + obj.c_att
        // return "Title: " + obj.title + "<br>" + "Outfit: " + obj.Outfit + "<br>" + "Head: " + obj.Head + "<br>" + 
        // "Eyes: " + obj.Eyes + "<br>" + 
        // "Skin: " + obj.Skin + "<br>" + 
        // "Mouth: " + obj.Mouth + "<br>" + 
        // "Body: " + obj.Body + "<br>" + 
        // "Background: " + obj.Background + "<br>" +
        // "Face: " + obj.Face + "<br>" 
      });
  
      var barData = [{
        x: nft_price.reverse(),
        y: nft_title,
        type: "bar",
        orientation: "h",
        marker: {
          color: '#A7CBF1'
        },
        text: nft_att
      }];
      // 9. Create the layout for the bar chart. 
      var barLayout = {
        title: {
          text: "Top 10 NFT",
          font: { color: '#8fd420 ' },
          fontSize: 30
        },
        xaxis: {
          title: {
            text: 'Solana (1 Sol = 38.90 USD on 6/4/2022)',
            font: { color: '#8fd420 ' }
          },
        },
        yaxis: {
            tickcolor: '#8fd420', 
            automargin: true,    
            tickfont: {
              color: '#8fd420'
            } 
        },
        plot_bgcolor: 'rgba(10,10,10,10)',
        paper_bgcolor: 'rgba(10,10,10,10)'
      };
      // 10. Use Plotly to plot the data with the layout. 
      Plotly.newPlot("bar", barData, barLayout);
    })
  };
  
  buildCharts(col_name, pandas_url)

  // Promise Pending
  const dataPromise = d3.json(pandas_url);
  console.log("Data Promise: ", dataPromise);