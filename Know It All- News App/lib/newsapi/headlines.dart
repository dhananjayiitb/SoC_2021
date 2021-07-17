import 'package:newsapi/newsapi.dart';
import 'package:know_it_all/Data/Titles.dart';

Future<ArticleResponse> getHeadlines(int activePage) async{
  ArticleResponse headlines;
  List<String> titles = getTitles();
  String _apiKey = '0ba2ae2ead894d8a84bbfd6099153a66';
  String _category = activePage==0 ? null : titles[activePage].toLowerCase();

  NewsApi newsApi = NewsApi(apiKey: _apiKey, debugLog: true);

  headlines = await newsApi.topHeadlines(
    language: 'en',
    country: 'in',
    category: _category,
  );

  return headlines;
}

// Future<List<Article>> getHeadlines(int activePage) async{
//
//   List<Article> headlines;
//   List<String> titles = getTitles();
//   String apikey = '0ba2ae2ead894d8a84bbfd6099153a66';
//   String category = activePage == 0 ? '' : '&category=${titles[activePage].toLowerCase()}';
//
//   http.Response response = await http.get(Uri.https('newsapi.org','/v2/top-headlines?country=in&excludeDomains=stackoverflow.com&sortBy=publishedAt&language=en$category&apiKey=$apikey'));
//   print('check1');
//   print(response.body);
//   print('check2');
//   Map jsonData = jsonDecode(response.body);
//
//   if(jsonData['status'] == "ok"){
//     jsonData['articles'].forEach((element) {
//       if (element['urlToImage'] != null && element['description'] != null) {
//         Article article = Article(
//           title: element['title'],
//           author: element['author'],
//           description: element['description'],
//           urlToImage: element['urlToImage'],
//           publishedAt: DateTime.parse(element['publishedAt']),
//           content: element['content'],
//           url: element['url'],
//           source: Source(
//             category: activePage == 0 ? 'General' : category,
//             country: 'in',
//             language: 'en',
//             name: element['source']['name'],
//             url: element['url'],
//             description: null,
//             id: element['source']['id'],
//           )
//         );
//         headlines.add(article);
//       }
//     });
//   }
//   return headlines;
// }