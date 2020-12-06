import 'package:flutter/material.dart';
import './article.dart';

class NewsListPage extends StatelessWidget {
  static const routeName = '/article-list';

  Widget _buildArticleItem(BuildContext ctx, Article article) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: Image.network(
        article.url,
        width: 100,
      ),
      title: Text(article.title),
      subtitle: Text(article.author),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Article> articles = parseArticles(snapshot.data);
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (ctx, index) {
              return _buildArticleItem(ctx, articles[index]);
            },
          );
        },
      ),
    );
  }
}
