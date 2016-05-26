class Item {
  
  float x, y, sq;
  String text, uRL;
  boolean touching = false;
  JSONObject current, mySource;
  int decadeRange = 0;
  
  PFont f;
  
  
  public Item(JSONObject obj, int range) {
    sq = 12;
    f = createFont("Arial", 16, true);
    
    current = obj;
    decadeRange = range;
    mySource = resource();
    text = getTitle();
    uRL = getItemURL();
    
    x = 125 + random(850);
    if(decadeRange < 64) {
      y = 0 + random(85);
    }
    if (decadeRange>=64 && decadeRange < 264) {
      y = 100 + random(85);
    }
    if (decadeRange>=264 && decadeRange < 464) {
      y = 200 + random(85);
    }
    if (decadeRange>=464 && decadeRange < 664) {
      y = 300 + random(85);
    }
    if (decadeRange>=664 && decadeRange < 800) {
      y = 400 + random(85);
    }
    if (decadeRange>=800 && decadeRange <983) {
      y = 500 + random(85);
    }
  }
  
  public JSONObject resource() {
    JSONObject source = current.getJSONObject("sourceResource");
    return source;
  }
  
  public String getTitle() {
    try {
      return mySource.getString("title");
    } catch (Exception e) {
      return "No title";
    }
  }
  
  public String getItemURL() {
    try {
      return current.getString("isShownAt");
    } catch (Exception e) {
      return "No url Available";
    }
  }
  
  void isTouching(float mx, float my) {
    if (dist(mx, my, x, y) < (sq/2)) {
      touching = true;
    } else {
      touching = false;
    }
  }
  
  void mouseClicked() {
     try {
       java.awt.Desktop.getDesktop().browse(java.net.URI.create(uRL));
       uRL = ""; //prevents it from opening multiple windows!
     }
     catch (java.io.IOException e) {
     }
  }
  
  void display() {
    if(y < 100) {
      stroke(255,0,0);
      ellipse(x, y, sq, sq);
    }
    if(y > 100 && y < 200) {
      stroke(255,145,0);
      ellipse(x, y, sq, sq);
    }
    if(y > 200 && y < 300) {
      stroke(255,255,0);
      ellipse(x, y, sq, sq);
    }
    if(y > 300 && y < 400) {
      stroke(0,255,0);
      ellipse(x, y, sq, sq);
    }
    if(y > 400 && y < 500) {
      stroke(0,0,255);
      ellipse(x, y, sq, sq);
    }
    if(y > 500 && y < 600) {
      stroke(183,0,255);
      ellipse(x, y, sq, sq);
    }
    
    if(touching) {
      stroke(255,255,255);
      fill(255,255,255);
      ellipse(x, y, sq, sq);
      
      fill(0);
      textAlign(LEFT);
      textFont(f);
      text(this.text, 10, 620);
      if(mousePressed) {
        mouseClicked();
      }
    }
  }
}
