import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapi/newsapi.dart';

class BlogCard extends StatelessWidget {

  final Article article;
  BlogCard(this.article);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox( height: 15,),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topLeft: Radius.circular(15)),
                    child: Image.network(
                    article.urlToImage,
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height,
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text(
                        article.author == null ? "Author: Not Available" : "Author: ${article.author}",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                        maxLines: 1,
                      ),
                      SizedBox(height: 15,),
                      Text(
                        article.title,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5,),
              ],
            )
          )
        ],
      ),
    );
  }
}