package domain;

public class HelloWorld {

    public static void main(String[] args) {
        com.browxy.gfx.browxy.tools.BrowxyTools.invokeMethod(args);
    }

public String findMany(String encodedJson) {
      return com.browxy.gfx.browxy.db.BrowxySql.findManyAsJson(encodedJson);
  }

public String findOne(String encodedJson) {
      return com.browxy.gfx.browxy.db.BrowxySql.findOneAsJson(encodedJson);
}

public String createOrUpdate(String encodedJson) {
      return com.browxy.gfx.browxy.db.BrowxySql.createOrUpdateAsJson(encodedJson);
}

public String remove(String encodedJson) {
      return com.browxy.gfx.browxy.db.BrowxySql.deleteAsJson(encodedJson);
}
}
