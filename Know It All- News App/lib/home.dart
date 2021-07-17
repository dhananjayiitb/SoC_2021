import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:know_it_all/Cards/title_card.dart';
import 'package:know_it_all/Data/Titles.dart';
import 'package:know_it_all/newsapi/headlines.dart';
import 'package:newsapi/newsapi.dart';
import 'Article.dart';
import 'Cards/blog_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> titles;
  Color theme = Colors.indigo[800];
  int activePage;
  ArticleResponse headlines;
  bool loading;

  Future<ArticleResponse> getData() async {
    return getHeadlines(activePage);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loading = true;
    titles = getTitles();
    activePage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: theme,
          title: Text('Know it all!', style: TextStyle(fontSize: 30)),
          actions: [
            ElevatedButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: Icon(Icons.exit_to_app_rounded),
              style: ElevatedButton.styleFrom(primary: theme),
            )
          ],
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot topHeadlines) {
            if (topHeadlines.data == null) {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: theme,
                      height: 40,
                      child: Container(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: titles.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  activePage = index;
                                  print(index);
                                  topHeadlines = AsyncSnapshot.nothing();
                                });
                              },
                              child: TitleCard(titles[index],
                                  index == activePage ? true : false),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: topHeadlines.data.articles.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: BlogCard(topHeadlines.data.articles[index]),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ArticleView(
                                    postUrl: topHeadlines.data.articles[index].url,
                                  )
                              ));
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
