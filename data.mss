#unconnected_major{
  marker-opacity:0.1;
  marker-allow-overlap:true;
  marker-comp-op:multiply;
  marker-line-width:0;
  
  // Locator circles
  [zoom>11]::mark{
      marker-width:50;
      marker-line-width:1;
    marker-line-color:red;
      marker-fill:transparent;
      marker-allow-overlap:true;
    marker-opacity:0.2;
    dot/marker-width:2;
    dot/marker-fill:black;
    dot/marker-line-width:0;
    dot/marker-allow-overlap:true;
    }
  
  /*
  Error distance: Smaller distance is more likely to be an error
  */
  [distance=1]{
  marker-opacity:1;
    }
  [distance=2]{
  marker-opacity:0.8;
    }
  [distance>2]{
  marker-opacity:0.6;
    }
  
  /*
  Highway key: Smaller number corresponds to a more important road
  5=primary
  9=residential
  11=unclassified
  12=living street
  */
  
  /*
  Control marker width based on type of highway
  */
  marker-width:50 - 4 * [highwaykey];
  [zoom>8]{
    marker-width:70 - 5 * [highwaykey];
    }
  [highwaykey=9],[highwaykey=12]{
    //Hack for residential roads
    marker-width:5;
    }
  /*
  Color markers based on highway type
  */
  [highwaykey>0]{
    marker-fill:#6f00ff;
    }
  [highwaykey>3]{
    marker-fill:#f44931;
    }
  [highwaykey>6]{
    marker-fill:#ff8c00;
    }
  [highwaykey>8]{
    marker-fill:#fff800;
    }
  }