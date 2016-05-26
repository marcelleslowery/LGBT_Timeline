public class SearchQuery {
  
  private String myKey = "6098141c68d72974003ae6d89ed16d65";
  private String baseURL = "http://api.dp.la/v2/items?q=";
  
  private String myQuery;
  private int myLimit;
  
  public SearchQuery(String query, int limit)  {
    myQuery = query;
    myLimit = limit;
  }
    
  public JSONArray searchSixties() {
    
    String fullURL = baseURL + myQuery +"&sourceResource.date.after=1960-01-01" + "&sourceResource.date.before=1970-01-01" + "&page_size=" + myLimit + "&api_key=" + myKey;
    
    JSONObject dplaObj = loadJSONObject(fullURL);
    JSONArray allResults = dplaObj.getJSONArray("docs");
    
    return allResults;
  }
  
  public JSONArray searchSeventies() {
    
    String fullURL = baseURL + myQuery +"&sourceResource.date.after=1970-01-01" + "&sourceResource.date.before=1980-01-01" + "&page_size=" + "&page_size=" + myLimit + "&api_key=" + myKey;
    
    JSONObject dplaObj = loadJSONObject(fullURL);
    JSONArray allResults = dplaObj.getJSONArray("docs");
    
    return allResults;
  }
  
  public JSONArray searchEighties() {
    
    String fullURL = baseURL + myQuery +"&sourceResource.date.after=1980-01-01" + "&sourceResource.date.before=1990-01-01" + "&page_size=" + "&page_size=" + myLimit + "&api_key=" + myKey;
    
    JSONObject dplaObj = loadJSONObject(fullURL);
    JSONArray allResults = dplaObj.getJSONArray("docs");
    
    return allResults;
  }
  
  public JSONArray searchNineties() {
    
    String fullURL = baseURL + myQuery +"&sourceResource.date.after=1990-01-01" + "&sourceResource.date.before=2000-01-01" + "&page_size=" + "&page_size=" + myLimit + "&api_key=" + myKey;
    
    JSONObject dplaObj = loadJSONObject(fullURL);
    JSONArray allResults = dplaObj.getJSONArray("docs");
    
    return allResults;
  }
  
  public JSONArray searchTwoThousands() {
    
    String fullURL = baseURL + myQuery +"&sourceResource.date.after=2000-01-01" + "&sourceResource.date.before=2010-01-01" + "&page_size=" + "&page_size=" + myLimit + "&api_key=" + myKey;
    
    JSONObject dplaObj = loadJSONObject(fullURL);
    JSONArray allResults = dplaObj.getJSONArray("docs");
    
    return allResults;
  }
  
  public JSONArray searchTwoThousandTens() {
    
    String fullURL = baseURL + myQuery +"&sourceResource.date.after=2010-01-01" + "&sourceResource.date.before=2016-01-01" + "&page_size=" + "&page_size=" + myLimit + "&api_key=" + myKey;
    
    JSONObject dplaObj = loadJSONObject(fullURL);
    JSONArray allResults = dplaObj.getJSONArray("docs");
    
    return allResults;
  }
}
