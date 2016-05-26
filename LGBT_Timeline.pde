Item[] items;

JSONArray json;
PFont f;

void setup() {
  size(1000, 685);
  f = createFont("Arial", 16, true);
  load();
}

void draw() {
  flagBg();
  for(int i = 0; i < items.length; i++) {
    if(items[i] != null) {
      items[i].display();
      items[i].isTouching(mouseX, mouseY);
    } 
  }
}

void flagBg() {
  // pride flag background
  stroke(255,0,0); //red
  fill(255,0,0);
  rect(0,0,1000,100);
  textFont(f, 30);
  fill(0);
  text("60's",10,60);
  
  stroke(255,145,0); //orange
  fill(255,145,0);
  rect(0,100,1000,100);
  textFont(f, 30);
  fill(0);
  text("70's",10,160);
  
  stroke(255,255,0); //yellow
  fill(255,255,0);
  rect(0,200,1000,100);
  textFont(f, 30);
  fill(0);
  text("80's",10,260);
  
  stroke(0,255,0); //green
  fill(0,255,0);
  rect(0,300,1000,100);
  textFont(f, 30);
  fill(0);
  text("90's",10,360);
  
  stroke(0,0,255); //blue
  fill(0,0,255);
  rect(0,400,1000,100);
  textFont(f, 30);
  fill(0);
  text("2000's",10,460);
  
  stroke(183,0,255); //purple
  fill(183,0,255);
  rect(0,500,1000,100);
  textFont(f, 30);
  fill(0);
  text("2010's",10,560);
  
  stroke(255,255,255); //white
  fill(255,255,255);
  rect(0,600,1000,100);
  textFont(f, 30);
  fill(0);
  text("Hover to see title! Click to explore LGBT history!", 10, 675);
}

void load() {
  
  SearchQuery newSearch = new SearchQuery("gay+AND+rights", 200);
  JSONArray results_Sixties = newSearch.searchSixties(); //64
  JSONArray results_Seventies = newSearch.searchSeventies(); //200
  JSONArray results_Eighties = newSearch.searchEighties(); //200
  JSONArray results_Nineties = newSearch.searchNineties(); //200
  JSONArray results_TwoThousands = newSearch.searchTwoThousands(); //136
  JSONArray results_TwoThousandTens = newSearch.searchTwoThousandTens(); //183
  
  items = new Item[results_Sixties.size() + results_Seventies.size()
  + results_Eighties.size() + results_Nineties.size() + results_TwoThousands.size()
  + results_TwoThousandTens.size() ];
  
  for(int i = 0; i < results_Sixties.size(); i++) {
    JSONObject obj = results_Sixties.getJSONObject(i);
    Item myItem = new Item(obj, i);
    items[i] = myItem; 
  }
  for(int i = 0; i < results_Seventies.size(); i++) {
    JSONObject obj = results_Seventies.getJSONObject(i);
    Item myItem = new Item(obj, i+64);
    items[i+64] = myItem; 
  }
  for(int i = 0; i < results_Eighties.size(); i++) {
    JSONObject obj = results_Eighties.getJSONObject(i);
    Item myItem = new Item(obj, i+264);
    items[i+264] = myItem; 
  }
  for(int i = 0; i < results_Nineties.size(); i++) {
    JSONObject obj = results_Nineties.getJSONObject(i);
    Item myItem = new Item(obj, i+464);
    items[i+464] = myItem; 
  }
  for(int i = 0; i < results_TwoThousands.size(); i++) {
    JSONObject obj = results_TwoThousands.getJSONObject(i);
    Item myItem = new Item(obj, i+664);
    items[i+664] = myItem; 
  }
  for(int i = 0; i < results_TwoThousandTens.size(); i++) {
    JSONObject obj = results_TwoThousandTens.getJSONObject(i);
    Item myItem = new Item(obj, i+800);
    items[i+800] = myItem; 
  }
}
