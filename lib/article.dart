class Article {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  Article.from(Map<String, dynamic> article) {
    this.author = article['author'];
    this.title = article['title'];
    this.description = article['description'];
    this.url = article['url'];
    this.urlToImage = article['urlToImage'];
    this.publishedAt = article['publishedAt'];
    this.content = article['content'];
  }
}
