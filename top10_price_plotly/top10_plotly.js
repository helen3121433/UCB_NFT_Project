
const nft_title = [];
const nft_price = [];
const nft_version = [];
const nft_att = [];
const nft_url = [];
const pandas_url = "https://raw.githubusercontent.com/helen3121433/UCB_NFT_Project/xiaochen_z/json_js_plotly/top10_pandas.json";
const degenerate_url = "https://raw.githubusercontent.com/helen3121433/UCB_NFT_Project/xiaochen_z/json_js_plotly/top10_degenerate.json";
const geckos_url = "https://raw.githubusercontent.com/helen3121433/UCB_NFT_Project/xiaochen_z/json_js_plotly/top10_geckos.json";
const guildsaga_url = "https://raw.githubusercontent.com/helen3121433/UCB_NFT_Project/xiaochen_z/json_js_plotly/top10_guildsaga.json";
const magicticket_url = "https://raw.githubusercontent.com/helen3121433/UCB_NFT_Project/xiaochen_z/json_js_plotly/top10_magicticket.json";
const magnum_url = "https://raw.githubusercontent.com/helen3121433/UCB_NFT_Project/xiaochen_z/json_js_plotly/top10_magnum.json";
const monkelabs_url = "https://raw.githubusercontent.com/helen3121433/UCB_NFT_Project/xiaochen_z/json_js_plotly/top10_monkelabs.json";

function init(){
  var selector = d3.select("#selDataset");
  var colname = ["Almost_Famous_Pandas",
   "Magicticket", 
   "Guild_saga_heroes", 
   "Monkelabs_dao", 
   "Galactic_geckos",
   "magnum_ai",
   "degenerate_ape_academy"];

  colname.forEach((collection)=>{
    selector
      .append("option")
      .text(collection)
      .property("value" , collection);

  });

  var firstcol = colname[0];
    buildCharts(firstcol, pandas_url);
}

init();

// console.log(nft_title);
// console.log(nft_price);
function optionChanged(newCollection){
  if (newCollection == "Almost_Famous_Pandas"){
    buildCharts(newCollection, pandas_url);
    const dataPromise = d3.json(pandas_url);
    console.log("Data Promise: ", dataPromise);
  }
  else if (newCollection == "Magicticket"){
    buildCharts(newCollection, magicticket_url);
    const dataPromise = d3.json(magicticket_url);
    console.log("Data Promise: ", dataPromise);
  }
  else if (newCollection == "Guild_saga_heroes"){
    buildCharts(newCollection, guildsaga_url);
    const dataPromise = d3.json(guildsaga_url);
    console.log("Data Promise: ", dataPromise);
  }
  else if (newCollection == "Monkelabs_dao"){
    buildCharts(newCollection, monkelabs_url);
    const dataPromise = d3.json(monkelabs_url);
    console.log("Data Promise: ", dataPromise);
  }
  else if (newCollection == "Galactic_geckos"){
    buildCharts(newCollection, geckos_url);
    const dataPromise = d3.json(geckos_url);
    console.log("Data Promise: ", dataPromise);    
  }
  else if (newCollection == "magnum_ai"){
    buildCharts(newCollection, magnum_url);
    const dataPromise = d3.json(magnum_url);
    console.log("Data Promise: ", dataPromise);
  }
  else if (newCollection == "degenerate_ape_academy"){
    buildCharts(newCollection, degenerate_url);
    const dataPromise = d3.json(degenerate_url);
    console.log("Data Promise: ", dataPromise);   
  }
}

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
        font: { color: '#4A235A ' }
      },
      xaxis: {
        title: {
          text: 'Solana (1 Sol = 38.90 USD on 6/4/2022)',
          font: { color: '#4A235A ' }
        },
      },
      plot_bgcolor: 'rgba(0,0,0,0)',
      paper_bgcolor: 'rgba(0,0,0,0)'
    };
    // 10. Use Plotly to plot the data with the layout. 
    Plotly.newPlot("bar", barData, barLayout);
  })
};

// Promise Pending
const dataPromise = d3.json(pandas_url);
console.log("Data Promise: ", dataPromise);

